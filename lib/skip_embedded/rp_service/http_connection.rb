require 'skip_embedded/initial_settings'
require 'skip_embedded/web_service_util'
require 'json'
require 'net/http'
require 'net/https'

module SkipEmbedded
  module RpService
    class HttpConnection
      class Error < RuntimeError
        attr_reader :response
        def initialize(message, response)
          super(message)
          @response = response
        end
      end

      def initialize(ca_file = nil)
        @ca_file = ca_file
      end

      def post_via_webservice_util(url, data, parse_json = true)
        url = url.is_a?(URI) ? url : URI(url)
        req = Net::HTTP::Post.new(url.path)
        req["X-SECRET-KEY"] = ::SkipEmbedded::InitialSettings['skip_collaboration']['secret_key']
        req["Content-Type"] = "application/json"
        req.body = data.to_json
        request_http(url, req, parse_json)
      end

      def get_resource_via_oauth(url, token, headers = {})
        request_api_via_oauth(:get, url, nil, token, headers, false)
      end
      def post_via_oauth(url, data, token)
        request_api_via_oauth(:post, url, data, token)
      end
      def put_via_oauth(url, data, token)
        request_api_via_oauth(:put, url, data, token)
      end
      def delete_via_oauth(url, token)
        request_api_via_oauth(:delete, url, nil, token)
      end

      private
      def request_api_via_oauth(method, url, data, token, headers = {}, parse_json=true)
        url = url.is_a?(URI) ? url : URI(url)
        req = (case method
               when :post then Net::HTTP::Post
               when :put  then Net::HTTP::Put
               when :delete  then Net::HTTP::Delete
               else Net::HTTP::Get
               end).new(url.path)
        req["Content-Type"] = "application/json"
        headers.each{|k,v| req[k] = v }

        req.body = data.to_json if data && !req.is_a?(Net::HTTP::Get)
        token.sign!(req)

        request_http(url, req, parse_json)
      end

      def request_http(url, req, parse_json)
        setup_https(url).start do |conn|
          res = conn.request(req)
          raise Error.new("request failed", res) if !res.is_a?(Net::HTTPOK)
          parse_json ? JSON.parse(res.body) : res.body
        end
      end

      def setup_https(uri)
        returning Net::HTTP.new(uri.host, uri.port) do |http|
          if uri.scheme == "https"
            if @ca_file
              http.ca_file = @ca_file
              http.verify_mode = OpenSSL::SSL::VERIFY_PEER
              http.verify_depth = 5
            else
              http.verify_mode = OpenSSL::SSL::VERIFY_NONE
            end
          end
        end
      end
    end
  end
end

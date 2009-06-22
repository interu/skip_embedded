require 'openid'
require 'skip_embedded/initial_settings'

module SkipEmbedded
  class OpFixation
    cattr_accessor :skip_url
    @@skip_url = InitialSettings['skip_collaboration']['skip_url']

    def self.sso_enabled?
      !!@@skip_url
    end

    def self.accept?(claimed_url)
      new(@@skip_url).accept?(claimed_url)
    end

    def self.sso_openid_logout_url
      URI.join(skip_url, "logout").to_s if skip_url
    end

    def initialize(*allowed)
      @available_servers = allowed
    end

    def accept?(claimed_url)
      begin
        _, services = OpenID.discover claimed_url
        services.any?{|s| @available_servers.include?(s.server_url) }
      rescue OpenID::DiscoveryFailure => why
        ::OpenID::Util.logger.error "FixedOp discovery failed: #{why.message}"
        false
      end
    end
  end
end


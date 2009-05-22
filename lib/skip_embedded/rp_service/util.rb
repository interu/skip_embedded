module SkipEmbedded
  module RpService
    module Util
      def user_data(identity_url, name, display_name, admin = false)
        {:identity_url => identity_url, :name => name,
          :display_name => display_name, :admin => admin}.reject{|k,v| v.nil? }
      end

      def group_data(gid, name, display_name, members)
        {:gid => gid, :name => name, :display_name => display_name,
          :members => members}.reject{|k,v| v.nil? }
      end
      module_function :user_data, :group_data
    end
  end
end


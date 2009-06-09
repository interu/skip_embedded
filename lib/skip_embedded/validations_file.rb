# SKIP(Social Knowledge & Innovation Platform)
# Copyright (C) 2008-2009 TIS Inc.
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with this program.  If not, see <http://www.gnu.org/licenses/>.

require 'skip_embedded/types/content_type'

module SkipEmbedded
  module ValidationsFile
    include SkipEmbedded::Types::ContentType
    def valid_presence_of_file(file)
      unless file.is_a?(ActionController::UploadedFile)
        errors.add_to_base "ファイルが指定されていません。"
        return false
      end
      true
    end

    def valid_extension_of_file(file)
      unless verify_extension? file.original_filename, file.content_type
        errors.add_to_base "この形式のファイルは、アップロードできません。"
      end
    end

    def valid_content_type_of_file(file)
      extension = file.original_filename.split('.').last
      if(content_types = CONTENT_TYPE_IMAGES[extension.to_sym])
        unless content_types.split(',').include?(file.content_type)
          errors.add_to_base "この形式のファイルは、アップロードできません。"
          return false;
        end
      end
      true
    end

    private
    def verify_extension? file_name, content_type
      !disallow_extensions.any?{|extension| extension == file_name.split('.').last } &&
        !disallow_content_types.any?{|content| content == content_type }
    end

    def disallow_content_types
      ['text/html', 'application/x-javascript', 'image/bmp']
    end

    def disallow_extensions
      ['html', 'htm', 'js', 'bmp']
    end
  end
end


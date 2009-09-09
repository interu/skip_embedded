module SkipEmbedded
  module Helpers
    module Ckeditor
      def ckeditor target, opt = {}
        default_opt = {
          'customConfig' => url_for("/javascripts/skip_embedded/ckeditor_config.js"),
          'toolbar' => 'Entry'
        }.merge(opt)
        content_for :javascript_includes do
          javascript_include_tag "skip_embedded/ckeditor/ckeditor.js"
        end
        unless target =~ /\A\./
          content_for :javascript_initializers do
            "CKEDITOR.replace('#{target}', #{default_opt.to_json});"
          end
        else
          content_for :javascript_initializers do
            <<-EOF
jQuery('#{target}').each(function(){
    CKEDITOR.replace(this.id, #{default_opt.to_json});
});
EOF
          end
        end
      end
    end
  end
end

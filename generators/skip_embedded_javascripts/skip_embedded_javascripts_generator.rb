class SkipEmbeddedJavascriptsGenerator < Rails::Generator::Base
  def manifest
    record do |m|
      assets = %w[
        public/blank.html
        public/javascripts/skip_embedded/dropdown_navigation.js
        public/javascripts/skip_embedded/labeled_text_field.js
        public/javascripts/skip_embedded/flash_message.js
        public/javascripts/skip_embedded/skip_fckeditor_config.js
      ]

      assets.map{|asset| File.dirname(asset) }.uniq.each{|asset| m.directory(asset) }
      assets.each{|asset| m.file asset, asset }
    end
  end
end

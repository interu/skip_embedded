class SkipEmbeddedStylesheetsGenerator < Rails::Generator::Base
  def manifest
    record do |m|
      assets = %w[
        public/stylesheets/sass/skip_embedded/skip_base.sass
        public/stylesheets/sass/skip_embedded/skip_embedded.sass
        public/stylesheets/sass/skip_embedded/skip_footer.sass
        public/stylesheets/sass/skip_embedded/skip_header.sass
        public/stylesheets/sass/skip_embedded/editor_area.sass
        public/stylesheets/sass/skip_embedded/editor_area_mixin.sass
        public/stylesheets/sass/skip_embedded/ckeditor_area.sass
        public/stylesheets/skip_embedded/sprites.css
        public/stylesheets/skip_embedded/sprites.png
      ]

      assets.map{|asset| File.dirname(asset) }.uniq.each{|asset| m.directory(asset) }
      assets.each{|asset| m.file asset, asset }
    end
  end
end

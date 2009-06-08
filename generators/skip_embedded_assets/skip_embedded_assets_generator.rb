class SkipEmbeddedAssetsGenerator < Rails::Generator::Base
  def manifest
    record do |m|
      m.dependency('skip_embedded_javascripts', [])
      m.dependency('skip_embedded_stylesheets', [])
    end
  end
end

# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{skip_embedded}
  s.version = "0.9.14"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["MAEDA Naoki", "MOROHASHI Kyosuke", "MATSUMURA Akihiro"]
  s.date = %q{2009-07-01}
  s.default_executable = %q{skip-gen}
  s.description = %q{Utilities to collabolate SKIP, opensource buisiness SNS.}
  s.email = %q{info@openskip.org}
  s.executables = ["skip-gen"]
  s.extra_rdoc_files = ["README.rdoc", "ChangeLog"]
  s.files = ["README.rdoc", "ChangeLog", "Rakefile", "bin/skip-gen", "lib/skip_embedded", "lib/skip_embedded/fulltext_search_cache", "lib/skip_embedded/fulltext_search_cache/builder_base.rb", "lib/skip_embedded/fulltext_search_cache/mediator.rb", "lib/skip_embedded/fulltext_search_cache/partial_loader.rb", "lib/skip_embedded/fulltext_search_cache.rb", "lib/skip_embedded/helpers", "lib/skip_embedded/helpers/sprite.rb", "lib/skip_embedded/helpers/ui.rb", "lib/skip_embedded/helpers.rb", "lib/skip_embedded/initial_settings.rb", "lib/skip_embedded/op_fixation.rb", "lib/skip_embedded/open_id_sso", "lib/skip_embedded/open_id_sso/authentication.rb", "lib/skip_embedded/open_id_sso/session_management.rb", "lib/skip_embedded/rp_service", "lib/skip_embedded/rp_service/client.rb", "lib/skip_embedded/rp_service/http_connection.rb", "lib/skip_embedded/rp_service/oauth_proxy.rb", "lib/skip_embedded/rp_service/util.rb", "lib/skip_embedded/types", "lib/skip_embedded/types/content_type.rb", "lib/skip_embedded/validations_file.rb", "lib/skip_embedded/web_service_util", "lib/skip_embedded/web_service_util/client.rb", "lib/skip_embedded/web_service_util/server.rb", "lib/skip_embedded/web_service_util.rb", "lib/skip_embedded.rb", "generators/skip_embedded", "generators/skip_embedded/skip_embedded_generator.rb", "generators/skip_embedded_assets", "generators/skip_embedded_assets/skip_embedded_assets_generator.rb", "generators/skip_embedded_init", "generators/skip_embedded_init/skip_embedded_init_generator.rb", "generators/skip_embedded_init/templates", "generators/skip_embedded_init/templates/app", "generators/skip_embedded_init/templates/app/views", "generators/skip_embedded_init/templates/app/views/layouts", "generators/skip_embedded_init/templates/app/views/layouts/skip_embedded.html.erb", "generators/skip_embedded_init/templates/app/views/shared", "generators/skip_embedded_init/templates/app/views/shared/_common_header.html.erb", "generators/skip_embedded_init/templates/app/views/shared/_flash_message.html.erb", "generators/skip_embedded_init/templates/app/views/shared/_footer.html.erb", "generators/skip_embedded_init/templates/app/views/shared/_header.html.erb", "generators/skip_embedded_init/templates/app/views/shared/_skip_full_text_search_form.html.erb", "generators/skip_embedded_init/templates/config", "generators/skip_embedded_init/templates/config/initial_settings.yml", "generators/skip_embedded_init/templates/lib", "generators/skip_embedded_init/templates/lib/tasks", "generators/skip_embedded_init/templates/lib/tasks/skip_embedded.rake", "generators/skip_embedded_init/templates/public", "generators/skip_embedded_init/templates/public/images", "generators/skip_embedded_init/templates/public/images/footer_logo.png", "generators/skip_embedded_javascripts", "generators/skip_embedded_javascripts/skip_embedded_javascripts_generator.rb", "generators/skip_embedded_javascripts/templates", "generators/skip_embedded_javascripts/templates/public", "generators/skip_embedded_javascripts/templates/public/blank.html", "generators/skip_embedded_javascripts/templates/public/javascripts", "generators/skip_embedded_javascripts/templates/public/javascripts/skip_embedded", "generators/skip_embedded_javascripts/templates/public/javascripts/skip_embedded/dropdown_navigation.js", "generators/skip_embedded_javascripts/templates/public/javascripts/skip_embedded/flash_message.js", "generators/skip_embedded_javascripts/templates/public/javascripts/skip_embedded/iframe_upload.js", "generators/skip_embedded_javascripts/templates/public/javascripts/skip_embedded/labeled_text_field.js", "generators/skip_embedded_javascripts/templates/public/javascripts/skip_embedded/skip_fckeditor_config.js", "generators/skip_embedded_stylesheets", "generators/skip_embedded_stylesheets/skip_embedded_stylesheets_generator.rb", "generators/skip_embedded_stylesheets/templates", "generators/skip_embedded_stylesheets/templates/public", "generators/skip_embedded_stylesheets/templates/public/stylesheets", "generators/skip_embedded_stylesheets/templates/public/stylesheets/sass", "generators/skip_embedded_stylesheets/templates/public/stylesheets/sass/skip_embedded", "generators/skip_embedded_stylesheets/templates/public/stylesheets/sass/skip_embedded/editor_area.sass", "generators/skip_embedded_stylesheets/templates/public/stylesheets/sass/skip_embedded/skip_base.sass", "generators/skip_embedded_stylesheets/templates/public/stylesheets/sass/skip_embedded/skip_embedded.sass", "generators/skip_embedded_stylesheets/templates/public/stylesheets/sass/skip_embedded/skip_footer.sass", "generators/skip_embedded_stylesheets/templates/public/stylesheets/sass/skip_embedded/skip_header.sass", "generators/skip_embedded_stylesheets/templates/public/stylesheets/skip_embedded", "generators/skip_embedded_stylesheets/templates/public/stylesheets/skip_embedded/sprites.css", "generators/skip_embedded_stylesheets/templates/public/stylesheets/skip_embedded/sprites.png", "script/skip-gen.sh", "spec/skip_embedded/fulltext_search_cache/builder_base_spec.rb", "spec/skip_embedded/fulltext_search_cache/mediator_spec.rb", "spec/skip_embedded/fulltext_search_cache/partial_loader_spec.rb", "spec/skip_embedded/initial_setting_spec.rb", "spec/skip_embedded/op_fixation_spec.rb", "spec/skip_embedded/validations_file_spec.rb", "spec/skip_embedded/web_service_util_spec.rb", "spec/spec_helper.rb", "rails/init.rb"]
  s.homepage = %q{http://github.com/openskip/skip_embedded/tree/master}
  s.rdoc_options = ["--title", "skip_embedded documentation", "--charset", "utf-8", "--opname", "index.html", "--line-numbers", "--main", "README.rdoc", "--inline-source", "--exclude", "^(examples|extras)/"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.4}
  s.summary = %q{Utilities to collabolate SKIP, opensource buisiness SNS.}
  s.test_files = ["spec/skip_embedded/fulltext_search_cache/builder_base_spec.rb", "spec/skip_embedded/fulltext_search_cache/mediator_spec.rb", "spec/skip_embedded/fulltext_search_cache/partial_loader_spec.rb", "spec/skip_embedded/initial_setting_spec.rb", "spec/skip_embedded/op_fixation_spec.rb", "spec/skip_embedded/validations_file_spec.rb", "spec/skip_embedded/web_service_util_spec.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<openskip-repim>, [">= 0.1.7"])
      s.add_runtime_dependency(%q<json>, [">= 0"])
      s.add_runtime_dependency(%q<oauth>, [">= 0"])
      s.add_runtime_dependency(%q<haml>, [">= 0"])
    else
      s.add_dependency(%q<openskip-repim>, [">= 0.1.7"])
      s.add_dependency(%q<json>, [">= 0"])
      s.add_dependency(%q<oauth>, [">= 0"])
      s.add_dependency(%q<haml>, [">= 0"])
    end
  else
    s.add_dependency(%q<openskip-repim>, [">= 0.1.7"])
    s.add_dependency(%q<json>, [">= 0"])
    s.add_dependency(%q<oauth>, [">= 0"])
    s.add_dependency(%q<haml>, [">= 0"])
  end
end

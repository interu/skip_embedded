# Include hook code here
require 'skip_embedded/initial_settings'
Thread.critical{
  SkipEmbedded::InitialSettings.config = File.expand_path("config/initial_settings.yml", Rails.root)
  SkipEmbedded.instance # force loading
}

config.gem 'openskip-repim', :lib => 'repim', :version => '>=0.1.4', :soruce => 'http://gems.github.com/'
config.gem 'locale_rails'
config.gem 'gettext_activerecord'
config.gem 'gettext_rails'

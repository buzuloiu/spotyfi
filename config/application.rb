require_relative 'boot'

require 'rails/all'
#require 'aws/s3'
#include AWS::S3

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Spotyfi
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1

    Aws::S3::Client.new(
      #access_key_id: => '',
      #secret_access_key: => 'oTMJi/QfbGyHrUrxoEmmTLWiTU814VBv/OpS6sYwW'
      credentials: Aws::Credentials.new('AKIAIED75IANODLR7RQQ', 'oTMJi/QfbGyHrUrxoEmmTLWiTU814VBv/OpS6sYwW')

    )


    BUCKET = 'spotyfimusic'

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  end
end

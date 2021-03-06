require 'rack/bodyparser'
require 'json'

require_relative 'webhook_parser'

module Sinatra
  module Parsers
    class WebhookJsonParser # rubocop:disable Style/Documentation
      include Sinatra::Parsers::WebhookParser

      def parse_data(body)
        JSON.parse(body, quirks_mode: true)
      end
    end
  end
end

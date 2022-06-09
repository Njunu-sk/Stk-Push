require 'base64'
require 'json'
require 'dotenv/load'
require 'httparty'

module MpesaStk
  class AccessToken
    class << self
      def call(key = nil, secret = nil)
        new(key, secret).get_access_token
      end
    end

    def initialize(key = nil, secret = nil)
      @key = key.nil? ? ENV['key'] : key
      @secret = secret.nil? ? ENV['key'] : secret
    end

    def get_access_token
      response = HTTParty.get(url, headers: headers)

      JSON.parse(response.body).fetch('access_token')
    end

    private

    def encode_credentials
      @encode = Base64.encode64("#{ENV['key']}:#{ENV['secret']}").split("\n").join
    end

    def url
      "#{ENV['base_url']}#{ENV['token_generator_url']}"
    end

    def headers
      encode = encode_credentials
      {
        'Authorization' => "Basic #{encode}"
      }
    end
  end
end

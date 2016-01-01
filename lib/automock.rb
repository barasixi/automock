require "automock/version"
require 'automock/response_mock'
require 'automock/rspec'

module Automock
  class << self
    def append(context, example)
      @mocks ||= []
      @mocks << ResponseMock.new(context.clone, example.clone)
    end

    def write
      @mocks.each do |mock|
        mock.write
      end
    end
  end
end
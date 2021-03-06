require 'sinatra/base'
require 'rack/fiber_pool'
require 'eventmachine'
require 'em-http-request'
require 'em-synchrony'
require 'em-resolv-replace'
require 'net/http'

module Sinatra
  module Synchrony
    def setup_sessions(builder)
      builder.use Rack::FiberPool unless test?
      super
    end
  end
  register Synchrony
end

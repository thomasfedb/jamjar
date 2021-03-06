require "bundler"

unless ENV["TRAVIS_CI"]
  if RUBY_VERSION[0] == "2"
    require "byebug"
  else
    require "debugger"
  end
end

if ENV["TRAVIS_CI"]
  Bundler.require
else
  Bundler.require(:default, :tools)
end

Dir[File.expand_path("../support/**/*.rb", __FILE__)].each {|f| require f }

RSpec.configure do |config|
  config.order = "random"
end

require "rubygems"
require 'sinatra'
require 'browser'

get '/' do
 browser = Browser.new(:ua => request.user_agent)
 @browser_name = browser.name
  <<-HTML
     <h1>#{@browser_name}</h1>
   HTML
end
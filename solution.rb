require 'sinatra'

get '/' do
 result = request.env['HTTP_USER_AGENT']
 @browser_name = result
  <<-HTML
     <h1>#{@browser_name}</h1>
   HTML
end
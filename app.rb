require('sinatra')
require('sinatra/reloader')
require('./lib/ruby_triangle_tracker')
require('pry')
also_reload('lib/**/*.rb')

get('/') do
  erb(:triangle)
end

post('/result') do
  side1 = params[:side1]
  side2 = params[:side2]
  side3 = params[:side3]
  triangle = Triangle_Checker.new(side1, side2, side3)
  @result = triangle.triangle_checker()
  erb(:result)
end
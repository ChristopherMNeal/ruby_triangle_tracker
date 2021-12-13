require('sinatra')
require('sinatra/reloader')
require('./lib/ruby_triangle_tracker')
require('pry')
also_reload('lib/**/*.rb')

get('/') do
  # @triangle = Triangle.all
  erb(:triangle)
end

get('/triangle') do
  # @triangle = Triangle.all
  erb(:triangle)
end

post('/triangle') do
  erb(:result)
end

get('/result') do
  side1 = params[:side1]
  side2 = params[:side2]
  side3 = params[:side3]
  triangle = Triangle_Checker.new(side1, side2, side3)
  triangle.triangle_checker()
end

# get('/albums/:id') do
#   @album = Album.find(params[:id].to_i())
#   erb(:album)
# end
require('sinatra')
require('sinatra/reloader')
require('./lib/ruby_triangle_tracker')
require('pry')
also_reload('lib/**/*.rb')

get('/') do
  @triangle = Triangle.all
  erb(:triangle)
end

get('/triangle') do
  @triangle = Triangle.all
  erb(:triangle)
end

# get('/albums/:id') do
#   @album = Album.find(params[:id].to_i())
#   erb(:album)
# end
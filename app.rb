require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/triangles')
require('pry')

get('/') do
  erb(:input)
end

get('/output')do
  @a = params.fetch('sidea').to_i
  @b = params.fetch('sideb').to_i
  @c = params.fetch('sidec').to_i
  sides = Triangle.new(@a, @b, @c)
  @side_output = sides.type
  erb(:output)
end

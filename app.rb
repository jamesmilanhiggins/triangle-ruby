require('sinatra')
require('sinatra/reloader')
require('./lib/triangle')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/answer') do
  @input_side1 = params.fetch('side-1').to_i
  @input_side2 = params.fetch('side-2').to_i
  @input_side3 = params.fetch('side-3').to_i
  erb(:answer)
end

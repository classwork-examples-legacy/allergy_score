require('sinatra')
require('sinatra/reloader')
require('./lib/allergy')
also_reload('lib/**/*.rb')

get('/') do

  erb(:index)
end

get('/score') do
  @allergy = params.fetch('allergy_score').allergy()
  erb(:score)
end

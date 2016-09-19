class Recipe
  include HTTParty
  hotspot = ENV['FOOD2FORK_SERVER_AND_PORT'] || 'www.food2fork.com' 

  default_params key: ENV['FOOD2FORK_KEY']
  format :json
  base_uri "http://#{hotspot}/api"

  def self.for(keyword)
    get('/search', query: {q: keyword}).dig('recipes')
  end

end

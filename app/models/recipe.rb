class Recipe
	include HTTParty

    key_value = ENV['FOOD2FORK_KEY']
    hostport = ENV['FOOD2FORK_SERVER_AND_PORT'] || 'www.food2fork.com'
    base_uri "http://#{hostport}/api"
	#base_uri 'https://food2fork.com/about/api'
    #default_params fields: "photoUrl,description", q: "search"
    #default_params key: ENV["FOOD2FORK_KEY"]
    default_params key: key_value
	format :json

	def self.for term
		get("/search", query: { q: term})["recipes"]
	end
end
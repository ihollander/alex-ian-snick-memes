module GiphyApiCommunicator
  BASE_URL = "https://api.giphy.com/v1/gifs/search"

  def search_title(title, limit = 5)
    search_url = "#{BASE_URL}?api_key=#{ENV["GIPHY_API_KEY"]}&q=#{title}&limit=#{limit}&offset=0&rating=G&lang=en"
    response_string = RestClient.get(search_url)
    response_hash = JSON.parse(response_string)
    response_array = response_hash["data"].map do |giphy_hash|
      giphy_hash["id"]
    end
    response_array
  end

end
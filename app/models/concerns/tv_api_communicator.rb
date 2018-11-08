module TvApiCommunicator
  BASE_URL = "http://www.omdbapi.com/"

  def search_title(title)
    search_url = "#{BASE_URL}?s=#{title}&type=series&apikey=#{ENV["OMDB_API_KEY"]}"
    response_string = RestClient.get(search_url)
    response_hash = JSON.parse(response_string)
    show_array = response_hash["Search"]
    result_array = []
    show_array.each do |show|
      result_hash = {}
      result_hash[:name] = show["Title"]
      if show["Year"] && show["Year"].include?("–")
        result_hash[:year_created] = show["Year"].split("–").first
      else
        result_hash[:year_created] = show["Year"]
      end
      result_array << result_hash
    end
    result_array
  end
end
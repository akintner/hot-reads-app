class LinkService 
  def self.get_top_ten
    response = Faraday.get("http://localhost:3000/api/v1/toplinks")
    JSON.parse(response.body, symbolize_names: true)
  end
end
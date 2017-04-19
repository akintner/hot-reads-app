class LinkService 
  def self.get_top_ten
    response = Faraday.get("https://ak-final-assessment.herokuapp.com/api/v1/toplinks")
    JSON.parse(response.body, symbolize_names: true)
  end
end
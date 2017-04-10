require 'rails_helper'

RSpec.describe "GET /api/v1/links" do
  it "returns top ten links" do
    one = Link.create(title: "super neat", url: "http://www.neato.com")
    two = Link.create(title: "wahoo", url: "http://www.google.com")
    three = Link.create(title: "nice one", url: "http://www.chicken.com")
    four = Link.create(title: "star trek is great", url: "http://www.dogs.com", updated_at: "Sun, 9 Apr 2017 12:54:47 UTC +00:00")
    five = Link.create(title: "star wars is great", url: "http://www.elephants.com")
    six = Link.create(title: "whoop", url: "http://www.whoop.com")
    seven = Link.create(title: "penelope", url: "http://www.penelope.com")
    eight = Link.create(title: "horses are great", url: "http://www.horses.com")
    nine = Link.create(title: "save the whales", url: "http://www.whales.com")
    ten = Link.create(title: "save the planet", url: "http://www.greenearth.com")
    eleven = Link.create(title: "save the trees", url: "http://www.treesaregreat.com")
    twelve = Link.create(title: "impeach trump", url: "http://www.loser.com")

    get "/api/v1/links"

    expect(response).to be_success
    links = JSON.parse(response.body)
    expect(links.count).to eq(10)
    expect(links.first).to be_a(Hash)
    expect(links.first["url"]).to eq(one.url)
  end
end
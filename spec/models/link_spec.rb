require 'rails_helper'

RSpec.describe Link, type: :model do
  describe 'methods' do
    it 'will display the top ten links' do
      one = Link.create(title: "super neat", url: "http://www.neato.com")
      two = Link.create(title: "wahoo", url: "http://www.google.com")
      three = Link.create(title: "nice one", url: "http://www.chicken.com")
      four = Link.create(title: "star trek is great", url: "http://www.dogs.com")
      five = Link.create(title: "star wars is great", url: "http://www.elephants.com")
      six = Link.create(title: "whoop", url: "http://www.whoop.com")
      seven = Link.create(title: "penelope", url: "http://www.penelope.com")
      eight = Link.create(title: "horses are great", url: "http://www.horses.com")
      nine = Link.create(title: "save the whales", url: "http://www.whales.com")
      ten = Link.create(title: "save the planet", url: "http://www.greenearth.com")
      eleven = Link.create(title: "save the trees", url: "http://www.treesaregreat.com")
      twelve = Link.create(title: "impeach trump", url: "http://www.loser.com")

      links = Link.top_ten

      expect(links.count).to eq 10
      expect(links.first.title).to eq("super neat")
      expect(links.last.title).to eq("save the planet")
      expect(links.last.url).to eq("http://www.greenearth.com")
      expect(links).to_not include(twelve.url)
    end
  end
end
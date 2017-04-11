require 'rails_helper'

RSpec.describe LinkService do 
  context '.get_top_ten method' do 
    it 'returns the top ten links from external api' do
      VCR.use_cassette("link_service.get_top_ten") do
        raw_links = LinkService.get_top_ten

        expect(raw_links).to be_an(Array)
        expect(raw_links.count).to eq(10)
        
        link = raw_links.first
        expect(link).to be_a(Hash)
        expect(link).to have_key(:title)
        expect(link[:url]).to be_a(String)
      end
    end
  end
end
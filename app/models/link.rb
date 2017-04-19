class Link < ApplicationRecord
  def self.top_ten
    LinkService.get_top_ten.map do |link|
      link
    end
  end
end
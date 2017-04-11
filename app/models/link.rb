class Link < ApplicationRecord
  def self.top_ten
    LinkService.get_top_ten.map do |link|
      new(link)
  end
end
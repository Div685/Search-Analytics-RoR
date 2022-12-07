class Search < ApplicationRecord
  validates_presence_of :query
  validates :query, length: { minimum: 3, maximum: 90 }

  def searched?(search)
    jarow = FuzzyStringMatch::JaroWinkler.create(:native)
    similarity_percentage = jarow.getDistance(search, query)
    similarity_percentage > 0.8
  end
end

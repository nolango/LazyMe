class Refrigerator < ActiveRecord::Base

  has_many :reviews, foreign_key: "refrigerator_id"
  
  def self.sorted_by(field)
    if Refrigerator.column_names.include?(field)
      return Refrigerator.order(field)
    end
    return Refrigerator.order("name")
  end

  def create_review
    # logic for creating the review here?
    # this might not be necessary
  end
end

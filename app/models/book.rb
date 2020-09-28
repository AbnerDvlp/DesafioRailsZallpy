class Book < ApplicationRecord
  belongs_to  :genre
  validates_presence_of :title,:synopsis,:value,:number_of_pages,:genre_id
  validates :value ,numericality: {greater_than: 0.0 }
end

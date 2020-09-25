class Book < ApplicationRecord
  has_one :genre
  validates_presence_of :title,:synopsis,:value,:number_of_pages,:genre_id
end

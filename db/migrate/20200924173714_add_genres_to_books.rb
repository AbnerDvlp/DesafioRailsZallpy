class AddGenresToBooks < ActiveRecord::Migration[6.0]
  def change
    add_reference :books, :genre
  end
end

class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string  :title
      t.string  :synopsis
      t.decimal :value
      t.integer :number_of_pages

      t.timestamps
    end
  end
end

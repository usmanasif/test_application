class CreateGifs < ActiveRecord::Migration[5.2]
  def change
    create_table :gifs do |t|
      t.text :file, null: false

      t.references :user, null: false, foreign_key: true
    end
  end
end

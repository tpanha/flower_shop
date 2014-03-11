class CreateFreeFlowers < ActiveRecord::Migration
  def change
    create_table :free_flowers do |t|
      t.string :title
      t.text :description
      t.string :image_url

      t.timestamps
    end
  end
end

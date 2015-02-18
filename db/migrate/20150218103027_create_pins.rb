class CreatePins < ActiveRecord::Migration
  def change
    create_table :pins do |t|
    	t.string :title
    	t.integer :likes 
    	t.string :image_url
    	t.timestamps

    end
  end
end

class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
    	t.string :username
    	t.string :body
    	t.belongs_to :pin
    end
    add_index :comments, :pin_id
  end
end

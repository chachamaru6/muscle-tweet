class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :name,         null:false
      t.string :muscle_id,    null:false
      t.text :explanation,    null:false
      t.references :user,     null:false, foreign_key: true
# image  Active Storage  
      t.timestamps
    end
  end
end

class CreateImages < ActiveRecord::Migration[5.2]
  def change
    create_table :images do |t|
      t.integer :imageable_id, null: false
      t.string  :imageable_type, null: false
      t.string :file, null: false
      t.timestamps
    end

    add_index :images, [:imageable_type, :imageable_id]
  end
end

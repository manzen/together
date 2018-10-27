class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :name, limit: 255
      t.text :description
      t.string :location_name, limit: 255
      t.text :location_url
      t.text :address
      t.float :latitude
      t.float :longitude
      t.text :link
      t.text :image
      t.integer :capacity
      t.timestamp :event_date
      t.timestamps
    end
  end
end

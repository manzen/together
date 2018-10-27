class CreateEventUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :event_users do |t|
      t.boolean :admin, default: false
      t.integer :status, default: 0
      t.references  :event, foreign_key: true
      t.references  :user, foreign_key: true
      t.timestamps
    end
  end
end

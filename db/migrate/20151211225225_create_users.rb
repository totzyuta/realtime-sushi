class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :provider
      t.string :uid
      t.string :screen_name
      t.string :name
      t.string :icon

      t.timestamps null: false
    end
  end
end

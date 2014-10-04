class CreateTribes < ActiveRecord::Migration
  def change
    create_table :tribes do |t|
      t.references :user
      t.string :name
      t.text :description
      t.string :video
      t.timestamps
    end
  end
end

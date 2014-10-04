class AddFieldsToTribe < ActiveRecord::Migration
  def change
    add_column :tribes, :user_id, :integer
    add_column :tribes, :name, :string
    add_column :tribes, :description, :text
    add_column :tribes, :video, :string
  end

  def down
    remove_column :tribes, :user_id
    remove_column :tribes, :name
    remove_column :tribes, :description
    remove_column :tribes, :video
  end
end

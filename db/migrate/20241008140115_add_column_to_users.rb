class AddColumnToUsers < ActiveRecord::Migration[7.2]
  def change
    add_column :users, :first_name, :varchar
    add_column :users, :last_name, :varchar
    add_column :users, :picture, :text
    add_column :users, :location, :varchar
  end
end

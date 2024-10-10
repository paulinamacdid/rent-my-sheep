class AddCoordinatesToSheep < ActiveRecord::Migration[7.2]
  def change
    add_column :sheep, :latitude, :float
    add_column :sheep, :longitude, :float
  end
end

class RemovePosterFromMovie < ActiveRecord::Migration[5.1]
  def change
    remove_column :movies, :poster, :string
  end
end

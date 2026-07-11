class RemoveStringFromMovies < ActiveRecord::Migration[8.1]
  def change
    remove_column :movies, :string, :string
  end
end

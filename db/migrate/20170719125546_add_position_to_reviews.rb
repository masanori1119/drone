class AddPositionToReviews < ActiveRecord::Migration
  def change
    add_column :reviews, :Position, :string, after: :rate
  end
end

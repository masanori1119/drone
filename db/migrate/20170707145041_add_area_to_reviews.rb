class AddAreaToReviews < ActiveRecord::Migration
  def change
    add_column :reviews, :area, :string
  end
end

class AddPublicToReviews < ActiveRecord::Migration
  def change
    add_column :reviews, :public, :boolean, after: :school_id
  end
end

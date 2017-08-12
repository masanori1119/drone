class AddSexToReviews < ActiveRecord::Migration
  def change
    add_column :reviews, :sex, :string, after: :rate
  end
end

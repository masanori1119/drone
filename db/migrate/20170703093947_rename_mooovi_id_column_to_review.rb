class RenameMoooviIdColumnToReview < ActiveRecord::Migration
  def change
     rename_column :reviews, :mooovi_id, :school_id
  end
end

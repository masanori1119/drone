class AddAreaIdToSchools < ActiveRecord::Migration
  def change
    add_column :schools, :Area_id, :integer, after: :area
  end
end

class RenameAreaIdColumnToSchools < ActiveRecord::Migration
  def change
    rename_column :schools, :Area_id, :area_id
  end
end

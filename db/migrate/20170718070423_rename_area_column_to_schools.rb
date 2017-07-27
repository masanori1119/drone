class RenameAreaColumnToSchools < ActiveRecord::Migration
  def change
    rename_column :schools, :area, :prefecture
  end
end

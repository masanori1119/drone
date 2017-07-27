class RenameLicenseIdColumnToSchools < ActiveRecord::Migration
  def change
    rename_column :schools, :license_id, :license
  end
end

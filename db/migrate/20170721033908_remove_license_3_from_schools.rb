class RemoveLicense3FromSchools < ActiveRecord::Migration
  def change
    remove_column :schools, :license_3, :string
    remove_column :schools, :license_4, :string
    remove_column :schools, :license_5, :string
  end
end

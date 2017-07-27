class RemoveLicense2FromSchools < ActiveRecord::Migration
  def change
    remove_column :schools, :license_2, :string
  end
end

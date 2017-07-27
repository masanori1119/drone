class AddLicenseIdToSchools < ActiveRecord::Migration
  def change
    add_column :schools, :license_id, :string , after: :area_id
  end
end

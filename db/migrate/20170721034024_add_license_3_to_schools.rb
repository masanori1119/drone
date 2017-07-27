class AddLicense3ToSchools < ActiveRecord::Migration
  def change
    add_column :schools, :license_3, :string, after: :license_2
  end
end

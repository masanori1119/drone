class AddLicense4ToSchools < ActiveRecord::Migration
  def change
    add_column :schools, :license_4, :string, after: :license_3
  end
end

class AddLicense2ToSchools < ActiveRecord::Migration
  def change
    add_column :schools, :license_2, :string , after: :license
    add_column :schools, :license_3, :string
    add_column :schools, :license_4, :string
    add_column :schools, :license_5, :string
  end
end

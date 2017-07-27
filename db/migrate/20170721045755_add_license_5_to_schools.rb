class AddLicense5ToSchools < ActiveRecord::Migration
  def change
    add_column :schools, :license_5, :string, after: :license_4
  end
end

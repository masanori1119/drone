class AddAreaToSchools < ActiveRecord::Migration
  def change
    add_column :schools, :area, :string, after: :company
  end
end

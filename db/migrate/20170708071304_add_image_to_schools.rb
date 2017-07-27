class AddImageToSchools < ActiveRecord::Migration
  def change
    add_column :schools, :image, :string, after: :company
  end
end

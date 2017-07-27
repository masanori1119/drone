class RemoveAvatarFromSchools < ActiveRecord::Migration
  def change
    remove_column :schools, :avatar_file_name, :string
    remove_column :schools, :avatar_content_type, :string
    remove_column :schools, :avatar_file_size, :integer
    remove_column :schools, :avatar_updated_at, :datetime
  end
end

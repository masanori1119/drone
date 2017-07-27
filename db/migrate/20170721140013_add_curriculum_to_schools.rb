class AddCurriculumToSchools < ActiveRecord::Migration
  def change
    add_column :schools, :curriculum, :text, after: :address
  end
end

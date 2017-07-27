class CreateColumns < ActiveRecord::Migration
  def change
    create_table :columns do |t|

      t.string :title
      t.text :categori_1
      t.text :categori_2
      t.string :image
      t.text :text

      t.timestamps 
    end
  end
end

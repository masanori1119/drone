class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
        t.string      :name
        t.text        :company
        t.text        :address
        t.text        :point
        t.text        :group
        t.text        :other
        t.timestamps
    end
  end
end

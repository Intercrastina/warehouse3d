class CreateSteps < ActiveRecord::Migration
  def change
    create_table :steps do |t|
      t.integer :order
      t.text :description
      t.integer :assembly_id
      t.timestamps
    end
  end
end

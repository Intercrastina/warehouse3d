class CreateExtras < ActiveRecord::Migration
  def change
    create_table :extras do |t|
      t.string :name
      t.text :description
      t.integer :cost
      t.integer :step_id
      t.timestamps
    end
  end
end

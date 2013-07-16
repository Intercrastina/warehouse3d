class CreatePieces < ActiveRecord::Migration
  def change
    create_table :pieces do |t|
      t.string :name
      t.text :description
      t.integer :assembly_id
      t.timestamps
    end
  end
end

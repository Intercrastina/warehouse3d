class CreateAssemblies < ActiveRecord::Migration
  def change
    create_table :assemblies do |t|
      t.string :name
      t.integer :printing_time
      t.integer :printing_cost
      t.text :descriptions
      t.timestamps
    end
  end
end

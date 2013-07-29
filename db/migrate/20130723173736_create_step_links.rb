class CreateStepLinks < ActiveRecord::Migration
  def change
    create_table :step_links do |t|
      t.references :step
      t.references :piece
      t.references :extra
      t.timestamps
    end
  end
end

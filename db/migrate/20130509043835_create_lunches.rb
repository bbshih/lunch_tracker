class CreateLunches < ActiveRecord::Migration
  def change
    create_table :lunches do |t|
      t.string :food
      t.string :drink
      t.float :cost

      t.timestamps
    end
  end
end

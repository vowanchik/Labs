class CreateRecs < ActiveRecord::Migration[5.2]
  def change
    create_table :recs do |t|
      t.string :seq
      t.string :res

      t.timestamps
    end
  end
end

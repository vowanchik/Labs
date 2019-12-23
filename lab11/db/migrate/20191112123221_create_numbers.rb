class CreateNumbers < ActiveRecord::Migration[5.2]
  def change
    create_table :numbers do |t|
      t.integer :n
      t.string :res

      t.timestamps
    end
  end
end

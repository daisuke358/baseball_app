class CreateBatters < ActiveRecord::Migration[5.1]
  def change
    create_table :batters do |t|
      t.string :name
      t.integer :ab
      t.integer :hit
      t.decimal :avg

      t.timestamps
    end
  end

end

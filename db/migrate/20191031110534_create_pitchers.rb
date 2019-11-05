class CreatePitchers < ActiveRecord::Migration[5.1]
  def change
    create_table :pitchers do |t|
      t.string :name
      t.string :picture
      t.boolean :league, default: false      
      t.integer :win
      t.integer :lose
      t.integer :game
      t.integer :cg
      t.integer :sho
      t.integer :qs
      t.integer :hld
      t.integer :hp
      t.integer :sv
      t.decimal :wpct, precision: 5, scale: 3
      t.integer :o
      t.decimal :ip, precision: 5, scale: 1
      t.integer :tbf
      t.integer :hit
      t.integer :hr
      t.integer :so
      t.decimal :k_9, precision: 5, scale: 2
      t.integer :bb
      t.integer :hbp
      t.integer :wp
      t.integer :bk
      t.integer :r
      t.integer :er
      t.decimal :era, precision: 4, scale: 2
      t.decimal :k_bb, precision: 4, scale: 2
      t.decimal :whip, precision: 4, scale: 2
      t.decimal :rsaa_c, precision: 5, scale: 2
      t.decimal :rsaa_p, precision: 5, scale: 2
      t.decimal :fip, precision: 4, scale: 2

      t.integer :era_g
      t.integer :whip_g
      t.integer :fip_g

      t.timestamps
    end
  end
end

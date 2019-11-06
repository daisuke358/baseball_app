class CreateBatters < ActiveRecord::Migration[5.1]
  def change

    create_table :batters do |t|
      t.string :name
      t.string :picture
      t.boolean :league, default: false
      t.decimal :avg, precision: 6, scale: 3
      t.integer :avg_view
      t.integer :game
      t.integer :pa
      t.integer :ab
      t.integer :hit
      t.integer :hit_2b
      t.integer :hit_3b
      t.integer :hr
      t.integer :tb
      t.integer :rbi
      t.integer :run
      t.integer :so
      t.integer :bb
      t.integer :ibb
      t.integer :hbp
      t.integer :sh
      t.integer :sf
      t.integer :sb
      t.integer :cs
      t.integer :gdp
      t.decimal :obp, precision: 6, scale: 3
      t.decimal :slg, precision: 6, scale: 3
      t.decimal :ops, precision: 7, scale: 3
      t.decimal :w_oba, precision: 6, scale: 3
      t.decimal :w_raa_c, precision: 6, scale: 3
      t.decimal :w_raa_p, precision: 6, scale: 3
      t.decimal :w_rc_c, precision: 6, scale: 3
      t.decimal :w_rc_p, precision: 6, scale: 3
      t.decimal :iso_d, precision: 6, scale: 3
      t.decimal :iso_p, precision: 6, scale: 3
      t.decimal :rc27, precision: 6, scale: 3     
      t.integer :avg_g
      t.integer :w_oba_g
      t.integer :rc27_g
      t.timestamps
      
    end
  end
end

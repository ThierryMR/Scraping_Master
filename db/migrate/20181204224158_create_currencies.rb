class CreateCurrencies < ActiveRecord::Migration[5.2]
  def change
    create_table :currencies do |t|
      t.string :date
      t.float :open
      t.float :high
      t.float :low
      t.float :close
      t.float :volume
      t.float :MarketCap
      t.float :median_price
      t.float :return
      t.float :std_price
      t.float :sum
      t.float :media_volume
      t.float :std_volume
      t.string :name
      t.boolean :buy
      t.boolean :seel
      t.float :sharp_ratio

      t.timestamps
    end
  end
end

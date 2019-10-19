class AddColumnTotalPrice < ActiveRecord::Migration[6.0]
  def change
    change_table :orders do |t|
      t.decimal :total_price
    end
  end
end

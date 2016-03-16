class CreateTunnelExpenses < ActiveRecord::Migration
  def change
    create_table :tunnel_expenses do |t|
      t.references :tunnel, index: true, foreign_key: true
      t.references :expense, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

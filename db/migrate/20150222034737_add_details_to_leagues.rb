class AddDetailsToLeagues < ActiveRecord::Migration
  def change
    add_column :leagues, :buy_in_amount, :decimal
  end
end

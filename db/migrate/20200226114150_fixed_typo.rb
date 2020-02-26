class FixedTypo < ActiveRecord::Migration[5.2]
  def change
    rename_column :restaurants, :categroy, :category
  end
end

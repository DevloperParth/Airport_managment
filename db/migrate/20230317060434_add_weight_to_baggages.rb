class AddWeightToBaggages < ActiveRecord::Migration[7.0]
  def change
    add_column :baggages, :weight, :string
  end
end

class AddStatusToBaggages < ActiveRecord::Migration[7.0]
  def change
    add_column :baggages, :status, :string, null: false, default: "checked"
  end
end

class RemoveTagNumFromBaggages < ActiveRecord::Migration[7.0]
  def change
    remove_column :baggages, :tag_number, :string
  end
end

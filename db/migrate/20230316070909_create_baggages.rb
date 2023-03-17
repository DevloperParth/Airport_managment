class CreateBaggages < ActiveRecord::Migration[7.0]
  def change
    create_table :baggages do |t|
      t.references :booking, null: false, foreign_key: true
      t.string :tag_number

      t.timestamps
    end
  end
end

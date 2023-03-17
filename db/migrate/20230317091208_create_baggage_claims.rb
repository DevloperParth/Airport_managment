class CreateBaggageClaims < ActiveRecord::Migration[7.0]
  def change
    create_table :baggage_claims do |t|
      t.text :description
      t.string :status
      t.references :booking, null: false, foreign_key: true

      t.timestamps
    end
  end
end

class CreateCalculators < ActiveRecord::Migration[5.2]
  def change
    create_table :calculators do |t|
      t.integer :principle
      t.decimal :rate
      t.integer :year
      t.decimal :total

      t.timestamps
    end
  end
end

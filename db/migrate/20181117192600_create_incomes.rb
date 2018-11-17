class CreateIncomes < ActiveRecord::Migration[5.2]
  def change
    create_table :incomes do |t|
      t.decimal :amount
      t.date :operation_date
      t.text :description
      t.references :user
      t.timestamps
    end
  end
end

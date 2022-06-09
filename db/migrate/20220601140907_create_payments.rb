class CreatePayments < ActiveRecord::Migration[7.0]
  def change
    create_table :payments do |t|
      t.integer :amount
      t.string :phone_number
      t.string :response
      t.boolean :state, default: false
      t.string :code
      t.string :CheckoutRequestID
      t.string :MerchantRequestID

      t.timestamps
    end
  end
end

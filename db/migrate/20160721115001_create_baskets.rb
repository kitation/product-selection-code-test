class CreateBaskets < ActiveRecord::Migration[5.0]
  def change
    create_table :baskets do |t|
      t.string :customer_id

      t.timestamps
    end
  end
end

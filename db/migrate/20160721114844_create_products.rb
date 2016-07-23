class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :category
      t.string :name
      t.string :location

      t.timestamps
    end

    Product.create(category:"SPORTS", name:"Arsenal TV", location:"LONDON")
    Product.create(category:"SPORTS", name:"Chelsea TV", location:"LONDON")
    Product.create(category:"SPORTS", name:"Liverpool TV", location:"LIVERPOOL")
    Product.create(category:"NEWS", name:"Sky News")
    Product.create(category:"NEWS", name:"Sky Sports News")
  end
end

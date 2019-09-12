class AddFotoToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :foto, :string
  end
end

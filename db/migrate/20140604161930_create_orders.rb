class CreateOrders < ActiveRecord::Migration
  def change
    # TODO
    create_table :order do |t|
      t.integer :employee_id
      t.integer :items
    end

  end
end

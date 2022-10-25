class CreateGroupsPurchases < ActiveRecord::Migration[7.0]
  def change
    create_table :groups_purchases do |t|

      t.timestamps
    end
  end
end

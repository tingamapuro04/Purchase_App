class CreateGroupsPurchasesJoinTable < ActiveRecord::Migration[7.0]
  def change
    create_join_table :groups, :purchases do |t|
      t.index %i[group_id purchase_id]
      t.index %i[purchase_id group_id]
    end
  end
end

class CreateGroups < ActiveRecord::Migration[7.0]
  def change
    create_table :groups do |t|
      t.string :name
      t.string :icon
      t.belongs_to :user, foreign_key: true, index: true
      t.timestamps
    end
  end
end

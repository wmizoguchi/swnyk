class CreateVlans < ActiveRecord::Migration
  def change
    create_table :vlans do |t|
      t.string :description, null: false, default: ""

      t.timestamps null: false
    end
  end
end

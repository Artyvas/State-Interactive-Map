class CreateStates < ActiveRecord::Migration[6.0]
  def change
    create_table :states do |t|
      t.string :name
      t.string :code
      t.float :med_inc
      t.float :per_unemp_seas
      t.float :per_pop_metro
      t.float :per_pop_high

      t.timestamps
    end
  end
end

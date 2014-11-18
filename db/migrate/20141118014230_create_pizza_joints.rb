class CreatePizzaJoints < ActiveRecord::Migration
  def change
    create_table :pizza_joints do |t|
      t.string :name
      t.string :city

      t.timestamps
    end
  end
end

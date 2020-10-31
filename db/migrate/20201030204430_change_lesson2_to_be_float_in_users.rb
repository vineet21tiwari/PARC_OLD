class ChangeLesson2ToBeFloatInUsers < ActiveRecord::Migration[6.0]
  def change
    change_column :users, :lesson2, :float
  end
end

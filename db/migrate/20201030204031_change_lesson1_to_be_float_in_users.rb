class ChangeLesson1ToBeFloatInUsers < ActiveRecord::Migration[6.0]
  def change
    change_column :users, :lesson1, :float
  end
end

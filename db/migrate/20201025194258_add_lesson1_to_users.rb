class AddLesson1ToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :lesson1, :integer, default: 0
  end
  
  
end

class AddLesson2ToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :lesson2, :integer, default: 0
  end
  
  
end

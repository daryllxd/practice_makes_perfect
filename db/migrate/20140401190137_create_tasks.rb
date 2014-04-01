class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.string :email
      t.string :owner
      t.string :priority
      t.boolean :private
      t.datetime :deadline

      t.timestamps
    end
  end
end

class CreateComments < ActiveRecord::Migration
  def up
    create_table :comments do |t|
      t.string :title
      t.string :body
      t.belongs_to :user
      t.timestamps
    end
  end

  def down
    drop_table :comments
  end
end

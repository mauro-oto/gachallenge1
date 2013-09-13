class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.string :date
      t.string :user
      t.string :body
      t.string :link

      t.timestamps
    end
  end
end

class CreateChallenges < ActiveRecord::Migration
  def change
    create_table :challenges do |t|
      t.text :body

      t.timestamps
    end
  end
end

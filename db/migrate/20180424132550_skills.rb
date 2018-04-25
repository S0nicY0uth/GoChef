class Skills < ActiveRecord::Migration[5.1]
  def change
    create_table :skills do |t|
      t.string "name"
      t.timestamps
    end
  
    create_table :skills_users do |t|
      t.references :skill
      t.references :user
    end
  end
end

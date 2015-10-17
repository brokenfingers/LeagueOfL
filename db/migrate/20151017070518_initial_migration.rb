class InitialMigration < ActiveRecord::Migration
  def up
    # Create a table to store champions
    create_table :champions, :force => true do |t|
      t.string :name
      t.string :title
      t.string :role
      t.text :story
      t.text :image
      t.timestamps
    end
    
    create_table :attributes, :force => true do |t|
      t.belongs_to :champion
      t.string :name
      t.decimal :base_value
      t.decimal :scale_rate
      t.timestamps
    end
    add_index :attributes, :champion_id
    
    create_table :skills, :force => true do |t|
      t.belongs_to :champion
      t.string :name
      t.decimal :physical_damage
      t.decimal :magic_damage
      t.decimal :true_damage
      t.text :description
      t.decimal :scale_rate
      t.timestamps
    end
    add_index :skills, :champion_id
    
    # Create a table to store users
    create_table :users, :force => true do |t|
      t.string :name
      t.string :summoner_name
      t.timestamps
    end
    
    create_table :identities, :force => true do |t|
      t.belongs_to :user
      t.string :provider
      t.string :provider_uid
      t.timestamps
    end
    add_index :identities, :user_id
  end
  
  def down
  end
end

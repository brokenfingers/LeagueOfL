class InitialMigration < ActiveRecord::Migration
  def up
    # Create a table to store champions
    create_table :champions, :force => true do |t|
      t.string :name
      t.string :title
      t.string :role
      t.decimal :health
      t.decimal :mana
      t.decimal :energy
      t.decimal :rage
      t.decimal :attack_range
      t.decimal :physical_attack
      t.decimal :magic_attack
      t.decimal :armor_penetration
      t.decimal :magic_penetration
      t.decimal :physical_defense
      t.decimal :magic_defense
      t.decimal :attack_speed
      t.decimal :cooldown_reduction
      t.decimal :critical_rate
      t.decimal :life_steal
      t.decimal :spell_vamp
      t.decimal :movespeed
      t.decimal :tenacity
      t.text :image
    end
    
    create_table :skills, :force => true do |t|
      t.belongs_to :champion
      t.string :name
      t.decimal :physical_damage
      t.decimal :magic_damage
      t.decimal :true_damage
      t.text :description
      t.decimal :scale_rate
    end
    add_index :skills, :champion_id
    
    # Create a table to store users
    create_table :users, :force => true do |t|
      t.string :name
      t.string :summoner_name
      t.boolean :admin, :default => false
    end
    
    create_table :identities, :force => true do |t|
      t.belongs_to :user
      t.string :provider
      t.string :provider_uid
    end
    add_index :identities, :user_id
  end
  
  def down
  end
end

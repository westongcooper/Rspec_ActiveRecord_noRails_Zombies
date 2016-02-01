require_relative '../../environment'

class CreateVampiresTable < ActiveRecord::Migration
  def up
    create_table :vampires do |t|
      t.string :name
    end
    puts 'ran up method'
  end
  def down
    drop_table :vampires
    puts 'ran down method'
  end
end

CreateVampiresTable.migrate(ARGV[0])
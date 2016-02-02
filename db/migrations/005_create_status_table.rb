require_relative '../../environment'

class CreateStatusesTable < ActiveRecord::Migration
  def up
    create_table :statuses do |t|
      t.string :text
      # t.integer :zombie_id
    end
    puts 'ran up method'
  end
  def down
    drop_table :statuses
    puts 'ran down method'
  end
end

CreateStatusesTable.migrate(ARGV[0])
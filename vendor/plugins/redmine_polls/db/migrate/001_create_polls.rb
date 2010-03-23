class CreatePolls < ActiveRecord::Migration
  def self.up
    create_table :polls do |t|

      t.column :question, :string

      t.column :yes, :integer

      t.column :no, :integer

    end
  end

  def self.down
    drop_table :polls
  end
end

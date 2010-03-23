class CreateTestResults < ActiveRecord::Migration
  def self.up
    create_table :test_results do |t|

      t.column :test_case_id, :integer
      
      t.column :test_run_id, :integer

      t.column :status, :string, :limit => 1

      t.column :notes, :text

    end
  end

  def self.down
    drop_table :test_results
  end
end

class CreateTestRuns < ActiveRecord::Migration
  def self.up
    create_table :test_runs do |t|

      t.column :project, :string

      t.column :iteration, :string

      t.column :run, :integer

      t.column :description, :text

    end
  end

  def self.down
    drop_table :test_runs
  end
end

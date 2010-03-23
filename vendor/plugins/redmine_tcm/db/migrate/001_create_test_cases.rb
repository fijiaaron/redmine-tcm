class CreateTestCases < ActiveRecord::Migration
  def self.up
    create_table :test_cases do |t|

      t.column :title, :string

      t.column :description, :text

    end
  end

  def self.down
    drop_table :test_cases
  end
end

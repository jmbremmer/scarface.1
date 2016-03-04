class CreateRunscopeTests < ActiveRecord::Migration
  def change
    create_table :runscope_tests do |t|
      t.string :name
      t.string :url

      t.timestamps
    end
  end
end

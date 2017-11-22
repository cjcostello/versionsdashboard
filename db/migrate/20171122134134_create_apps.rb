class CreateApps < ActiveRecord::Migration[5.1]
  def change
    create_table :apps do |t|
      t.string :name
      t.string :ip
      t.string :command

      t.timestamps
    end
  end
end

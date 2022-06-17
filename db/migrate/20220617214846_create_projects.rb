class CreateProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :projects, id: :uuid do |t|
      t.string :name
      t.references :account, null: false, foreign_key: true, type: :uuid

      t.timestamps
    end
  end
end

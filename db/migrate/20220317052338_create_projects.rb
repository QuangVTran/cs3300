class CreateProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :projects do |t|
      t.string :title
      t.text :body
      t.text :description
      t.string :slug

      t.timestamps
    end
    add_index :projects, :slug, unique: true
  end
end

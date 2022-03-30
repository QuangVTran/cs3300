class CreateProject2s < ActiveRecord::Migration[7.0]
  def change
    create_table :project2s do |t|
      t.string :title
      t.text :body
      t.text :description
      t.string :slug

      t.timestamps
    end
    add_index :project2s, :slug, unique: true
  end
end

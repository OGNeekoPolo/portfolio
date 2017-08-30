class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :title
      t.text :description
      t.string :image
      t.text :live_site
      t.text :source_code
      t.text :tools

      t.timestamps
    end
  end
end

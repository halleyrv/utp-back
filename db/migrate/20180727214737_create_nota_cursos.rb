class CreateNotaCursos < ActiveRecord::Migration[5.1]
  def change
    create_table :nota_cursos do |t|
      t.references :user, foreign_key: true
      t.integer :nota

      t.timestamps
    end
  end
end

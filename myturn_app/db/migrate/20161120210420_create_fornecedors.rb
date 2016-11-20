class CreateFornecedors < ActiveRecord::Migration[5.0]
  def change
    create_table :fornecedors do |t|
      t.string :razaosocial
      t.string :CNPJ

      t.timestamps
    end
  end
end

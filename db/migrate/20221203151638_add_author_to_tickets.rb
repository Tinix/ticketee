class AddAuthorToTickets < ActiveRecord::Migration[6.1]
  def change
    add_reference :tickets, :author, foreign_key: { to_table: :users }
  end
end

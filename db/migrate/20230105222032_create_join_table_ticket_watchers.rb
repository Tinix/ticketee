# frozen_string_literal: true

class CreateJoinTableTicketWatchers < ActiveRecord::Migration[6.1]
  def change
    create_join_table :tickets, :users, table_name: :ticket_watchers do |t|
      t.index %i[ticket_id user_id], unique: true
      t.index %i[user_id ticket_id]
    end
  end
end

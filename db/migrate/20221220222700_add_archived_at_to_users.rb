# frozen_string_literal: true

class AddArchivedAtToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :archived_at, :timestamp
  end
end

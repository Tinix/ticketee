# frozen_string_literal: true

class AddDefaultToStates < ActiveRecord::Migration[6.1]
  def change
    add_column :states, :default, :boolean, default: false
  end
end

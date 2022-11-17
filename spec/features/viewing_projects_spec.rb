# frozen_string_literal: true

require 'rails_helper'

RSpec.feature 'Users con view projects' do
  scenario 'with the project details' do
    project = FactoryBot.create(:project, name: 'Visual Studio Code')

    visit '/'
    click_link 'Visual Studio Code'
    expect(page.current_url).to eql project_url(project)
  end
end

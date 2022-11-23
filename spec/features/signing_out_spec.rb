# frozen_string_literal: true

# !/usr/bin/env ruby
#
# signing_out_spec.rb
# Copyright (C) 2022 tinix <tinix@archlinux>
#
# Distributed under terms of the MIT license.
#
require 'rails_helper'

RSpec.feature 'Signed-in users con sign out' do
  let!(:user) { FactoryBot.create(:user) }

  before do
    login_as(user)
  end

  scenario do
    visit '/'
    click_link 'Sign out'

    expect(page).to have_content 'Signed out successfully.'
  end
end

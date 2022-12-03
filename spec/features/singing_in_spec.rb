# frozen_string_literal: true

# !/usr/bin/env ruby
#
# singing_in_spec.rb
# Copyright (C) 2022 tinix <tinix@archlinux>
#
# Distributed under terms of the MIT license.
#

require 'rails_helper'

RSpec.feature 'Users can sign in' do
  let!(:user) { FactoryBot.create(:user) }

  scenario 'with valid credentials' do
    visit '/'
    click_link 'Sign in'
    fill_in 'Email', with: user.email
    fill_in 'Password', with: 'password'
    click_button 'Sign in'

    expect(page).to have_content 'Signed in successfully.'
    expect(page).to have_content "Signed in as #{user.email}"
  end
end

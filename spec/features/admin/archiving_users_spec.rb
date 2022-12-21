# frozen_string_literal: true

# !/usr/bin/env ruby
#
# archiving_users_spec.rb
# Copyright (C) 2022 tinix <tinix@archlinux>
#
# Distributed under terms of the MIT license.
#
require 'rails_helper'

RSpec.feature 'An admin can archives users' do
  let(:admin_user) { FactoryBot.create(:user, :admin) }
  let(:user) { FactoryBot.create(:user) }

  before do
    login_as(admin_user)
  end

  scenario 'successfully' do
    visit admin_user_path(user)
    click_link 'Archive User'

    expect(page).to have_content 'User has been archived'
    expect(page).not_to have_content user.email
  end

	scenario "but cannot archive themselves" do
		visit admin_user_path(admin_user)
		click_link "Archive User"
		expect(page).to have_content "You cannot archive yourself!"
	end
end

# !/usr/bin/env ruby
#
# signing_up_spec.rb
# Copyright (C) 2022 tinix <tinix@archlinux>
#
# Distributed under terms of the MIT license.
#
require "rails_helper"

RSpec.feature "Users can sign up" do
	scenario "when providing valid details" do

		visit "/"
		click_link "Sign up"
		fill_in "Email", with: "test@example.com"
		fill_in "Password", with: "password"
		fill_in "Password confirmation", with: "password"
		click_button "Sign up"

		expect(page).to have_content("You have signed up successfully.")
	end
end



# frozen_string_literal: true

#
# email_spec.rb
# Copyright (C) 2023 tinix <tinix@archlinux>
#
# Distributed under terms of the MIT license.
#
require 'email_spec'

RSpec.configure do |config|
  config.include EmailSpec::Helpers
  config.include EmailSpec::Matchers
end

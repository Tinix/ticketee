# frozen_string_literal: true

FactoryBot.define do
  factory :ticket do
    name { 'Example ticket' }
    description { 'An example ticket, nothing more' }
    project { nil }
  end
end

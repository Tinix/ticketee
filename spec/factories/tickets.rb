# frozen_string_literal: true

FactoryBot.define do
  factory :ticket do
    name { 'MyString' }
    description { 'MyText' }
    project { nil }
  end
end

# frozen_string_literal: true

FactoryBot.define do
  factory :comment do
    text { 'MyText' }
    ticket { nil }
    author { nil }
  end
end

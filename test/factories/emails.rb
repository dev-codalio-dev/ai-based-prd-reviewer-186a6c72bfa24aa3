# frozen_string_literal: true

FactoryBot.define do
  factory :email do
    subject { "MyString" }
    body { "MyText" }
    sender { "MyString" }
    recipient { "MyString" }
    read { false }
    user { nil }
    folder { nil }
  end
end

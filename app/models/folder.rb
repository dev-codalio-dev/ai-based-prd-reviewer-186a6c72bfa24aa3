# frozen_string_literal: true

class Folder < ApplicationRecord
  belongs_to :user
  has_many :emails, dependent: :destroy

  rhino_owner :user
  rhino_references [ :user ]

  validates :name, presence: true
  validates :name, uniqueness: { scope: :user_id }
end

# frozen_string_literal: true

class Label < ApplicationRecord
  belongs_to :user
  has_many :email_labels, dependent: :destroy
  has_many :emails, through: :email_labels

  rhino_owner :user
  rhino_references [ :user ]

  validates :name, presence: true
  validates :name, uniqueness: { scope: :user_id }
end

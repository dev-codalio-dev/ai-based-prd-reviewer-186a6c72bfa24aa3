# frozen_string_literal: true

class Email < ApplicationRecord
  belongs_to :user # The recipient/owner of the email
  belongs_to :folder

  has_many :email_labels, dependent: :destroy
  has_many :labels, through: :email_labels

  rhino_owner :user
  rhino_references [ :user, :folder ]

  validates :subject, presence: true
  validates :sender, presence: true
  validates :recipient, presence: true
  validates :body, presence: true
end

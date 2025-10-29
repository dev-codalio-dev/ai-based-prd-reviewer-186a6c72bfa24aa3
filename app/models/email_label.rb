# frozen_string_literal: true

class EmailLabel < ApplicationRecord
  belongs_to :email
  belongs_to :label

  rhino_owner :email
  rhino_references [ :email, :label ]

  validates :email_id, uniqueness: { scope: :label_id }
end

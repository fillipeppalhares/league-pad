# frozen_string_literal: true

class Champion < ApplicationRecord
  has_and_belongs_to_many :tags
end

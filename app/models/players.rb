# frozen_string_literal: true

class Player < ActiveRecord::Base
  validates :name, :status, :nickname, :position, presence: true
end

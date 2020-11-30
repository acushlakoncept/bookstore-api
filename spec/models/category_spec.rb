# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Category, type: :model do
  # Association test
  it { should have_many(:books) }

  # Validation tests
  it { should validate_presence_of(:name) }
  it { should validate_uniqueness_of(:name) }
end

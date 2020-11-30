require 'rails_helper'

RSpec.describe Category, type: :model do
  # Association test
  it { should belong_to(:book) }

  # Validation tests
  it { should validate_presence_of(:name) }
  it { should validate_uniqueness_of(:name) }
end

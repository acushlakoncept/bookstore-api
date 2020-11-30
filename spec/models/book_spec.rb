require 'rails_helper'

RSpec.describe Book, type: :model do
  # Association test
  it { should have_one(:category) }

  # Validation tests
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:author) }
end

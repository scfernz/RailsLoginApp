require 'rails_helper'

RSpec.describe PhoneNum, type: :model do
  it 'can be created' do
    expect { PhoneNum.new }.to_not raise_error
  end
end

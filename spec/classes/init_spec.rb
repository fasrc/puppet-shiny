require 'spec_helper'
describe 'rshiny' do

  context 'with default values for all parameters' do
    it { should contain_class('rshiny') }
  end
end

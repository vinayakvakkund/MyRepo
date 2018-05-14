require 'spec_helper'
describe 'myjenkins' do

  context 'with defaults for all parameters' do
    it { should contain_class('myjenkins') }
  end
end

require 'spec_helper'
describe 'linuxfw' do

  context 'with defaults for all parameters' do
    it { should contain_class('linuxfw') }
  end
end

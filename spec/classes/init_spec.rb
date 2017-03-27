require 'spec_helper'
describe 'screen' do
  let :facts do
    {
      :os => {
        'family' => 'Suse'
      }
    }
  end
  context 'with default values for all parameters' do
    it { should contain_class('screen') }
  end
end

require 'spec_helper'
describe 'screen' do

  context 'linux' do
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

    context 'compiles' do
      it { should compile }
    end
  end

  context 'windows' do
    let :facts do
      {
        :os => {
          'family' => 'windows'
        }
      }
    end
    context 'with default values for all parameters' do
      it { should contain_class('screen') }
    end

    # can't test file paths on windows:
    #   https://tickets.puppetlabs.com/browse/MODULES-4287
    #   https://github.com/rodjek/rspec-puppet/issues/192
    #   https://github.com/rodjek/rspec-puppet/issues/437
    # context 'compiles' do
    #   it { should compile }
    # end
  end
end

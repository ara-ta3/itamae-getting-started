require 'spec_helper'

describe package('php'), :if => os[:family] == 'redhat' do
  it { should be_installed }
end

describe command('php -v') do
  its(:stdout) { should match /5\.5\.*/ }
end

require 'spec_helper'

describe 'audit', :type => :class do
  on_supported_os.each do |os, facts|
    context "on #{os}" do
      let(:facts)  { facts }
      let(:params) { { :file => '/etc/passwd' } }

      it { is_expected.to compile.with_all_deps }
    end
  end
end

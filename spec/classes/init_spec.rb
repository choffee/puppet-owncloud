require 'spec_helper'

default_file_mode = '0444'

describe 'owncloud', :type => 'class' do
  # Setup default facts
  let(:facts) { {:operatingsystem => 'Ubuntu',
                 :ipaddress => '192.168.0.1',
                 :lsbdistcodename => 'precise'} }

  context 'Should work on Ubuntu with no settings' do
    let(:facts) { {:operatingsystem => 'Ubuntu', :ipaddress => '192.168.0.1'} }
    it {
      should compile
    }
  end
end

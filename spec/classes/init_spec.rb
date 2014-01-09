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
      should contain_package('owncloud')

      should contain_file('/var/log/owncloud').with({
        'ensure' => 'directory',
        'owner'  => 'tomcat6',
        'group'  => 'tomcat6',
        'mode'   => '0750',
      })

      should contain_file('/etc/logrotate.d/owncloud').with({
        'owner' => 'root',
        'group' => 'root',
        'mode' => '0444',
      })

      should contain_file('/etc/owncloud.conf')        .with_content(/some long string/)
    }
  end
end

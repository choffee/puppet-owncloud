require 'rubygems'
require 'puppetlabs_spec_helper/rake_tasks'
require 'ci/reporter/rake/rspec'

# rake lint
require 'puppet-lint/tasks/puppet-lint'

PuppetLint.configuration.ignore_paths = ["vendor/**/*.pp"]
#PuppetLint.configuration.send('disable_80chars')

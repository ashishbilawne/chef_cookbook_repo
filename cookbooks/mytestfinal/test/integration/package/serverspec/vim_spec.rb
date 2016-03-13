require 'spec_helper'

describe 'example service' do
  it 'installs nginx package' do
    expect(package 'nginx').to be_installed
  end

  it 'stops the default nginx service' do
    expect(service 'nginx').to_not be_running
    expect(service 'nginx').to_not be_enabled
  end

  it 'creates an nginx-example config file' do
    nginx_example_conf = file '/etc/nginx-example/nginx.conf'

    expect(nginx_example_conf).to be_a_file
    expect(nginx_example_conf.content).to match(/user www-data;/)
  end

  it 'starts & enables the example nginx service' do
    expect(service 'nginx-example').to be_running
    expect(service 'nginx-example').to be_enabled
  end
end
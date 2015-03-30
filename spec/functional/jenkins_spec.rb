describe package('jenkins') do
  it { should be_installed }
end

describe service('jenkins') do
  it { should be_enabled }
  it { should be_running }
end

describe port(8080) do
  it { should be_listening }
end

describe user('jenkins') do
  it { should exist }
end

describe file('/var/log/jenkins/jenkins.log') do
  it { should be_file }
end

describe file('/etc/default/jenkins') do
  it { should be_file }
end
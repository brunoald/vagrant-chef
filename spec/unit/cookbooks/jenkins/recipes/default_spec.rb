describe 'jenkins::default', :unit do
  let(:chef_run) { ChefSpec::SoloRunner.converge(described_recipe) }

  it 'installs jenkins' do
    expect(chef_run).to install_package('jenkins')
  end
end

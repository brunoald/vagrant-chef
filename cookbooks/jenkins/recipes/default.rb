execute 'apt-get-update' do
  command 'apt-get update'
end

package 'jenkins' do
  action :install
end

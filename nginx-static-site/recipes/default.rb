package 'nginx'

service 'nginx' do
    supports :reload => true
end

directory '/srv/mywebsite' do
    mode '0775'
    recursive true
end

template '/srv/mywebsite/index.html' do
    source 'index.html.erb'
end

template '/etc/nginx/conf.d/static-site.conf' do
    source 'static-site.conf.erb'
    notifies :reload, 'service[nginx]'
end

template '/etc/hosts' do
    source 'hosts.erb'
end

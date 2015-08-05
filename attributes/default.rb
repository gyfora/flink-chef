# flink-0.4-hadoop2.tgz
# flink-dist-0.4-hadoop2-yarn-uberjar.jar

include_attribute "kagent"
include_attribute "hadoop"


default[:flink][:user]                             = "flink"
default[:flink][:group]                            = node[:hadoop][:group]

default[:flink][:version]                          = "0.9.0" 
default[:flink][:hadoop_version]                   = "27"
default[:flink][:dir]                              = "/srv"
default[:flink][:home]                             = "#{node[:flink][:dir]}/flink-#{node[:flink][:version]}"
default[:flink][:url]                              = "http://apache.mirrors.spacedump.net/flink/flink-#{node[:flink][:version]}/#{node[:flink][:version]}-bin-hadoop#{node[:flink][:hadoop_version]}.tgz"
default[:flink][:checksum]                         = ""


default[:flink][:jobmanager][:rpc_port]            = 6123
default[:flink][:jobmanager][:web_port]            = 8081
default[:flink][:jobmanager][:heap_mbs]            = 256
default[:flink][:taskmanager][:heap_mbs]           = 512

default[:flink][:taskmanager][:num_taskslots]      = node[:cpu][:total]
default[:flink][:parallelization][:degree]         = node[:cpu][:total]
default[:flink][:webclient_port]                   = 8888
default[:flink][:taskmanager][:network_num_buffers]= 2048

default[:flink][:jobmanager][:public_ips]          = ['10.0.2.15']
default[:flink][:jobmanager][:private_ips]         = ['10.0.2.15']
default[:flink][:taskmanager][:public_ips]         = ['10.0.2.15']
default[:flink][:taskmanager][:private_ips]        = ['10.0.2.15']
default[:flink][:pid_dir]                          = "/tmp"

default[:flink][:jobmanager][:public_key]          = ""

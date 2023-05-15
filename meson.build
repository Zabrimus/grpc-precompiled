project('grpctest', 'cpp', 'c',
  version : '0.1',
  default_options : ['warning_level=1', 'c_std=c17', 'cpp_std=c++17'],
  meson_version: '>=0.63.0')

add_global_arguments(language : 'cpp')

#
# grpc
#
grpc_proj = subproject('grpc')
grpcpp_dep = grpc_proj.get_variable('grpcpp_dep')

incdir = include_directories('protos')

exe = executable('greeter-client', 'greeter_client.cc',
                 'protos/helloworld.pb.cc', 'protos/helloworld.grpc.pb.cc',
                 include_directories : incdir,
                 link_args: ['-pthread', '-Wl,--no-as-needed'],
                 install : false,
                 dependencies: [grpcpp_dep])

exe = executable('greeter-server', 'greeter_server.cc',
                 'protos/helloworld.pb.cc', 'protos/helloworld.grpc.pb.cc',
                 include_directories : incdir,
                 link_args: ['-pthread', '-Wl,--no-as-needed'],
                 install : false,
                 dependencies: [grpcpp_dep])
# Precompiled binaries for grpc/protobuf
Available for architectures x86_64, armhf, aarch64

See Releases

### See 
```
subproject/grpc.wrap
subproject/packagefiles/grpc-v1.53.1
```

### Compile
``` 
meson setup build
cd build
meson compile
```

### Start
```
user@machine:~/grpc-precompiled/build$ ./greeter-server
Server listening on 0.0.0.0:50051
```

```
user@machine:~/grpc-precompiled/build$ ./greeter-client
Greeter received: Hello world
```
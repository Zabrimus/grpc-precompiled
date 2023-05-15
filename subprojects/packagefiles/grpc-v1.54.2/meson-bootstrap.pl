#!/usr/bin/perl -w

use strict;
use warnings FATAL => 'all';
use Clone qw(clone);

my %finished;

sub fixdep {
    my $param = $_[0];
    $param =~ s/-/_/;
    $param =~ s/\+\+/pp/;

    return $param;
}

sub search_min_dep {
    my $size = $_[0];
    my $loop = $_[1];

    foreach my $element (keys %finished) {
        my @d = @{$finished{$element}};

        if (@{$finished{$element}} == $size) {
            my $lib = substr($element, 0, -3);
            my $libfixed = fixdep($lib);

            if ($loop == 0 && !-f "build-x86_64/lib/lib${lib}" . ".a") {
                next;
            }

            print($libfixed . "_dep = declare_dependency(\n");
            print("   dependencies : [");

            if (-f "build-x86_64/lib/lib${lib}" . ".a") {
                print("cc.find_library(\'${lib}\', dirs : meson.current_source_dir() + \'/build-x86_64/lib\'), ");
            }

            for my $deps (@d) {
                print (fixdep($deps) ."_dep, ") unless $libfixed eq fixdep($deps);
            }

            print("],\n");
            print("   include_directories : 'build-x86_64/include')\n\n");

            delete($finished{$element});
        }
    }

    if ($loop == 0) {
        search_min_dep($size, 1);
    }
}

# collect all  files
opendir my $dir, "build-x86_64/lib/pkgconfig.BUILD_VERSION" or die "Cannot open directory: $!";
my @files = readdir $dir;
closedir $dir;

# collect all dependencies
foreach (@files) {
    my $pc = substr $_, 0, -3;
    my $result = `PKG_CONFIG_PATH=build-x86_64/lib/pkgconfig.BUILD_VERSION pkg-config --libs $pc`;
    chop($result);

    my @fields = split / /, $result;
    @fields = grep {/^-l/} @fields;

    if (@fields) {
        foreach my $item (@fields) {
            $item = substr $item, 2
        }

        $finished{$_} = \@fields;
    }
}

# add additional dependencies
push(@{$finished{'grpc.pc'}}, 'upb');
push(@{$finished{'grpc.pc'}}, 'address_sorting');
push(@{$finished{'grpc.pc'}}, 're2');
push(@{$finished{'grpc.pc'}}, 'z');
push(@{$finished{'grpc.pc'}}, 'libcares');
push(@{$finished{'grpc.pc'}}, 'ssl');
push(@{$finished{'grpc.pc'}}, 'protobuf');

push(@{$finished{'grpc_unsecure.pc'}}, 'upb');
push(@{$finished{'grpc_unsecure.pc'}}, 'address_sorting');
push(@{$finished{'grpc_unsecure.pc'}}, 're2');
push(@{$finished{'grpc_unsecure.pc'}}, 'z');
push(@{$finished{'grpc_unsecure.pc'}}, 'libcares');
push(@{$finished{'grpc_unsecure.pc'}}, 'protobuf');

push(@{$finished{'protobuf.pc'}}, 'protobuf-lite');

# hard coded dependencies
print("rt_dep = cc.find_library('rt')\n\n");
print("cares_dep = cc.find_library(\'cares\', dirs : meson.current_source_dir() + \'/build-x86_64/lib\')\n\n");
print("upb_dep = cc.find_library(\'upb\', dirs : meson.current_source_dir() + \'/build-x86_64/lib\')\n\n");
print("re2_dep = cc.find_library(\'re2\', dirs : meson.current_source_dir() + \'/build-x86_64/lib\')\n\n");
print("z_dep = cc.find_library(\'z\', dirs : meson.current_source_dir() + \'/build-x86_64/lib\')\n\n");
print("address_sorting_dep = cc.find_library(\'address_sorting\', dirs : meson.current_source_dir() + \'/build-x86_64/lib\')\n\n");
print("ssl_dep = declare_dependency(\n");
print("    dependencies : [cc.find_library(\'ssl\', static:true), cc.find_library(\'crypto\', static:true), cc.find_library(\'dl\', static:true) ])\n\n");

my $size = 0;
while (%finished > 0) {
    search_min_dep($size, 0);
    $size += 1;
}

foreach my $element (keys %finished) {
    print "FINI: $element --> $finished{$element}\n";
}

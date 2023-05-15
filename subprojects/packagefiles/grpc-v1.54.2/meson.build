project('grpc', 'c')

run_command('prepare-grpc.sh', meson.current_source_dir() + '/build-x86_64', 'v1.54.2', 'x86_64', check:true)
cc = meson.get_compiler('c')

rt_dep = cc.find_library('rt')

cares_dep = cc.find_library('cares', dirs : meson.current_source_dir() + '/build-x86_64/lib')

upb_dep = cc.find_library('upb', dirs : meson.current_source_dir() + '/build-x86_64/lib')

re2_dep = cc.find_library('re2', dirs : meson.current_source_dir() + '/build-x86_64/lib')

z_dep = cc.find_library('z', dirs : meson.current_source_dir() + '/build-x86_64/lib')

address_sorting_dep = cc.find_library('address_sorting', dirs : meson.current_source_dir() + '/build-x86_64/lib')

ssl_dep = declare_dependency(
    dependencies : [cc.find_library('ssl', static:true), cc.find_library('crypto', static:true), cc.find_library('dl', static:true) ])

absl_log_severity_dep = declare_dependency(
   dependencies : [cc.find_library('absl_log_severity', dirs : meson.current_source_dir() + '/build-x86_64/lib'), ],
   include_directories : 'build-x86_64/include')

absl_int128_dep = declare_dependency(
   dependencies : [cc.find_library('absl_int128', dirs : meson.current_source_dir() + '/build-x86_64/lib'), ],
   include_directories : 'build-x86_64/include')

protobuf_lite_dep = declare_dependency(
   dependencies : [cc.find_library('protobuf-lite', dirs : meson.current_source_dir() + '/build-x86_64/lib'), ],
   include_directories : 'build-x86_64/include')

absl_time_zone_dep = declare_dependency(
   dependencies : [cc.find_library('absl_time_zone', dirs : meson.current_source_dir() + '/build-x86_64/lib'), ],
   include_directories : 'build-x86_64/include')

absl_flags_commandlineflag_internal_dep = declare_dependency(
   dependencies : [cc.find_library('absl_flags_commandlineflag_internal', dirs : meson.current_source_dir() + '/build-x86_64/lib'), ],
   include_directories : 'build-x86_64/include')

absl_leak_check_dep = declare_dependency(
   dependencies : [cc.find_library('absl_leak_check', dirs : meson.current_source_dir() + '/build-x86_64/lib'), ],
   include_directories : 'build-x86_64/include')

absl_random_seed_gen_exception_dep = declare_dependency(
   dependencies : [cc.find_library('absl_random_seed_gen_exception', dirs : meson.current_source_dir() + '/build-x86_64/lib'), ],
   include_directories : 'build-x86_64/include')

absl_log_internal_nullguard_dep = declare_dependency(
   dependencies : [cc.find_library('absl_log_internal_nullguard', dirs : meson.current_source_dir() + '/build-x86_64/lib'), ],
   include_directories : 'build-x86_64/include')

absl_spinlock_wait_dep = declare_dependency(
   dependencies : [cc.find_library('absl_spinlock_wait', dirs : meson.current_source_dir() + '/build-x86_64/lib'), ],
   include_directories : 'build-x86_64/include')

absl_random_internal_platform_dep = declare_dependency(
   dependencies : [cc.find_library('absl_random_internal_platform', dirs : meson.current_source_dir() + '/build-x86_64/lib'), ],
   include_directories : 'build-x86_64/include')

absl_civil_time_dep = declare_dependency(
   dependencies : [cc.find_library('absl_civil_time', dirs : meson.current_source_dir() + '/build-x86_64/lib'), ],
   include_directories : 'build-x86_64/include')

absl_exponential_biased_dep = declare_dependency(
   dependencies : [cc.find_library('absl_exponential_biased', dirs : meson.current_source_dir() + '/build-x86_64/lib'), ],
   include_directories : 'build-x86_64/include')

absl_strerror_dep = declare_dependency(
   dependencies : [cc.find_library('absl_strerror', dirs : meson.current_source_dir() + '/build-x86_64/lib'), ],
   include_directories : 'build-x86_64/include')

absl_numeric_dep = declare_dependency(
   dependencies : [absl_int128_dep, ],
   include_directories : 'build-x86_64/include')

absl_random_internal_wide_multiply_dep = declare_dependency(
   dependencies : [absl_int128_dep, ],
   include_directories : 'build-x86_64/include')

absl_random_internal_pcg_engine_dep = declare_dependency(
   dependencies : [absl_int128_dep, ],
   include_directories : 'build-x86_64/include')

libcares_dep = declare_dependency(
   dependencies : [cares_dep, ],
   include_directories : 'build-x86_64/include')

absl_random_internal_iostream_state_saver_dep = declare_dependency(
   dependencies : [absl_int128_dep, ],
   include_directories : 'build-x86_64/include')

absl_periodic_sampler_dep = declare_dependency(
   dependencies : [cc.find_library('absl_periodic_sampler', dirs : meson.current_source_dir() + '/build-x86_64/lib'), absl_exponential_biased_dep, ],
   include_directories : 'build-x86_64/include')

absl_random_internal_randen_slow_dep = declare_dependency(
   dependencies : [cc.find_library('absl_random_internal_randen_slow', dirs : meson.current_source_dir() + '/build-x86_64/lib'), absl_random_internal_platform_dep, ],
   include_directories : 'build-x86_64/include')

absl_random_internal_randen_hwaes_impl_dep = declare_dependency(
   dependencies : [cc.find_library('absl_random_internal_randen_hwaes_impl', dirs : meson.current_source_dir() + '/build-x86_64/lib'), absl_random_internal_platform_dep, ],
   include_directories : 'build-x86_64/include')

protobuf_dep = declare_dependency(
   dependencies : [cc.find_library('protobuf', dirs : meson.current_source_dir() + '/build-x86_64/lib'), protobuf_lite_dep, ],
   include_directories : 'build-x86_64/include')

absl_raw_logging_internal_dep = declare_dependency(
   dependencies : [cc.find_library('absl_raw_logging_internal', dirs : meson.current_source_dir() + '/build-x86_64/lib'), absl_log_severity_dep, ],
   include_directories : 'build-x86_64/include')

absl_debugging_internal_dep = declare_dependency(
   dependencies : [cc.find_library('absl_debugging_internal', dirs : meson.current_source_dir() + '/build-x86_64/lib'), absl_raw_logging_internal_dep, absl_log_severity_dep, ],
   include_directories : 'build-x86_64/include')

absl_bad_variant_access_dep = declare_dependency(
   dependencies : [cc.find_library('absl_bad_variant_access', dirs : meson.current_source_dir() + '/build-x86_64/lib'), absl_raw_logging_internal_dep, absl_log_severity_dep, ],
   include_directories : 'build-x86_64/include')

absl_random_internal_randen_hwaes_dep = declare_dependency(
   dependencies : [cc.find_library('absl_random_internal_randen_hwaes', dirs : meson.current_source_dir() + '/build-x86_64/lib'), absl_random_internal_randen_hwaes_impl_dep, absl_random_internal_platform_dep, ],
   include_directories : 'build-x86_64/include')

absl_scoped_set_env_dep = declare_dependency(
   dependencies : [cc.find_library('absl_scoped_set_env', dirs : meson.current_source_dir() + '/build-x86_64/lib'), absl_raw_logging_internal_dep, absl_log_severity_dep, ],
   include_directories : 'build-x86_64/include')

absl_throw_delegate_dep = declare_dependency(
   dependencies : [cc.find_library('absl_throw_delegate', dirs : meson.current_source_dir() + '/build-x86_64/lib'), absl_raw_logging_internal_dep, absl_log_severity_dep, ],
   include_directories : 'build-x86_64/include')

absl_bad_optional_access_dep = declare_dependency(
   dependencies : [cc.find_library('absl_bad_optional_access', dirs : meson.current_source_dir() + '/build-x86_64/lib'), absl_raw_logging_internal_dep, absl_log_severity_dep, ],
   include_directories : 'build-x86_64/include')

absl_bad_any_cast_impl_dep = declare_dependency(
   dependencies : [cc.find_library('absl_bad_any_cast_impl', dirs : meson.current_source_dir() + '/build-x86_64/lib'), absl_raw_logging_internal_dep, absl_log_severity_dep, ],
   include_directories : 'build-x86_64/include')

absl_span_dep = declare_dependency(
   dependencies : [absl_throw_delegate_dep, absl_raw_logging_internal_dep, absl_log_severity_dep, ],
   include_directories : 'build-x86_64/include')

absl_optional_dep = declare_dependency(
   dependencies : [absl_bad_optional_access_dep, absl_raw_logging_internal_dep, absl_log_severity_dep, ],
   include_directories : 'build-x86_64/include')

absl_inlined_vector_internal_dep = declare_dependency(
   dependencies : [absl_throw_delegate_dep, absl_raw_logging_internal_dep, absl_log_severity_dep, ],
   include_directories : 'build-x86_64/include')

absl_variant_dep = declare_dependency(
   dependencies : [absl_bad_variant_access_dep, absl_raw_logging_internal_dep, absl_log_severity_dep, ],
   include_directories : 'build-x86_64/include')

absl_bad_any_cast_dep = declare_dependency(
   dependencies : [absl_bad_any_cast_impl_dep, absl_raw_logging_internal_dep, absl_log_severity_dep, ],
   include_directories : 'build-x86_64/include')

absl_inlined_vector_dep = declare_dependency(
   dependencies : [absl_throw_delegate_dep, absl_raw_logging_internal_dep, absl_log_severity_dep, ],
   include_directories : 'build-x86_64/include')

absl_random_internal_mock_helpers_dep = declare_dependency(
   dependencies : [absl_bad_optional_access_dep, absl_raw_logging_internal_dep, absl_log_severity_dep, ],
   include_directories : 'build-x86_64/include')

absl_any_dep = declare_dependency(
   dependencies : [absl_bad_any_cast_impl_dep, absl_raw_logging_internal_dep, absl_log_severity_dep, ],
   include_directories : 'build-x86_64/include')

absl_fixed_array_dep = declare_dependency(
   dependencies : [absl_throw_delegate_dep, absl_raw_logging_internal_dep, absl_log_severity_dep, ],
   include_directories : 'build-x86_64/include')

absl_cordz_functions_dep = declare_dependency(
   dependencies : [cc.find_library('absl_cordz_functions', dirs : meson.current_source_dir() + '/build-x86_64/lib'), absl_exponential_biased_dep, absl_raw_logging_internal_dep, absl_log_severity_dep, ],
   include_directories : 'build-x86_64/include')

absl_stacktrace_dep = declare_dependency(
   dependencies : [cc.find_library('absl_stacktrace', dirs : meson.current_source_dir() + '/build-x86_64/lib'), absl_debugging_internal_dep, absl_raw_logging_internal_dep, absl_log_severity_dep, ],
   include_directories : 'build-x86_64/include')

absl_base_dep = declare_dependency(
   dependencies : [cc.find_library('absl_base', dirs : meson.current_source_dir() + '/build-x86_64/lib'), rt_dep, absl_raw_logging_internal_dep, absl_log_severity_dep, absl_spinlock_wait_dep, ],
   include_directories : 'build-x86_64/include')

absl_random_internal_randen_dep = declare_dependency(
   dependencies : [cc.find_library('absl_random_internal_randen', dirs : meson.current_source_dir() + '/build-x86_64/lib'), absl_random_internal_randen_hwaes_dep, absl_random_internal_randen_hwaes_impl_dep, absl_random_internal_randen_slow_dep, absl_random_internal_platform_dep, ],
   include_directories : 'build-x86_64/include')

absl_debugging_dep = declare_dependency(
   dependencies : [absl_stacktrace_dep, absl_debugging_internal_dep, absl_raw_logging_internal_dep, absl_log_severity_dep, absl_leak_check_dep, ],
   include_directories : 'build-x86_64/include')

absl_endian_dep = declare_dependency(
   dependencies : [rt_dep, absl_base_dep, absl_raw_logging_internal_dep, absl_log_severity_dep, absl_spinlock_wait_dep, ],
   include_directories : 'build-x86_64/include')

absl_strings_internal_dep = declare_dependency(
   dependencies : [cc.find_library('absl_strings_internal', dirs : meson.current_source_dir() + '/build-x86_64/lib'), rt_dep, absl_base_dep, absl_spinlock_wait_dep, absl_raw_logging_internal_dep, absl_log_severity_dep, ],
   include_directories : 'build-x86_64/include')

absl_crc_cpu_detect_dep = declare_dependency(
   dependencies : [cc.find_library('absl_crc_cpu_detect', dirs : meson.current_source_dir() + '/build-x86_64/lib'), rt_dep, absl_base_dep, absl_raw_logging_internal_dep, absl_log_severity_dep, absl_spinlock_wait_dep, ],
   include_directories : 'build-x86_64/include')

absl_demangle_internal_dep = declare_dependency(
   dependencies : [cc.find_library('absl_demangle_internal', dirs : meson.current_source_dir() + '/build-x86_64/lib'), rt_dep, absl_base_dep, absl_raw_logging_internal_dep, absl_log_severity_dep, absl_spinlock_wait_dep, ],
   include_directories : 'build-x86_64/include')

absl_log_internal_conditions_dep = declare_dependency(
   dependencies : [cc.find_library('absl_log_internal_conditions', dirs : meson.current_source_dir() + '/build-x86_64/lib'), rt_dep, absl_base_dep, absl_raw_logging_internal_dep, absl_log_severity_dep, absl_spinlock_wait_dep, ],
   include_directories : 'build-x86_64/include')

absl_malloc_internal_dep = declare_dependency(
   dependencies : [cc.find_library('absl_malloc_internal', dirs : meson.current_source_dir() + '/build-x86_64/lib'), rt_dep, absl_base_dep, absl_spinlock_wait_dep, absl_raw_logging_internal_dep, absl_log_severity_dep, ],
   include_directories : 'build-x86_64/include')

absl_city_dep = declare_dependency(
   dependencies : [cc.find_library('absl_city', dirs : meson.current_source_dir() + '/build-x86_64/lib'), rt_dep, absl_base_dep, absl_raw_logging_internal_dep, absl_log_severity_dep, absl_spinlock_wait_dep, ],
   include_directories : 'build-x86_64/include')

absl_crc_internal_dep = declare_dependency(
   dependencies : [cc.find_library('absl_crc_internal', dirs : meson.current_source_dir() + '/build-x86_64/lib'), absl_crc_cpu_detect_dep, rt_dep, absl_base_dep, absl_spinlock_wait_dep, absl_raw_logging_internal_dep, absl_log_severity_dep, ],
   include_directories : 'build-x86_64/include')

absl_low_level_hash_dep = declare_dependency(
   dependencies : [cc.find_library('absl_low_level_hash', dirs : meson.current_source_dir() + '/build-x86_64/lib'), rt_dep, absl_base_dep, absl_raw_logging_internal_dep, absl_log_severity_dep, absl_spinlock_wait_dep, absl_int128_dep, ],
   include_directories : 'build-x86_64/include')

absl_graphcycles_internal_dep = declare_dependency(
   dependencies : [cc.find_library('absl_graphcycles_internal', dirs : meson.current_source_dir() + '/build-x86_64/lib'), absl_malloc_internal_dep, rt_dep, absl_base_dep, absl_spinlock_wait_dep, absl_raw_logging_internal_dep, absl_log_severity_dep, ],
   include_directories : 'build-x86_64/include')

absl_strings_dep = declare_dependency(
   dependencies : [cc.find_library('absl_strings', dirs : meson.current_source_dir() + '/build-x86_64/lib'), absl_strings_internal_dep, rt_dep, absl_base_dep, absl_spinlock_wait_dep, absl_int128_dep, absl_throw_delegate_dep, absl_raw_logging_internal_dep, absl_log_severity_dep, ],
   include_directories : 'build-x86_64/include')

absl_layout_dep = declare_dependency(
   dependencies : [absl_strings_dep, absl_strings_internal_dep, rt_dep, absl_base_dep, absl_spinlock_wait_dep, absl_int128_dep, absl_throw_delegate_dep, absl_raw_logging_internal_dep, absl_log_severity_dep, ],
   include_directories : 'build-x86_64/include')

absl_log_internal_append_truncated_dep = declare_dependency(
   dependencies : [absl_strings_dep, absl_strings_internal_dep, rt_dep, absl_base_dep, absl_spinlock_wait_dep, absl_int128_dep, absl_throw_delegate_dep, absl_raw_logging_internal_dep, absl_log_severity_dep, ],
   include_directories : 'build-x86_64/include')

absl_flags_path_util_dep = declare_dependency(
   dependencies : [absl_strings_dep, absl_strings_internal_dep, rt_dep, absl_base_dep, absl_spinlock_wait_dep, absl_int128_dep, absl_throw_delegate_dep, absl_raw_logging_internal_dep, absl_log_severity_dep, ],
   include_directories : 'build-x86_64/include')

absl_log_internal_nullstream_dep = declare_dependency(
   dependencies : [absl_strings_dep, absl_strings_internal_dep, rt_dep, absl_base_dep, absl_spinlock_wait_dep, absl_int128_dep, absl_throw_delegate_dep, absl_raw_logging_internal_dep, absl_log_severity_dep, ],
   include_directories : 'build-x86_64/include')

absl_random_distributions_dep = declare_dependency(
   dependencies : [cc.find_library('absl_random_distributions', dirs : meson.current_source_dir() + '/build-x86_64/lib'), absl_strings_dep, absl_strings_internal_dep, rt_dep, absl_base_dep, absl_spinlock_wait_dep, absl_int128_dep, absl_throw_delegate_dep, absl_raw_logging_internal_dep, absl_log_severity_dep, ],
   include_directories : 'build-x86_64/include')

absl_log_internal_proto_dep = declare_dependency(
   dependencies : [cc.find_library('absl_log_internal_proto', dirs : meson.current_source_dir() + '/build-x86_64/lib'), absl_strings_dep, absl_strings_internal_dep, rt_dep, absl_base_dep, absl_spinlock_wait_dep, absl_int128_dep, absl_throw_delegate_dep, absl_raw_logging_internal_dep, absl_log_severity_dep, ],
   include_directories : 'build-x86_64/include')

absl_str_format_internal_dep = declare_dependency(
   dependencies : [cc.find_library('absl_str_format_internal', dirs : meson.current_source_dir() + '/build-x86_64/lib'), absl_strings_dep, absl_strings_internal_dep, rt_dep, absl_base_dep, absl_spinlock_wait_dep, absl_int128_dep, absl_throw_delegate_dep, absl_raw_logging_internal_dep, absl_log_severity_dep, ],
   include_directories : 'build-x86_64/include')

absl_str_format_dep = declare_dependency(
   dependencies : [absl_str_format_internal_dep, absl_strings_dep, absl_strings_internal_dep, rt_dep, absl_base_dep, absl_spinlock_wait_dep, absl_int128_dep, absl_throw_delegate_dep, absl_raw_logging_internal_dep, absl_log_severity_dep, ],
   include_directories : 'build-x86_64/include')

absl_random_internal_distribution_test_util_dep = declare_dependency(
   dependencies : [cc.find_library('absl_random_internal_distribution_test_util', dirs : meson.current_source_dir() + '/build-x86_64/lib'), absl_str_format_internal_dep, absl_strings_dep, absl_strings_internal_dep, rt_dep, absl_base_dep, absl_spinlock_wait_dep, absl_int128_dep, absl_throw_delegate_dep, absl_raw_logging_internal_dep, absl_log_severity_dep, ],
   include_directories : 'build-x86_64/include')

absl_random_internal_seed_material_dep = declare_dependency(
   dependencies : [cc.find_library('absl_random_internal_seed_material', dirs : meson.current_source_dir() + '/build-x86_64/lib'), absl_bad_optional_access_dep, absl_strings_dep, absl_strings_internal_dep, rt_dep, absl_base_dep, absl_spinlock_wait_dep, absl_int128_dep, absl_throw_delegate_dep, absl_raw_logging_internal_dep, absl_log_severity_dep, ],
   include_directories : 'build-x86_64/include')

absl_random_internal_randen_engine_dep = declare_dependency(
   dependencies : [rt_dep, absl_base_dep, absl_spinlock_wait_dep, absl_int128_dep, absl_random_internal_randen_dep, absl_random_internal_randen_hwaes_dep, absl_random_internal_randen_hwaes_impl_dep, absl_random_internal_randen_slow_dep, absl_random_internal_platform_dep, absl_raw_logging_internal_dep, absl_log_severity_dep, ],
   include_directories : 'build-x86_64/include')

absl_random_internal_salted_seed_seq_dep = declare_dependency(
   dependencies : [absl_random_internal_seed_material_dep, absl_bad_optional_access_dep, absl_strings_dep, absl_strings_internal_dep, rt_dep, absl_base_dep, absl_spinlock_wait_dep, absl_int128_dep, absl_throw_delegate_dep, absl_raw_logging_internal_dep, absl_log_severity_dep, ],
   include_directories : 'build-x86_64/include')

absl_flags_commandlineflag_dep = declare_dependency(
   dependencies : [cc.find_library('absl_flags_commandlineflag', dirs : meson.current_source_dir() + '/build-x86_64/lib'), absl_flags_commandlineflag_internal_dep, absl_bad_optional_access_dep, absl_strings_dep, absl_strings_internal_dep, rt_dep, absl_base_dep, absl_spinlock_wait_dep, absl_int128_dep, absl_throw_delegate_dep, absl_raw_logging_internal_dep, absl_log_severity_dep, ],
   include_directories : 'build-x86_64/include')

absl_flags_marshalling_dep = declare_dependency(
   dependencies : [cc.find_library('absl_flags_marshalling', dirs : meson.current_source_dir() + '/build-x86_64/lib'), absl_bad_optional_access_dep, absl_str_format_internal_dep, absl_strings_dep, absl_strings_internal_dep, rt_dep, absl_base_dep, absl_spinlock_wait_dep, absl_int128_dep, absl_throw_delegate_dep, absl_raw_logging_internal_dep, absl_log_severity_dep, ],
   include_directories : 'build-x86_64/include')

absl_time_dep = declare_dependency(
   dependencies : [cc.find_library('absl_time', dirs : meson.current_source_dir() + '/build-x86_64/lib'), absl_civil_time_dep, absl_strings_dep, absl_strings_internal_dep, rt_dep, absl_base_dep, absl_spinlock_wait_dep, absl_int128_dep, absl_throw_delegate_dep, absl_raw_logging_internal_dep, absl_log_severity_dep, absl_time_zone_dep, ],
   include_directories : 'build-x86_64/include')

absl_crc32c_dep = declare_dependency(
   dependencies : [cc.find_library('absl_crc32c', dirs : meson.current_source_dir() + '/build-x86_64/lib'), absl_crc_internal_dep, absl_crc_cpu_detect_dep, absl_strings_dep, absl_strings_internal_dep, rt_dep, absl_base_dep, absl_spinlock_wait_dep, absl_int128_dep, absl_throw_delegate_dep, absl_raw_logging_internal_dep, absl_log_severity_dep, ],
   include_directories : 'build-x86_64/include')

absl_kernel_timeout_internal_dep = declare_dependency(
   dependencies : [absl_time_dep, absl_civil_time_dep, absl_strings_dep, absl_strings_internal_dep, rt_dep, absl_base_dep, absl_spinlock_wait_dep, absl_int128_dep, absl_throw_delegate_dep, absl_raw_logging_internal_dep, absl_log_severity_dep, absl_time_zone_dep, ],
   include_directories : 'build-x86_64/include')

absl_log_internal_globals_dep = declare_dependency(
   dependencies : [cc.find_library('absl_log_internal_globals', dirs : meson.current_source_dir() + '/build-x86_64/lib'), absl_time_dep, absl_civil_time_dep, absl_strings_dep, absl_strings_internal_dep, rt_dep, absl_base_dep, absl_spinlock_wait_dep, absl_int128_dep, absl_throw_delegate_dep, absl_raw_logging_internal_dep, absl_log_severity_dep, absl_time_zone_dep, ],
   include_directories : 'build-x86_64/include')

absl_log_entry_dep = declare_dependency(
   dependencies : [cc.find_library('absl_log_entry', dirs : meson.current_source_dir() + '/build-x86_64/lib'), absl_time_dep, absl_civil_time_dep, absl_strings_dep, absl_strings_internal_dep, rt_dep, absl_base_dep, absl_spinlock_wait_dep, absl_int128_dep, absl_throw_delegate_dep, absl_raw_logging_internal_dep, absl_log_severity_dep, absl_time_zone_dep, ],
   include_directories : 'build-x86_64/include')

absl_crc_cord_state_dep = declare_dependency(
   dependencies : [cc.find_library('absl_crc_cord_state', dirs : meson.current_source_dir() + '/build-x86_64/lib'), absl_crc32c_dep, absl_crc_internal_dep, absl_crc_cpu_detect_dep, absl_strings_dep, absl_strings_internal_dep, rt_dep, absl_base_dep, absl_spinlock_wait_dep, absl_int128_dep, absl_throw_delegate_dep, absl_raw_logging_internal_dep, absl_log_severity_dep, ],
   include_directories : 'build-x86_64/include')

absl_symbolize_dep = declare_dependency(
   dependencies : [cc.find_library('absl_symbolize', dirs : meson.current_source_dir() + '/build-x86_64/lib'), absl_debugging_internal_dep, absl_demangle_internal_dep, absl_malloc_internal_dep, absl_strings_dep, absl_strings_internal_dep, rt_dep, absl_base_dep, absl_spinlock_wait_dep, absl_int128_dep, absl_throw_delegate_dep, absl_raw_logging_internal_dep, absl_log_severity_dep, ],
   include_directories : 'build-x86_64/include')

absl_flags_private_handle_accessor_dep = declare_dependency(
   dependencies : [cc.find_library('absl_flags_private_handle_accessor', dirs : meson.current_source_dir() + '/build-x86_64/lib'), absl_flags_commandlineflag_dep, absl_bad_optional_access_dep, absl_flags_commandlineflag_internal_dep, absl_strings_dep, absl_strings_internal_dep, rt_dep, absl_base_dep, absl_spinlock_wait_dep, absl_int128_dep, absl_throw_delegate_dep, absl_raw_logging_internal_dep, absl_log_severity_dep, ],
   include_directories : 'build-x86_64/include')

absl_cord_internal_dep = declare_dependency(
   dependencies : [cc.find_library('absl_cord_internal', dirs : meson.current_source_dir() + '/build-x86_64/lib'), absl_crc_cord_state_dep, absl_crc32c_dep, absl_crc_internal_dep, absl_crc_cpu_detect_dep, absl_strings_dep, absl_strings_internal_dep, rt_dep, absl_base_dep, absl_spinlock_wait_dep, absl_int128_dep, absl_throw_delegate_dep, absl_raw_logging_internal_dep, absl_log_severity_dep, ],
   include_directories : 'build-x86_64/include')

absl_hash_dep = declare_dependency(
   dependencies : [cc.find_library('absl_hash', dirs : meson.current_source_dir() + '/build-x86_64/lib'), absl_city_dep, absl_strings_dep, absl_strings_internal_dep, absl_throw_delegate_dep, absl_bad_optional_access_dep, absl_bad_variant_access_dep, absl_low_level_hash_dep, rt_dep, absl_base_dep, absl_raw_logging_internal_dep, absl_log_severity_dep, absl_spinlock_wait_dep, absl_int128_dep, ],
   include_directories : 'build-x86_64/include')

absl_log_sink_dep = declare_dependency(
   dependencies : [cc.find_library('absl_log_sink', dirs : meson.current_source_dir() + '/build-x86_64/lib'), absl_log_entry_dep, absl_time_dep, absl_civil_time_dep, absl_strings_dep, absl_strings_internal_dep, rt_dep, absl_base_dep, absl_spinlock_wait_dep, absl_int128_dep, absl_throw_delegate_dep, absl_raw_logging_internal_dep, absl_log_severity_dep, absl_time_zone_dep, ],
   include_directories : 'build-x86_64/include')

absl_log_internal_format_dep = declare_dependency(
   dependencies : [cc.find_library('absl_log_internal_format', dirs : meson.current_source_dir() + '/build-x86_64/lib'), absl_log_internal_globals_dep, absl_str_format_internal_dep, absl_time_dep, absl_civil_time_dep, absl_strings_dep, absl_strings_internal_dep, rt_dep, absl_base_dep, absl_spinlock_wait_dep, absl_int128_dep, absl_time_zone_dep, absl_throw_delegate_dep, absl_raw_logging_internal_dep, absl_log_severity_dep, ],
   include_directories : 'build-x86_64/include')

absl_log_globals_dep = declare_dependency(
   dependencies : [cc.find_library('absl_log_globals', dirs : meson.current_source_dir() + '/build-x86_64/lib'), absl_hash_dep, absl_city_dep, absl_bad_optional_access_dep, absl_bad_variant_access_dep, absl_low_level_hash_dep, absl_strings_dep, absl_strings_internal_dep, rt_dep, absl_base_dep, absl_spinlock_wait_dep, absl_int128_dep, absl_throw_delegate_dep, absl_raw_logging_internal_dep, absl_log_severity_dep, ],
   include_directories : 'build-x86_64/include')

absl_examine_stack_dep = declare_dependency(
   dependencies : [cc.find_library('absl_examine_stack', dirs : meson.current_source_dir() + '/build-x86_64/lib'), absl_stacktrace_dep, absl_symbolize_dep, absl_debugging_internal_dep, absl_demangle_internal_dep, absl_malloc_internal_dep, absl_strings_dep, absl_strings_internal_dep, rt_dep, absl_base_dep, absl_spinlock_wait_dep, absl_int128_dep, absl_throw_delegate_dep, absl_raw_logging_internal_dep, absl_log_severity_dep, ],
   include_directories : 'build-x86_64/include')

absl_failure_signal_handler_dep = declare_dependency(
   dependencies : [cc.find_library('absl_failure_signal_handler', dirs : meson.current_source_dir() + '/build-x86_64/lib'), absl_examine_stack_dep, absl_symbolize_dep, absl_demangle_internal_dep, absl_malloc_internal_dep, absl_strings_dep, absl_strings_internal_dep, absl_int128_dep, absl_throw_delegate_dep, absl_stacktrace_dep, absl_debugging_internal_dep, rt_dep, absl_base_dep, absl_spinlock_wait_dep, absl_raw_logging_internal_dep, absl_log_severity_dep, ],
   include_directories : 'build-x86_64/include')

absl_random_internal_pool_urbg_dep = declare_dependency(
   dependencies : [cc.find_library('absl_random_internal_pool_urbg', dirs : meson.current_source_dir() + '/build-x86_64/lib'), absl_random_internal_randen_dep, absl_random_internal_randen_hwaes_dep, absl_random_internal_randen_hwaes_impl_dep, absl_random_internal_randen_slow_dep, absl_random_internal_platform_dep, absl_random_internal_seed_material_dep, absl_bad_optional_access_dep, absl_strings_dep, absl_strings_internal_dep, rt_dep, absl_base_dep, absl_spinlock_wait_dep, absl_int128_dep, absl_random_seed_gen_exception_dep, absl_throw_delegate_dep, absl_raw_logging_internal_dep, absl_log_severity_dep, ],
   include_directories : 'build-x86_64/include')

absl_random_internal_nonsecure_base_dep = declare_dependency(
   dependencies : [absl_random_internal_pool_urbg_dep, absl_random_internal_randen_dep, absl_random_internal_randen_hwaes_dep, absl_random_internal_randen_hwaes_impl_dep, absl_random_internal_randen_slow_dep, absl_random_internal_platform_dep, absl_random_seed_gen_exception_dep, absl_random_internal_seed_material_dep, absl_bad_optional_access_dep, absl_strings_dep, absl_strings_internal_dep, rt_dep, absl_base_dep, absl_spinlock_wait_dep, absl_int128_dep, absl_throw_delegate_dep, absl_raw_logging_internal_dep, absl_log_severity_dep, ],
   include_directories : 'build-x86_64/include')

absl_synchronization_dep = declare_dependency(
   dependencies : [cc.find_library('absl_synchronization', dirs : meson.current_source_dir() + '/build-x86_64/lib'), absl_graphcycles_internal_dep, absl_stacktrace_dep, absl_symbolize_dep, absl_debugging_internal_dep, absl_demangle_internal_dep, absl_malloc_internal_dep, absl_time_dep, absl_civil_time_dep, absl_strings_dep, absl_strings_internal_dep, rt_dep, absl_base_dep, absl_spinlock_wait_dep, absl_int128_dep, absl_throw_delegate_dep, absl_raw_logging_internal_dep, absl_log_severity_dep, absl_time_zone_dep, ],
   include_directories : 'build-x86_64/include')

absl_random_seed_sequences_dep = declare_dependency(
   dependencies : [cc.find_library('absl_random_seed_sequences', dirs : meson.current_source_dir() + '/build-x86_64/lib'), absl_random_internal_pool_urbg_dep, absl_random_internal_randen_dep, absl_random_internal_randen_hwaes_dep, absl_random_internal_randen_hwaes_impl_dep, absl_random_internal_randen_slow_dep, absl_random_internal_platform_dep, absl_random_internal_seed_material_dep, absl_bad_optional_access_dep, absl_strings_dep, absl_strings_internal_dep, rt_dep, absl_base_dep, absl_spinlock_wait_dep, absl_int128_dep, absl_random_seed_gen_exception_dep, absl_throw_delegate_dep, absl_raw_logging_internal_dep, absl_log_severity_dep, ],
   include_directories : 'build-x86_64/include')

absl_sample_recorder_dep = declare_dependency(
   dependencies : [absl_synchronization_dep, absl_graphcycles_internal_dep, absl_stacktrace_dep, absl_symbolize_dep, absl_debugging_internal_dep, absl_demangle_internal_dep, absl_malloc_internal_dep, absl_time_dep, absl_civil_time_dep, absl_strings_dep, absl_strings_internal_dep, rt_dep, absl_base_dep, absl_spinlock_wait_dep, absl_int128_dep, absl_throw_delegate_dep, absl_raw_logging_internal_dep, absl_log_severity_dep, absl_time_zone_dep, ],
   include_directories : 'build-x86_64/include')

absl_cordz_statistics_dep = declare_dependency(
   dependencies : [absl_synchronization_dep, absl_graphcycles_internal_dep, absl_stacktrace_dep, absl_symbolize_dep, absl_debugging_internal_dep, absl_demangle_internal_dep, absl_malloc_internal_dep, absl_time_dep, absl_civil_time_dep, absl_strings_dep, absl_strings_internal_dep, rt_dep, absl_base_dep, absl_spinlock_wait_dep, absl_int128_dep, absl_throw_delegate_dep, absl_raw_logging_internal_dep, absl_log_severity_dep, absl_time_zone_dep, ],
   include_directories : 'build-x86_64/include')

absl_flags_program_name_dep = declare_dependency(
   dependencies : [cc.find_library('absl_flags_program_name', dirs : meson.current_source_dir() + '/build-x86_64/lib'), absl_synchronization_dep, absl_graphcycles_internal_dep, absl_stacktrace_dep, absl_symbolize_dep, absl_debugging_internal_dep, absl_demangle_internal_dep, absl_malloc_internal_dep, absl_time_dep, absl_civil_time_dep, absl_strings_dep, absl_strings_internal_dep, rt_dep, absl_base_dep, absl_spinlock_wait_dep, absl_int128_dep, absl_throw_delegate_dep, absl_raw_logging_internal_dep, absl_log_severity_dep, absl_time_zone_dep, ],
   include_directories : 'build-x86_64/include')

absl_cordz_handle_dep = declare_dependency(
   dependencies : [cc.find_library('absl_cordz_handle', dirs : meson.current_source_dir() + '/build-x86_64/lib'), absl_synchronization_dep, absl_graphcycles_internal_dep, absl_stacktrace_dep, absl_symbolize_dep, absl_debugging_internal_dep, absl_demangle_internal_dep, absl_malloc_internal_dep, absl_time_dep, absl_civil_time_dep, absl_strings_dep, absl_strings_internal_dep, rt_dep, absl_base_dep, absl_spinlock_wait_dep, absl_int128_dep, absl_throw_delegate_dep, absl_raw_logging_internal_dep, absl_log_severity_dep, absl_time_zone_dep, ],
   include_directories : 'build-x86_64/include')

absl_log_initialize_dep = declare_dependency(
   dependencies : [cc.find_library('absl_log_initialize', dirs : meson.current_source_dir() + '/build-x86_64/lib'), absl_log_globals_dep, absl_hash_dep, absl_city_dep, absl_bad_optional_access_dep, absl_bad_variant_access_dep, absl_low_level_hash_dep, absl_log_internal_globals_dep, absl_time_dep, absl_civil_time_dep, absl_strings_dep, absl_strings_internal_dep, rt_dep, absl_base_dep, absl_spinlock_wait_dep, absl_int128_dep, absl_throw_delegate_dep, absl_raw_logging_internal_dep, absl_log_severity_dep, absl_time_zone_dep, ],
   include_directories : 'build-x86_64/include')

absl_random_random_dep = declare_dependency(
   dependencies : [absl_random_distributions_dep, absl_random_seed_sequences_dep, absl_random_internal_pool_urbg_dep, absl_random_internal_randen_dep, absl_random_internal_randen_hwaes_dep, absl_random_internal_randen_hwaes_impl_dep, absl_random_internal_randen_slow_dep, absl_random_internal_platform_dep, absl_random_internal_seed_material_dep, absl_bad_optional_access_dep, absl_strings_dep, absl_strings_internal_dep, rt_dep, absl_base_dep, absl_spinlock_wait_dep, absl_int128_dep, absl_random_seed_gen_exception_dep, absl_throw_delegate_dep, absl_raw_logging_internal_dep, absl_log_severity_dep, ],
   include_directories : 'build-x86_64/include')

absl_flags_config_dep = declare_dependency(
   dependencies : [cc.find_library('absl_flags_config', dirs : meson.current_source_dir() + '/build-x86_64/lib'), absl_flags_program_name_dep, absl_synchronization_dep, absl_graphcycles_internal_dep, absl_stacktrace_dep, absl_symbolize_dep, absl_debugging_internal_dep, absl_demangle_internal_dep, absl_malloc_internal_dep, absl_time_dep, absl_civil_time_dep, absl_strings_dep, absl_strings_internal_dep, rt_dep, absl_base_dep, absl_spinlock_wait_dep, absl_int128_dep, absl_throw_delegate_dep, absl_raw_logging_internal_dep, absl_log_severity_dep, absl_time_zone_dep, ],
   include_directories : 'build-x86_64/include')

absl_hashtablez_sampler_dep = declare_dependency(
   dependencies : [cc.find_library('absl_hashtablez_sampler', dirs : meson.current_source_dir() + '/build-x86_64/lib'), absl_exponential_biased_dep, absl_synchronization_dep, absl_graphcycles_internal_dep, absl_stacktrace_dep, absl_symbolize_dep, absl_debugging_internal_dep, absl_demangle_internal_dep, absl_malloc_internal_dep, absl_time_dep, absl_civil_time_dep, absl_strings_dep, absl_strings_internal_dep, rt_dep, absl_base_dep, absl_spinlock_wait_dep, absl_int128_dep, absl_throw_delegate_dep, absl_raw_logging_internal_dep, absl_log_severity_dep, absl_time_zone_dep, ],
   include_directories : 'build-x86_64/include')

absl_raw_hash_set_dep = declare_dependency(
   dependencies : [cc.find_library('absl_raw_hash_set', dirs : meson.current_source_dir() + '/build-x86_64/lib'), absl_hashtablez_sampler_dep, absl_exponential_biased_dep, absl_synchronization_dep, absl_graphcycles_internal_dep, absl_stacktrace_dep, absl_symbolize_dep, absl_debugging_internal_dep, absl_demangle_internal_dep, absl_malloc_internal_dep, absl_time_dep, absl_civil_time_dep, absl_strings_dep, absl_strings_internal_dep, rt_dep, absl_base_dep, absl_spinlock_wait_dep, absl_int128_dep, absl_throw_delegate_dep, absl_time_zone_dep, absl_bad_optional_access_dep, absl_raw_logging_internal_dep, absl_log_severity_dep, ],
   include_directories : 'build-x86_64/include')

absl_raw_hash_map_dep = declare_dependency(
   dependencies : [absl_raw_hash_set_dep, absl_hashtablez_sampler_dep, absl_exponential_biased_dep, absl_synchronization_dep, absl_graphcycles_internal_dep, absl_stacktrace_dep, absl_symbolize_dep, absl_debugging_internal_dep, absl_demangle_internal_dep, absl_malloc_internal_dep, absl_time_dep, absl_civil_time_dep, absl_strings_dep, absl_strings_internal_dep, rt_dep, absl_base_dep, absl_spinlock_wait_dep, absl_int128_dep, absl_time_zone_dep, absl_bad_optional_access_dep, absl_throw_delegate_dep, absl_raw_logging_internal_dep, absl_log_severity_dep, ],
   include_directories : 'build-x86_64/include')

absl_flags_internal_dep = declare_dependency(
   dependencies : [cc.find_library('absl_flags_internal', dirs : meson.current_source_dir() + '/build-x86_64/lib'), absl_flags_commandlineflag_dep, absl_flags_commandlineflag_internal_dep, absl_flags_config_dep, absl_flags_program_name_dep, absl_flags_marshalling_dep, absl_bad_optional_access_dep, absl_str_format_internal_dep, absl_synchronization_dep, absl_graphcycles_internal_dep, absl_stacktrace_dep, absl_symbolize_dep, absl_debugging_internal_dep, absl_demangle_internal_dep, absl_malloc_internal_dep, absl_time_dep, absl_civil_time_dep, absl_strings_dep, absl_strings_internal_dep, rt_dep, absl_base_dep, absl_spinlock_wait_dep, absl_int128_dep, absl_throw_delegate_dep, absl_raw_logging_internal_dep, absl_log_severity_dep, absl_time_zone_dep, ],
   include_directories : 'build-x86_64/include')

absl_cordz_info_dep = declare_dependency(
   dependencies : [cc.find_library('absl_cordz_info', dirs : meson.current_source_dir() + '/build-x86_64/lib'), absl_cord_internal_dep, absl_crc_cord_state_dep, absl_crc32c_dep, absl_crc_internal_dep, absl_crc_cpu_detect_dep, absl_cordz_functions_dep, absl_exponential_biased_dep, absl_cordz_handle_dep, absl_synchronization_dep, absl_graphcycles_internal_dep, absl_stacktrace_dep, absl_symbolize_dep, absl_debugging_internal_dep, absl_demangle_internal_dep, absl_malloc_internal_dep, absl_time_dep, absl_civil_time_dep, absl_strings_dep, absl_strings_internal_dep, rt_dep, absl_base_dep, absl_spinlock_wait_dep, absl_int128_dep, absl_throw_delegate_dep, absl_raw_logging_internal_dep, absl_log_severity_dep, absl_time_zone_dep, ],
   include_directories : 'build-x86_64/include')

absl_cordz_update_scope_dep = declare_dependency(
   dependencies : [absl_cordz_info_dep, absl_cord_internal_dep, absl_crc_cord_state_dep, absl_crc32c_dep, absl_crc_internal_dep, absl_crc_cpu_detect_dep, absl_cordz_functions_dep, absl_exponential_biased_dep, absl_cordz_handle_dep, absl_synchronization_dep, absl_graphcycles_internal_dep, absl_stacktrace_dep, absl_symbolize_dep, absl_debugging_internal_dep, absl_demangle_internal_dep, absl_malloc_internal_dep, absl_time_dep, absl_civil_time_dep, absl_strings_dep, absl_strings_internal_dep, rt_dep, absl_base_dep, absl_spinlock_wait_dep, absl_int128_dep, absl_throw_delegate_dep, absl_raw_logging_internal_dep, absl_log_severity_dep, absl_time_zone_dep, ],
   include_directories : 'build-x86_64/include')

absl_cordz_sample_token_dep = declare_dependency(
   dependencies : [cc.find_library('absl_cordz_sample_token', dirs : meson.current_source_dir() + '/build-x86_64/lib'), absl_cordz_info_dep, absl_cord_internal_dep, absl_crc_cord_state_dep, absl_crc32c_dep, absl_crc_internal_dep, absl_crc_cpu_detect_dep, absl_cordz_functions_dep, absl_exponential_biased_dep, absl_cordz_handle_dep, absl_synchronization_dep, absl_graphcycles_internal_dep, absl_stacktrace_dep, absl_symbolize_dep, absl_debugging_internal_dep, absl_demangle_internal_dep, absl_malloc_internal_dep, absl_time_dep, absl_civil_time_dep, absl_strings_dep, absl_strings_internal_dep, rt_dep, absl_base_dep, absl_spinlock_wait_dep, absl_int128_dep, absl_throw_delegate_dep, absl_raw_logging_internal_dep, absl_log_severity_dep, absl_time_zone_dep, ],
   include_directories : 'build-x86_64/include')

absl_log_internal_log_sink_set_dep = declare_dependency(
   dependencies : [cc.find_library('absl_log_internal_log_sink_set', dirs : meson.current_source_dir() + '/build-x86_64/lib'), absl_log_internal_globals_dep, absl_log_globals_dep, absl_hash_dep, absl_city_dep, absl_bad_optional_access_dep, absl_bad_variant_access_dep, absl_low_level_hash_dep, absl_log_sink_dep, absl_log_entry_dep, absl_synchronization_dep, absl_graphcycles_internal_dep, absl_stacktrace_dep, absl_symbolize_dep, absl_debugging_internal_dep, absl_demangle_internal_dep, absl_malloc_internal_dep, absl_time_dep, absl_civil_time_dep, absl_time_zone_dep, absl_strings_dep, absl_strings_internal_dep, rt_dep, absl_base_dep, absl_spinlock_wait_dep, absl_int128_dep, absl_throw_delegate_dep, absl_raw_logging_internal_dep, absl_log_severity_dep, ],
   include_directories : 'build-x86_64/include')

absl_log_sink_registry_dep = declare_dependency(
   dependencies : [absl_log_internal_log_sink_set_dep, absl_log_internal_globals_dep, absl_log_globals_dep, absl_hash_dep, absl_city_dep, absl_bad_optional_access_dep, absl_bad_variant_access_dep, absl_low_level_hash_dep, absl_log_sink_dep, absl_log_entry_dep, absl_synchronization_dep, absl_graphcycles_internal_dep, absl_stacktrace_dep, absl_symbolize_dep, absl_debugging_internal_dep, absl_demangle_internal_dep, absl_malloc_internal_dep, absl_time_dep, absl_civil_time_dep, absl_time_zone_dep, absl_strings_dep, absl_strings_internal_dep, rt_dep, absl_base_dep, absl_spinlock_wait_dep, absl_int128_dep, absl_throw_delegate_dep, absl_raw_logging_internal_dep, absl_log_severity_dep, ],
   include_directories : 'build-x86_64/include')

absl_cord_dep = declare_dependency(
   dependencies : [cc.find_library('absl_cord', dirs : meson.current_source_dir() + '/build-x86_64/lib'), absl_cordz_info_dep, absl_cord_internal_dep, absl_cordz_functions_dep, absl_exponential_biased_dep, absl_cordz_handle_dep, absl_synchronization_dep, absl_graphcycles_internal_dep, absl_stacktrace_dep, absl_symbolize_dep, absl_debugging_internal_dep, absl_demangle_internal_dep, absl_malloc_internal_dep, absl_time_dep, absl_civil_time_dep, absl_time_zone_dep, absl_crc_cord_state_dep, absl_crc32c_dep, absl_crc_internal_dep, absl_crc_cpu_detect_dep, absl_bad_optional_access_dep, absl_strings_dep, absl_strings_internal_dep, rt_dep, absl_base_dep, absl_spinlock_wait_dep, absl_int128_dep, absl_throw_delegate_dep, absl_raw_logging_internal_dep, absl_log_severity_dep, ],
   include_directories : 'build-x86_64/include')

absl_btree_dep = declare_dependency(
   dependencies : [absl_cord_dep, absl_cordz_info_dep, absl_cord_internal_dep, absl_cordz_functions_dep, absl_exponential_biased_dep, absl_cordz_handle_dep, absl_synchronization_dep, absl_graphcycles_internal_dep, absl_stacktrace_dep, absl_symbolize_dep, absl_debugging_internal_dep, absl_demangle_internal_dep, absl_malloc_internal_dep, absl_time_dep, absl_civil_time_dep, absl_time_zone_dep, absl_crc_cord_state_dep, absl_crc32c_dep, absl_crc_internal_dep, absl_crc_cpu_detect_dep, absl_bad_optional_access_dep, absl_strings_dep, absl_strings_internal_dep, rt_dep, absl_base_dep, absl_spinlock_wait_dep, absl_int128_dep, absl_throw_delegate_dep, absl_raw_logging_internal_dep, absl_log_severity_dep, ],
   include_directories : 'build-x86_64/include')

absl_status_dep = declare_dependency(
   dependencies : [cc.find_library('absl_status', dirs : meson.current_source_dir() + '/build-x86_64/lib'), absl_cord_dep, absl_cordz_info_dep, absl_cord_internal_dep, absl_cordz_functions_dep, absl_exponential_biased_dep, absl_cordz_handle_dep, absl_synchronization_dep, absl_graphcycles_internal_dep, absl_time_dep, absl_civil_time_dep, absl_time_zone_dep, absl_crc_cord_state_dep, absl_crc32c_dep, absl_crc_internal_dep, absl_crc_cpu_detect_dep, absl_bad_optional_access_dep, absl_stacktrace_dep, absl_str_format_internal_dep, absl_strerror_dep, absl_symbolize_dep, absl_debugging_internal_dep, absl_demangle_internal_dep, absl_malloc_internal_dep, absl_strings_dep, absl_strings_internal_dep, rt_dep, absl_base_dep, absl_spinlock_wait_dep, absl_int128_dep, absl_throw_delegate_dep, absl_raw_logging_internal_dep, absl_log_severity_dep, ],
   include_directories : 'build-x86_64/include')

absl_hash_function_defaults_dep = declare_dependency(
   dependencies : [absl_cord_dep, absl_cordz_info_dep, absl_cord_internal_dep, absl_cordz_functions_dep, absl_exponential_biased_dep, absl_cordz_handle_dep, absl_synchronization_dep, absl_graphcycles_internal_dep, absl_stacktrace_dep, absl_symbolize_dep, absl_debugging_internal_dep, absl_demangle_internal_dep, absl_malloc_internal_dep, absl_time_dep, absl_civil_time_dep, absl_time_zone_dep, absl_crc_cord_state_dep, absl_crc32c_dep, absl_crc_internal_dep, absl_crc_cpu_detect_dep, absl_hash_dep, absl_city_dep, absl_bad_optional_access_dep, absl_bad_variant_access_dep, absl_low_level_hash_dep, absl_strings_dep, absl_strings_internal_dep, rt_dep, absl_base_dep, absl_spinlock_wait_dep, absl_int128_dep, absl_throw_delegate_dep, absl_raw_logging_internal_dep, absl_log_severity_dep, ],
   include_directories : 'build-x86_64/include')

absl_statusor_dep = declare_dependency(
   dependencies : [cc.find_library('absl_statusor', dirs : meson.current_source_dir() + '/build-x86_64/lib'), absl_status_dep, absl_cord_dep, absl_cordz_info_dep, absl_cord_internal_dep, absl_cordz_functions_dep, absl_exponential_biased_dep, absl_cordz_handle_dep, absl_synchronization_dep, absl_graphcycles_internal_dep, absl_time_dep, absl_civil_time_dep, absl_time_zone_dep, absl_crc_cord_state_dep, absl_crc32c_dep, absl_crc_internal_dep, absl_crc_cpu_detect_dep, absl_bad_optional_access_dep, absl_stacktrace_dep, absl_str_format_internal_dep, absl_strerror_dep, absl_symbolize_dep, absl_debugging_internal_dep, absl_demangle_internal_dep, absl_malloc_internal_dep, absl_strings_dep, absl_strings_internal_dep, rt_dep, absl_base_dep, absl_spinlock_wait_dep, absl_int128_dep, absl_throw_delegate_dep, absl_bad_variant_access_dep, absl_raw_logging_internal_dep, absl_log_severity_dep, ],
   include_directories : 'build-x86_64/include')

absl_log_internal_message_dep = declare_dependency(
   dependencies : [cc.find_library('absl_log_internal_message', dirs : meson.current_source_dir() + '/build-x86_64/lib'), absl_examine_stack_dep, absl_log_internal_format_dep, absl_str_format_internal_dep, absl_log_internal_proto_dep, absl_log_internal_nullguard_dep, absl_log_internal_log_sink_set_dep, absl_log_internal_globals_dep, absl_log_globals_dep, absl_hash_dep, absl_city_dep, absl_bad_optional_access_dep, absl_bad_variant_access_dep, absl_low_level_hash_dep, absl_log_sink_dep, absl_log_entry_dep, absl_synchronization_dep, absl_graphcycles_internal_dep, absl_stacktrace_dep, absl_symbolize_dep, absl_debugging_internal_dep, absl_demangle_internal_dep, absl_malloc_internal_dep, absl_strerror_dep, absl_time_dep, absl_civil_time_dep, absl_strings_dep, absl_strings_internal_dep, rt_dep, absl_base_dep, absl_spinlock_wait_dep, absl_int128_dep, absl_time_zone_dep, absl_throw_delegate_dep, absl_raw_logging_internal_dep, absl_log_severity_dep, ],
   include_directories : 'build-x86_64/include')

absl_log_internal_strip_dep = declare_dependency(
   dependencies : [absl_log_internal_message_dep, absl_examine_stack_dep, absl_log_internal_format_dep, absl_str_format_internal_dep, absl_log_internal_proto_dep, absl_log_internal_nullguard_dep, absl_log_internal_log_sink_set_dep, absl_log_internal_globals_dep, absl_log_globals_dep, absl_hash_dep, absl_city_dep, absl_bad_optional_access_dep, absl_bad_variant_access_dep, absl_low_level_hash_dep, absl_log_sink_dep, absl_log_entry_dep, absl_synchronization_dep, absl_graphcycles_internal_dep, absl_stacktrace_dep, absl_symbolize_dep, absl_debugging_internal_dep, absl_demangle_internal_dep, absl_malloc_internal_dep, absl_strerror_dep, absl_time_dep, absl_civil_time_dep, absl_time_zone_dep, absl_strings_dep, absl_strings_internal_dep, rt_dep, absl_base_dep, absl_spinlock_wait_dep, absl_int128_dep, absl_throw_delegate_dep, absl_raw_logging_internal_dep, absl_log_severity_dep, ],
   include_directories : 'build-x86_64/include')

absl_log_internal_structured_dep = declare_dependency(
   dependencies : [absl_log_internal_message_dep, absl_examine_stack_dep, absl_log_internal_format_dep, absl_str_format_internal_dep, absl_log_internal_proto_dep, absl_log_internal_nullguard_dep, absl_log_internal_log_sink_set_dep, absl_log_internal_globals_dep, absl_log_globals_dep, absl_hash_dep, absl_city_dep, absl_bad_optional_access_dep, absl_bad_variant_access_dep, absl_low_level_hash_dep, absl_log_sink_dep, absl_log_entry_dep, absl_synchronization_dep, absl_graphcycles_internal_dep, absl_stacktrace_dep, absl_symbolize_dep, absl_debugging_internal_dep, absl_demangle_internal_dep, absl_malloc_internal_dep, absl_strerror_dep, absl_time_dep, absl_civil_time_dep, absl_time_zone_dep, absl_strings_dep, absl_strings_internal_dep, rt_dep, absl_base_dep, absl_spinlock_wait_dep, absl_int128_dep, absl_throw_delegate_dep, absl_raw_logging_internal_dep, absl_log_severity_dep, ],
   include_directories : 'build-x86_64/include')

absl_flat_hash_set_dep = declare_dependency(
   dependencies : [absl_cord_dep, absl_cordz_info_dep, absl_cord_internal_dep, absl_cordz_functions_dep, absl_cordz_handle_dep, absl_crc_cord_state_dep, absl_crc32c_dep, absl_crc_internal_dep, absl_crc_cpu_detect_dep, absl_hash_dep, absl_city_dep, absl_bad_variant_access_dep, absl_low_level_hash_dep, absl_raw_hash_set_dep, absl_hashtablez_sampler_dep, absl_exponential_biased_dep, absl_synchronization_dep, absl_graphcycles_internal_dep, absl_stacktrace_dep, absl_symbolize_dep, absl_debugging_internal_dep, absl_demangle_internal_dep, absl_malloc_internal_dep, absl_time_dep, absl_civil_time_dep, absl_strings_dep, absl_strings_internal_dep, rt_dep, absl_base_dep, absl_spinlock_wait_dep, absl_int128_dep, absl_throw_delegate_dep, absl_time_zone_dep, absl_bad_optional_access_dep, absl_raw_logging_internal_dep, absl_log_severity_dep, ],
   include_directories : 'build-x86_64/include')

absl_flat_hash_map_dep = declare_dependency(
   dependencies : [absl_cord_dep, absl_cordz_info_dep, absl_cord_internal_dep, absl_cordz_functions_dep, absl_cordz_handle_dep, absl_crc_cord_state_dep, absl_crc32c_dep, absl_crc_internal_dep, absl_crc_cpu_detect_dep, absl_hash_dep, absl_city_dep, absl_bad_variant_access_dep, absl_low_level_hash_dep, absl_raw_hash_set_dep, absl_hashtablez_sampler_dep, absl_exponential_biased_dep, absl_synchronization_dep, absl_graphcycles_internal_dep, absl_stacktrace_dep, absl_symbolize_dep, absl_debugging_internal_dep, absl_demangle_internal_dep, absl_malloc_internal_dep, absl_time_dep, absl_civil_time_dep, absl_strings_dep, absl_strings_internal_dep, rt_dep, absl_base_dep, absl_spinlock_wait_dep, absl_int128_dep, absl_time_zone_dep, absl_bad_optional_access_dep, absl_throw_delegate_dep, absl_raw_logging_internal_dep, absl_log_severity_dep, ],
   include_directories : 'build-x86_64/include')

absl_log_structured_dep = declare_dependency(
   dependencies : [absl_log_internal_message_dep, absl_examine_stack_dep, absl_log_internal_format_dep, absl_str_format_internal_dep, absl_log_internal_proto_dep, absl_log_internal_nullguard_dep, absl_log_internal_log_sink_set_dep, absl_log_internal_globals_dep, absl_log_globals_dep, absl_hash_dep, absl_city_dep, absl_bad_optional_access_dep, absl_bad_variant_access_dep, absl_low_level_hash_dep, absl_log_sink_dep, absl_log_entry_dep, absl_synchronization_dep, absl_graphcycles_internal_dep, absl_stacktrace_dep, absl_symbolize_dep, absl_debugging_internal_dep, absl_demangle_internal_dep, absl_malloc_internal_dep, absl_strerror_dep, absl_time_dep, absl_civil_time_dep, absl_time_zone_dep, absl_strings_dep, absl_strings_internal_dep, rt_dep, absl_base_dep, absl_spinlock_wait_dep, absl_int128_dep, absl_throw_delegate_dep, absl_raw_logging_internal_dep, absl_log_severity_dep, ],
   include_directories : 'build-x86_64/include')

absl_node_hash_map_dep = declare_dependency(
   dependencies : [absl_cord_dep, absl_cordz_info_dep, absl_cord_internal_dep, absl_cordz_functions_dep, absl_cordz_handle_dep, absl_crc_cord_state_dep, absl_crc32c_dep, absl_crc_internal_dep, absl_crc_cpu_detect_dep, absl_hash_dep, absl_city_dep, absl_bad_variant_access_dep, absl_low_level_hash_dep, absl_raw_hash_set_dep, absl_hashtablez_sampler_dep, absl_exponential_biased_dep, absl_synchronization_dep, absl_graphcycles_internal_dep, absl_stacktrace_dep, absl_symbolize_dep, absl_debugging_internal_dep, absl_demangle_internal_dep, absl_malloc_internal_dep, absl_time_dep, absl_civil_time_dep, absl_strings_dep, absl_strings_internal_dep, rt_dep, absl_base_dep, absl_spinlock_wait_dep, absl_int128_dep, absl_time_zone_dep, absl_bad_optional_access_dep, absl_throw_delegate_dep, absl_raw_logging_internal_dep, absl_log_severity_dep, ],
   include_directories : 'build-x86_64/include')

absl_node_hash_set_dep = declare_dependency(
   dependencies : [absl_cord_dep, absl_cordz_info_dep, absl_cord_internal_dep, absl_cordz_functions_dep, absl_cordz_handle_dep, absl_crc_cord_state_dep, absl_crc32c_dep, absl_crc_internal_dep, absl_crc_cpu_detect_dep, absl_hash_dep, absl_city_dep, absl_bad_variant_access_dep, absl_low_level_hash_dep, absl_raw_hash_set_dep, absl_hashtablez_sampler_dep, absl_exponential_biased_dep, absl_synchronization_dep, absl_graphcycles_internal_dep, absl_stacktrace_dep, absl_symbolize_dep, absl_debugging_internal_dep, absl_demangle_internal_dep, absl_malloc_internal_dep, absl_time_dep, absl_civil_time_dep, absl_strings_dep, absl_strings_internal_dep, rt_dep, absl_base_dep, absl_spinlock_wait_dep, absl_int128_dep, absl_throw_delegate_dep, absl_time_zone_dep, absl_bad_optional_access_dep, absl_raw_logging_internal_dep, absl_log_severity_dep, ],
   include_directories : 'build-x86_64/include')

absl_log_internal_check_op_dep = declare_dependency(
   dependencies : [cc.find_library('absl_log_internal_check_op', dirs : meson.current_source_dir() + '/build-x86_64/lib'), absl_log_internal_message_dep, absl_examine_stack_dep, absl_log_internal_format_dep, absl_str_format_internal_dep, absl_log_internal_proto_dep, absl_log_internal_nullguard_dep, absl_log_internal_log_sink_set_dep, absl_log_internal_globals_dep, absl_log_globals_dep, absl_hash_dep, absl_city_dep, absl_bad_optional_access_dep, absl_bad_variant_access_dep, absl_low_level_hash_dep, absl_log_sink_dep, absl_log_entry_dep, absl_synchronization_dep, absl_graphcycles_internal_dep, absl_stacktrace_dep, absl_symbolize_dep, absl_debugging_internal_dep, absl_demangle_internal_dep, absl_malloc_internal_dep, absl_strerror_dep, absl_time_dep, absl_civil_time_dep, absl_time_zone_dep, absl_strings_dep, absl_strings_internal_dep, rt_dep, absl_base_dep, absl_spinlock_wait_dep, absl_int128_dep, absl_throw_delegate_dep, absl_raw_logging_internal_dep, absl_log_severity_dep, ],
   include_directories : 'build-x86_64/include')

absl_log_streamer_dep = declare_dependency(
   dependencies : [absl_log_internal_conditions_dep, absl_log_internal_message_dep, absl_examine_stack_dep, absl_log_internal_format_dep, absl_str_format_internal_dep, absl_log_internal_proto_dep, absl_log_internal_nullguard_dep, absl_log_internal_log_sink_set_dep, absl_log_internal_globals_dep, absl_log_globals_dep, absl_hash_dep, absl_city_dep, absl_bad_variant_access_dep, absl_low_level_hash_dep, absl_log_sink_dep, absl_log_entry_dep, absl_synchronization_dep, absl_graphcycles_internal_dep, absl_stacktrace_dep, absl_symbolize_dep, absl_debugging_internal_dep, absl_demangle_internal_dep, absl_malloc_internal_dep, absl_strerror_dep, absl_time_dep, absl_civil_time_dep, absl_time_zone_dep, absl_bad_optional_access_dep, absl_strings_dep, absl_int128_dep, absl_throw_delegate_dep, absl_strings_internal_dep, rt_dep, absl_base_dep, absl_spinlock_wait_dep, absl_raw_logging_internal_dep, absl_log_severity_dep, ],
   include_directories : 'build-x86_64/include')

absl_log_dep = declare_dependency(
   dependencies : [absl_log_internal_conditions_dep, absl_log_internal_message_dep, absl_examine_stack_dep, absl_log_internal_format_dep, absl_str_format_internal_dep, absl_log_internal_proto_dep, absl_log_internal_nullguard_dep, absl_log_internal_log_sink_set_dep, absl_log_internal_globals_dep, absl_log_globals_dep, absl_hash_dep, absl_city_dep, absl_bad_optional_access_dep, absl_bad_variant_access_dep, absl_low_level_hash_dep, absl_log_sink_dep, absl_log_entry_dep, absl_synchronization_dep, absl_graphcycles_internal_dep, absl_stacktrace_dep, absl_symbolize_dep, absl_debugging_internal_dep, absl_demangle_internal_dep, absl_malloc_internal_dep, absl_strerror_dep, absl_time_dep, absl_civil_time_dep, absl_time_zone_dep, absl_strings_dep, absl_strings_internal_dep, rt_dep, absl_base_dep, absl_spinlock_wait_dep, absl_int128_dep, absl_throw_delegate_dep, absl_raw_logging_internal_dep, absl_log_severity_dep, ],
   include_directories : 'build-x86_64/include')

absl_absl_log_dep = declare_dependency(
   dependencies : [absl_log_internal_conditions_dep, absl_log_internal_message_dep, absl_examine_stack_dep, absl_log_internal_format_dep, absl_str_format_internal_dep, absl_log_internal_proto_dep, absl_log_internal_nullguard_dep, absl_log_internal_log_sink_set_dep, absl_log_internal_globals_dep, absl_log_globals_dep, absl_hash_dep, absl_city_dep, absl_bad_optional_access_dep, absl_bad_variant_access_dep, absl_low_level_hash_dep, absl_log_sink_dep, absl_log_entry_dep, absl_synchronization_dep, absl_graphcycles_internal_dep, absl_stacktrace_dep, absl_symbolize_dep, absl_debugging_internal_dep, absl_demangle_internal_dep, absl_malloc_internal_dep, absl_strerror_dep, absl_time_dep, absl_civil_time_dep, absl_time_zone_dep, absl_strings_dep, absl_strings_internal_dep, rt_dep, absl_base_dep, absl_spinlock_wait_dep, absl_int128_dep, absl_throw_delegate_dep, absl_raw_logging_internal_dep, absl_log_severity_dep, ],
   include_directories : 'build-x86_64/include')

absl_log_internal_log_impl_dep = declare_dependency(
   dependencies : [absl_log_internal_conditions_dep, absl_log_internal_message_dep, absl_examine_stack_dep, absl_log_internal_format_dep, absl_str_format_internal_dep, absl_log_internal_proto_dep, absl_log_internal_nullguard_dep, absl_log_internal_log_sink_set_dep, absl_log_internal_globals_dep, absl_log_globals_dep, absl_hash_dep, absl_city_dep, absl_bad_optional_access_dep, absl_bad_variant_access_dep, absl_low_level_hash_dep, absl_log_sink_dep, absl_log_entry_dep, absl_synchronization_dep, absl_graphcycles_internal_dep, absl_stacktrace_dep, absl_symbolize_dep, absl_debugging_internal_dep, absl_demangle_internal_dep, absl_malloc_internal_dep, absl_strerror_dep, absl_time_dep, absl_civil_time_dep, absl_time_zone_dep, absl_strings_dep, absl_strings_internal_dep, rt_dep, absl_base_dep, absl_spinlock_wait_dep, absl_int128_dep, absl_throw_delegate_dep, absl_raw_logging_internal_dep, absl_log_severity_dep, ],
   include_directories : 'build-x86_64/include')

absl_die_if_null_dep = declare_dependency(
   dependencies : [cc.find_library('absl_die_if_null', dirs : meson.current_source_dir() + '/build-x86_64/lib'), absl_log_internal_conditions_dep, absl_log_internal_message_dep, absl_examine_stack_dep, absl_log_internal_format_dep, absl_str_format_internal_dep, absl_log_internal_proto_dep, absl_log_internal_nullguard_dep, absl_log_internal_log_sink_set_dep, absl_log_internal_globals_dep, absl_log_globals_dep, absl_hash_dep, absl_city_dep, absl_bad_optional_access_dep, absl_bad_variant_access_dep, absl_low_level_hash_dep, absl_log_sink_dep, absl_log_entry_dep, absl_synchronization_dep, absl_graphcycles_internal_dep, absl_stacktrace_dep, absl_symbolize_dep, absl_debugging_internal_dep, absl_demangle_internal_dep, absl_malloc_internal_dep, absl_strerror_dep, absl_time_dep, absl_civil_time_dep, absl_time_zone_dep, absl_strings_dep, absl_strings_internal_dep, rt_dep, absl_base_dep, absl_spinlock_wait_dep, absl_int128_dep, absl_throw_delegate_dep, absl_raw_logging_internal_dep, absl_log_severity_dep, ],
   include_directories : 'build-x86_64/include')

absl_log_internal_check_impl_dep = declare_dependency(
   dependencies : [absl_log_internal_check_op_dep, absl_log_internal_conditions_dep, absl_log_internal_message_dep, absl_examine_stack_dep, absl_log_internal_format_dep, absl_str_format_internal_dep, absl_log_internal_proto_dep, absl_log_internal_nullguard_dep, absl_log_internal_log_sink_set_dep, absl_log_internal_globals_dep, absl_log_globals_dep, absl_hash_dep, absl_city_dep, absl_bad_optional_access_dep, absl_bad_variant_access_dep, absl_low_level_hash_dep, absl_log_sink_dep, absl_log_entry_dep, absl_synchronization_dep, absl_graphcycles_internal_dep, absl_stacktrace_dep, absl_symbolize_dep, absl_debugging_internal_dep, absl_demangle_internal_dep, absl_malloc_internal_dep, absl_strerror_dep, absl_time_dep, absl_civil_time_dep, absl_time_zone_dep, absl_strings_dep, absl_strings_internal_dep, rt_dep, absl_base_dep, absl_spinlock_wait_dep, absl_int128_dep, absl_throw_delegate_dep, absl_raw_logging_internal_dep, absl_log_severity_dep, ],
   include_directories : 'build-x86_64/include')

absl_check_dep = declare_dependency(
   dependencies : [absl_log_internal_check_op_dep, absl_log_internal_conditions_dep, absl_log_internal_message_dep, absl_examine_stack_dep, absl_log_internal_format_dep, absl_str_format_internal_dep, absl_log_internal_proto_dep, absl_log_internal_nullguard_dep, absl_log_internal_log_sink_set_dep, absl_log_internal_globals_dep, absl_log_globals_dep, absl_hash_dep, absl_city_dep, absl_bad_optional_access_dep, absl_bad_variant_access_dep, absl_low_level_hash_dep, absl_log_sink_dep, absl_log_entry_dep, absl_synchronization_dep, absl_graphcycles_internal_dep, absl_stacktrace_dep, absl_symbolize_dep, absl_debugging_internal_dep, absl_demangle_internal_dep, absl_malloc_internal_dep, absl_strerror_dep, absl_time_dep, absl_civil_time_dep, absl_time_zone_dep, absl_strings_dep, absl_strings_internal_dep, rt_dep, absl_base_dep, absl_spinlock_wait_dep, absl_int128_dep, absl_throw_delegate_dep, absl_raw_logging_internal_dep, absl_log_severity_dep, ],
   include_directories : 'build-x86_64/include')

absl_absl_check_dep = declare_dependency(
   dependencies : [absl_log_internal_check_op_dep, absl_log_internal_conditions_dep, absl_log_internal_message_dep, absl_examine_stack_dep, absl_log_internal_format_dep, absl_str_format_internal_dep, absl_log_internal_proto_dep, absl_log_internal_nullguard_dep, absl_log_internal_log_sink_set_dep, absl_log_internal_globals_dep, absl_log_globals_dep, absl_hash_dep, absl_city_dep, absl_bad_optional_access_dep, absl_bad_variant_access_dep, absl_low_level_hash_dep, absl_log_sink_dep, absl_log_entry_dep, absl_synchronization_dep, absl_graphcycles_internal_dep, absl_stacktrace_dep, absl_symbolize_dep, absl_debugging_internal_dep, absl_demangle_internal_dep, absl_malloc_internal_dep, absl_strerror_dep, absl_time_dep, absl_civil_time_dep, absl_time_zone_dep, absl_strings_dep, absl_strings_internal_dep, rt_dep, absl_base_dep, absl_spinlock_wait_dep, absl_int128_dep, absl_throw_delegate_dep, absl_raw_logging_internal_dep, absl_log_severity_dep, ],
   include_directories : 'build-x86_64/include')

absl_flags_reflection_dep = declare_dependency(
   dependencies : [cc.find_library('absl_flags_reflection', dirs : meson.current_source_dir() + '/build-x86_64/lib'), absl_flags_private_handle_accessor_dep, absl_flags_commandlineflag_dep, absl_flags_commandlineflag_internal_dep, absl_flags_config_dep, absl_flags_program_name_dep, absl_cord_dep, absl_cordz_info_dep, absl_cord_internal_dep, absl_cordz_functions_dep, absl_cordz_handle_dep, absl_crc_cord_state_dep, absl_crc32c_dep, absl_crc_internal_dep, absl_crc_cpu_detect_dep, absl_hash_dep, absl_city_dep, absl_bad_variant_access_dep, absl_low_level_hash_dep, absl_raw_hash_set_dep, absl_hashtablez_sampler_dep, absl_exponential_biased_dep, absl_synchronization_dep, absl_graphcycles_internal_dep, absl_stacktrace_dep, absl_symbolize_dep, absl_debugging_internal_dep, absl_demangle_internal_dep, absl_malloc_internal_dep, absl_time_dep, absl_civil_time_dep, absl_strings_dep, absl_strings_internal_dep, rt_dep, absl_base_dep, absl_spinlock_wait_dep, absl_int128_dep, absl_time_zone_dep, absl_bad_optional_access_dep, absl_throw_delegate_dep, absl_raw_logging_internal_dep, absl_log_severity_dep, ],
   include_directories : 'build-x86_64/include')

absl_flags_dep = declare_dependency(
   dependencies : [cc.find_library('absl_flags', dirs : meson.current_source_dir() + '/build-x86_64/lib'), absl_flags_internal_dep, absl_flags_marshalling_dep, absl_str_format_internal_dep, absl_flags_reflection_dep, absl_flags_private_handle_accessor_dep, absl_flags_commandlineflag_dep, absl_flags_commandlineflag_internal_dep, absl_flags_config_dep, absl_flags_program_name_dep, absl_cord_dep, absl_cordz_info_dep, absl_cord_internal_dep, absl_cordz_functions_dep, absl_cordz_handle_dep, absl_crc_cord_state_dep, absl_crc32c_dep, absl_crc_internal_dep, absl_crc_cpu_detect_dep, absl_hash_dep, absl_city_dep, absl_bad_variant_access_dep, absl_low_level_hash_dep, absl_raw_hash_set_dep, absl_hashtablez_sampler_dep, absl_exponential_biased_dep, absl_synchronization_dep, absl_graphcycles_internal_dep, absl_stacktrace_dep, absl_symbolize_dep, absl_debugging_internal_dep, absl_demangle_internal_dep, absl_malloc_internal_dep, absl_time_dep, absl_civil_time_dep, absl_time_zone_dep, absl_bad_optional_access_dep, absl_strings_dep, absl_strings_internal_dep, rt_dep, absl_base_dep, absl_spinlock_wait_dep, absl_int128_dep, absl_throw_delegate_dep, absl_raw_logging_internal_dep, absl_log_severity_dep, ],
   include_directories : 'build-x86_64/include')

absl_log_internal_flags_dep = declare_dependency(
   dependencies : [absl_flags_dep, absl_flags_internal_dep, absl_flags_marshalling_dep, absl_str_format_internal_dep, absl_flags_reflection_dep, absl_flags_private_handle_accessor_dep, absl_flags_commandlineflag_dep, absl_flags_commandlineflag_internal_dep, absl_flags_config_dep, absl_flags_program_name_dep, absl_cord_dep, absl_cordz_info_dep, absl_cord_internal_dep, absl_cordz_functions_dep, absl_cordz_handle_dep, absl_crc_cord_state_dep, absl_crc32c_dep, absl_crc_internal_dep, absl_crc_cpu_detect_dep, absl_hash_dep, absl_city_dep, absl_bad_variant_access_dep, absl_low_level_hash_dep, absl_raw_hash_set_dep, absl_hashtablez_sampler_dep, absl_exponential_biased_dep, absl_synchronization_dep, absl_graphcycles_internal_dep, absl_stacktrace_dep, absl_symbolize_dep, absl_debugging_internal_dep, absl_demangle_internal_dep, absl_malloc_internal_dep, absl_time_dep, absl_civil_time_dep, absl_time_zone_dep, absl_bad_optional_access_dep, absl_strings_dep, absl_strings_internal_dep, rt_dep, absl_base_dep, absl_spinlock_wait_dep, absl_int128_dep, absl_throw_delegate_dep, absl_raw_logging_internal_dep, absl_log_severity_dep, ],
   include_directories : 'build-x86_64/include')

absl_flags_usage_internal_dep = declare_dependency(
   dependencies : [cc.find_library('absl_flags_usage_internal', dirs : meson.current_source_dir() + '/build-x86_64/lib'), absl_flags_dep, absl_flags_internal_dep, absl_flags_marshalling_dep, absl_str_format_internal_dep, absl_flags_reflection_dep, absl_flags_private_handle_accessor_dep, absl_flags_commandlineflag_dep, absl_flags_commandlineflag_internal_dep, absl_flags_config_dep, absl_flags_program_name_dep, absl_cord_dep, absl_cordz_info_dep, absl_cord_internal_dep, absl_cordz_functions_dep, absl_cordz_handle_dep, absl_crc_cord_state_dep, absl_crc32c_dep, absl_crc_internal_dep, absl_crc_cpu_detect_dep, absl_hash_dep, absl_city_dep, absl_bad_variant_access_dep, absl_low_level_hash_dep, absl_raw_hash_set_dep, absl_hashtablez_sampler_dep, absl_exponential_biased_dep, absl_bad_optional_access_dep, absl_synchronization_dep, absl_graphcycles_internal_dep, absl_stacktrace_dep, absl_symbolize_dep, absl_debugging_internal_dep, absl_demangle_internal_dep, absl_malloc_internal_dep, absl_time_dep, absl_civil_time_dep, absl_strings_dep, absl_strings_internal_dep, rt_dep, absl_base_dep, absl_spinlock_wait_dep, absl_int128_dep, absl_throw_delegate_dep, absl_raw_logging_internal_dep, absl_log_severity_dep, absl_time_zone_dep, ],
   include_directories : 'build-x86_64/include')

absl_flags_usage_dep = declare_dependency(
   dependencies : [cc.find_library('absl_flags_usage', dirs : meson.current_source_dir() + '/build-x86_64/lib'), absl_flags_usage_internal_dep, absl_flags_dep, absl_flags_internal_dep, absl_flags_marshalling_dep, absl_str_format_internal_dep, absl_flags_reflection_dep, absl_flags_private_handle_accessor_dep, absl_flags_commandlineflag_dep, absl_flags_commandlineflag_internal_dep, absl_flags_config_dep, absl_flags_program_name_dep, absl_cord_dep, absl_cordz_info_dep, absl_cord_internal_dep, absl_cordz_functions_dep, absl_cordz_handle_dep, absl_crc_cord_state_dep, absl_crc32c_dep, absl_crc_internal_dep, absl_crc_cpu_detect_dep, absl_hash_dep, absl_city_dep, absl_bad_variant_access_dep, absl_low_level_hash_dep, absl_raw_hash_set_dep, absl_hashtablez_sampler_dep, absl_exponential_biased_dep, absl_bad_optional_access_dep, absl_synchronization_dep, absl_graphcycles_internal_dep, absl_stacktrace_dep, absl_symbolize_dep, absl_debugging_internal_dep, absl_demangle_internal_dep, absl_malloc_internal_dep, absl_time_dep, absl_civil_time_dep, absl_strings_dep, absl_strings_internal_dep, rt_dep, absl_base_dep, absl_spinlock_wait_dep, absl_int128_dep, absl_throw_delegate_dep, absl_raw_logging_internal_dep, absl_log_severity_dep, absl_time_zone_dep, ],
   include_directories : 'build-x86_64/include')

absl_log_flags_dep = declare_dependency(
   dependencies : [cc.find_library('absl_log_flags', dirs : meson.current_source_dir() + '/build-x86_64/lib'), absl_log_globals_dep, absl_flags_dep, absl_flags_internal_dep, absl_flags_reflection_dep, absl_flags_private_handle_accessor_dep, absl_flags_commandlineflag_dep, absl_flags_commandlineflag_internal_dep, absl_flags_config_dep, absl_flags_program_name_dep, absl_cord_dep, absl_cordz_info_dep, absl_cord_internal_dep, absl_cordz_functions_dep, absl_cordz_handle_dep, absl_crc_cord_state_dep, absl_crc32c_dep, absl_crc_internal_dep, absl_crc_cpu_detect_dep, absl_hash_dep, absl_city_dep, absl_bad_variant_access_dep, absl_low_level_hash_dep, absl_raw_hash_set_dep, absl_hashtablez_sampler_dep, absl_exponential_biased_dep, absl_synchronization_dep, absl_graphcycles_internal_dep, absl_stacktrace_dep, absl_symbolize_dep, absl_debugging_internal_dep, absl_demangle_internal_dep, absl_malloc_internal_dep, absl_time_dep, absl_civil_time_dep, absl_time_zone_dep, absl_flags_marshalling_dep, absl_bad_optional_access_dep, absl_str_format_internal_dep, absl_strings_dep, absl_strings_internal_dep, rt_dep, absl_base_dep, absl_spinlock_wait_dep, absl_int128_dep, absl_throw_delegate_dep, absl_raw_logging_internal_dep, absl_log_severity_dep, ],
   include_directories : 'build-x86_64/include')

absl_flags_parse_dep = declare_dependency(
   dependencies : [cc.find_library('absl_flags_parse', dirs : meson.current_source_dir() + '/build-x86_64/lib'), absl_flags_usage_dep, absl_flags_usage_internal_dep, absl_flags_dep, absl_flags_internal_dep, absl_flags_marshalling_dep, absl_str_format_internal_dep, absl_flags_reflection_dep, absl_flags_private_handle_accessor_dep, absl_flags_commandlineflag_dep, absl_flags_commandlineflag_internal_dep, absl_flags_config_dep, absl_flags_program_name_dep, absl_cord_dep, absl_cordz_info_dep, absl_cord_internal_dep, absl_cordz_functions_dep, absl_cordz_handle_dep, absl_crc_cord_state_dep, absl_crc32c_dep, absl_crc_internal_dep, absl_crc_cpu_detect_dep, absl_hash_dep, absl_city_dep, absl_bad_variant_access_dep, absl_low_level_hash_dep, absl_raw_hash_set_dep, absl_hashtablez_sampler_dep, absl_exponential_biased_dep, absl_bad_optional_access_dep, absl_synchronization_dep, absl_graphcycles_internal_dep, absl_stacktrace_dep, absl_symbolize_dep, absl_debugging_internal_dep, absl_demangle_internal_dep, absl_malloc_internal_dep, absl_time_dep, absl_civil_time_dep, absl_strings_dep, absl_strings_internal_dep, rt_dep, absl_base_dep, absl_spinlock_wait_dep, absl_int128_dep, absl_throw_delegate_dep, absl_raw_logging_internal_dep, absl_log_severity_dep, absl_time_zone_dep, ],
   include_directories : 'build-x86_64/include')

gpr_dep = declare_dependency(
   dependencies : [cc.find_library('gpr', dirs : meson.current_source_dir() + '/build-x86_64/lib'), absl_flags_dep, absl_flags_internal_dep, absl_flags_reflection_dep, absl_flags_private_handle_accessor_dep, absl_flags_commandlineflag_dep, absl_flags_commandlineflag_internal_dep, absl_flags_config_dep, absl_flags_program_name_dep, absl_hash_dep, absl_city_dep, absl_low_level_hash_dep, absl_raw_hash_set_dep, absl_hashtablez_sampler_dep, absl_flags_marshalling_dep, absl_random_distributions_dep, absl_random_seed_sequences_dep, absl_random_internal_pool_urbg_dep, absl_random_internal_randen_dep, absl_random_internal_randen_hwaes_dep, absl_random_internal_randen_hwaes_impl_dep, absl_random_internal_randen_slow_dep, absl_random_internal_platform_dep, absl_random_internal_seed_material_dep, absl_random_seed_gen_exception_dep, absl_status_dep, absl_cord_dep, absl_cordz_info_dep, absl_cord_internal_dep, absl_cordz_functions_dep, absl_exponential_biased_dep, absl_cordz_handle_dep, absl_crc_cord_state_dep, absl_crc32c_dep, absl_crc_internal_dep, absl_crc_cpu_detect_dep, absl_bad_optional_access_dep, absl_strerror_dep, absl_str_format_internal_dep, absl_synchronization_dep, absl_graphcycles_internal_dep, absl_stacktrace_dep, absl_symbolize_dep, absl_debugging_internal_dep, absl_demangle_internal_dep, absl_malloc_internal_dep, absl_time_dep, absl_civil_time_dep, absl_strings_dep, absl_strings_internal_dep, rt_dep, absl_base_dep, absl_spinlock_wait_dep, absl_int128_dep, absl_throw_delegate_dep, absl_time_zone_dep, absl_bad_variant_access_dep, absl_raw_logging_internal_dep, absl_log_severity_dep, ],
   include_directories : 'build-x86_64/include')

grpc_unsecure_dep = declare_dependency(
   dependencies : [cc.find_library('grpc_unsecure', dirs : meson.current_source_dir() + '/build-x86_64/lib'), gpr_dep, absl_flags_dep, absl_flags_internal_dep, absl_flags_reflection_dep, absl_flags_private_handle_accessor_dep, absl_flags_commandlineflag_dep, absl_flags_commandlineflag_internal_dep, absl_flags_config_dep, absl_flags_program_name_dep, absl_flags_marshalling_dep, absl_raw_hash_set_dep, absl_hashtablez_sampler_dep, absl_hash_dep, absl_city_dep, absl_low_level_hash_dep, absl_random_distributions_dep, absl_random_seed_sequences_dep, absl_random_internal_pool_urbg_dep, absl_random_internal_randen_dep, absl_random_internal_randen_hwaes_dep, absl_random_internal_randen_hwaes_impl_dep, absl_random_internal_randen_slow_dep, absl_random_internal_platform_dep, absl_random_internal_seed_material_dep, absl_random_seed_gen_exception_dep, absl_statusor_dep, absl_status_dep, absl_cord_dep, absl_cordz_info_dep, absl_cord_internal_dep, absl_cordz_functions_dep, absl_exponential_biased_dep, absl_cordz_handle_dep, absl_crc_cord_state_dep, absl_crc32c_dep, absl_crc_internal_dep, absl_crc_cpu_detect_dep, absl_bad_optional_access_dep, absl_strerror_dep, absl_str_format_internal_dep, absl_synchronization_dep, absl_graphcycles_internal_dep, absl_stacktrace_dep, absl_symbolize_dep, absl_debugging_internal_dep, absl_demangle_internal_dep, absl_malloc_internal_dep, absl_time_dep, absl_civil_time_dep, absl_strings_dep, absl_strings_internal_dep, rt_dep, absl_base_dep, absl_spinlock_wait_dep, absl_int128_dep, absl_throw_delegate_dep, absl_time_zone_dep, absl_bad_variant_access_dep, absl_raw_logging_internal_dep, absl_log_severity_dep, upb_dep, address_sorting_dep, re2_dep, z_dep, libcares_dep, protobuf_dep, ],
   include_directories : 'build-x86_64/include')

grpc_dep = declare_dependency(
   dependencies : [cc.find_library('grpc', dirs : meson.current_source_dir() + '/build-x86_64/lib'), gpr_dep, absl_flags_dep, absl_flags_internal_dep, absl_flags_reflection_dep, absl_flags_private_handle_accessor_dep, absl_flags_commandlineflag_dep, absl_flags_commandlineflag_internal_dep, absl_flags_config_dep, absl_flags_program_name_dep, absl_flags_marshalling_dep, absl_raw_hash_set_dep, absl_hashtablez_sampler_dep, absl_hash_dep, absl_city_dep, absl_low_level_hash_dep, absl_random_distributions_dep, absl_random_seed_sequences_dep, absl_random_internal_pool_urbg_dep, absl_random_internal_randen_dep, absl_random_internal_randen_hwaes_dep, absl_random_internal_randen_hwaes_impl_dep, absl_random_internal_randen_slow_dep, absl_random_internal_platform_dep, absl_random_internal_seed_material_dep, absl_random_seed_gen_exception_dep, absl_statusor_dep, absl_status_dep, absl_cord_dep, absl_cordz_info_dep, absl_cord_internal_dep, absl_cordz_functions_dep, absl_exponential_biased_dep, absl_cordz_handle_dep, absl_crc_cord_state_dep, absl_crc32c_dep, absl_crc_internal_dep, absl_crc_cpu_detect_dep, absl_bad_optional_access_dep, absl_strerror_dep, absl_str_format_internal_dep, absl_synchronization_dep, absl_graphcycles_internal_dep, absl_stacktrace_dep, absl_symbolize_dep, absl_debugging_internal_dep, absl_demangle_internal_dep, absl_malloc_internal_dep, absl_time_dep, absl_civil_time_dep, absl_strings_dep, absl_strings_internal_dep, rt_dep, absl_base_dep, absl_spinlock_wait_dep, absl_int128_dep, absl_throw_delegate_dep, absl_time_zone_dep, absl_bad_variant_access_dep, absl_raw_logging_internal_dep, absl_log_severity_dep, upb_dep, address_sorting_dep, re2_dep, z_dep, libcares_dep, ssl_dep, protobuf_dep, ],
   include_directories : 'build-x86_64/include')

grpcpp_dep = declare_dependency(
   dependencies : [cc.find_library('grpc++', dirs : meson.current_source_dir() + '/build-x86_64/lib'), grpc_dep, gpr_dep, absl_flags_dep, absl_flags_internal_dep, absl_flags_reflection_dep, absl_flags_private_handle_accessor_dep, absl_flags_commandlineflag_dep, absl_flags_commandlineflag_internal_dep, absl_flags_config_dep, absl_flags_program_name_dep, absl_flags_marshalling_dep, absl_raw_hash_set_dep, absl_hashtablez_sampler_dep, absl_hash_dep, absl_city_dep, absl_low_level_hash_dep, absl_random_distributions_dep, absl_random_seed_sequences_dep, absl_random_internal_pool_urbg_dep, absl_random_internal_randen_dep, absl_random_internal_randen_hwaes_dep, absl_random_internal_randen_hwaes_impl_dep, absl_random_internal_randen_slow_dep, absl_random_internal_platform_dep, absl_random_internal_seed_material_dep, absl_random_seed_gen_exception_dep, absl_statusor_dep, absl_status_dep, absl_cord_dep, absl_cordz_info_dep, absl_cord_internal_dep, absl_cordz_functions_dep, absl_exponential_biased_dep, absl_cordz_handle_dep, absl_crc_cord_state_dep, absl_crc32c_dep, absl_crc_internal_dep, absl_crc_cpu_detect_dep, absl_bad_optional_access_dep, absl_strerror_dep, absl_str_format_internal_dep, absl_synchronization_dep, absl_graphcycles_internal_dep, absl_stacktrace_dep, absl_symbolize_dep, absl_debugging_internal_dep, absl_demangle_internal_dep, absl_malloc_internal_dep, absl_time_dep, absl_civil_time_dep, absl_strings_dep, absl_strings_internal_dep, rt_dep, absl_base_dep, absl_spinlock_wait_dep, absl_int128_dep, absl_throw_delegate_dep, absl_time_zone_dep, absl_bad_variant_access_dep, absl_raw_logging_internal_dep, absl_log_severity_dep, ],
   include_directories : 'build-x86_64/include')

grpcpp_unsecure_dep = declare_dependency(
   dependencies : [cc.find_library('grpc++_unsecure', dirs : meson.current_source_dir() + '/build-x86_64/lib'), grpc_unsecure_dep, gpr_dep, absl_flags_dep, absl_flags_internal_dep, absl_flags_reflection_dep, absl_flags_private_handle_accessor_dep, absl_flags_commandlineflag_dep, absl_flags_commandlineflag_internal_dep, absl_flags_config_dep, absl_flags_program_name_dep, absl_flags_marshalling_dep, absl_raw_hash_set_dep, absl_hashtablez_sampler_dep, absl_hash_dep, absl_city_dep, absl_low_level_hash_dep, absl_random_distributions_dep, absl_random_seed_sequences_dep, absl_random_internal_pool_urbg_dep, absl_random_internal_randen_dep, absl_random_internal_randen_hwaes_dep, absl_random_internal_randen_hwaes_impl_dep, absl_random_internal_randen_slow_dep, absl_random_internal_platform_dep, absl_random_internal_seed_material_dep, absl_random_seed_gen_exception_dep, absl_statusor_dep, absl_status_dep, absl_cord_dep, absl_cordz_info_dep, absl_cord_internal_dep, absl_cordz_functions_dep, absl_exponential_biased_dep, absl_cordz_handle_dep, absl_crc_cord_state_dep, absl_crc32c_dep, absl_crc_internal_dep, absl_crc_cpu_detect_dep, absl_bad_optional_access_dep, absl_strerror_dep, absl_str_format_internal_dep, absl_synchronization_dep, absl_graphcycles_internal_dep, absl_stacktrace_dep, absl_symbolize_dep, absl_debugging_internal_dep, absl_demangle_internal_dep, absl_malloc_internal_dep, absl_time_dep, absl_civil_time_dep, absl_strings_dep, absl_strings_internal_dep, rt_dep, absl_base_dep, absl_spinlock_wait_dep, absl_int128_dep, absl_throw_delegate_dep, absl_time_zone_dep, absl_bad_variant_access_dep, absl_raw_logging_internal_dep, absl_log_severity_dep, ],
   include_directories : 'build-x86_64/include')

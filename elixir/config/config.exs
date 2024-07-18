import Config

config :junit_formatter,
  report_dir: "/tmp",
  report_file: "junit.xml",
  print_report_file: true,
  prepend_project_name?: false,
  include_filename?: true

config :calculator,
  test_prefix: System.get_env("TEST_PREFIX") || "",
  randomize_failures: System.get_env("RANDOMIZE_FAILURES") || "false"

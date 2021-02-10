import Config

config :junit_formatter,
  report_dir: "/tmp/test-results",
  report_file: "junit.xml",
  print_report_file: true,
  prepend_project_name?: false,
  include_filename?: true

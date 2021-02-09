import Config

config :junit_formatter,
  report_dir: "../test-results",
  report_file: "exunit.xml",
  print_report_file: true,
  prepend_project_name?: false,
  include_filename?: true

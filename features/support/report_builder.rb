# frozen_string_literal: true

## Gerar relatorio ao final da execucao
at_exit do
  ReportBuilder.configure do |config|
    config.json_path = 'reports/report.json'
    config.report_path = "#{REPORT_PATH}#{Time.now.strftime('%Y-%m-%d_-_%H-%M-%S_-_')}#{SELECTED_ENV}_api"
    config.report_types = [:html]
    config.report_title = 'poc-automation-ruby-capybara' # nome do report - <img src='#' />
    config.color = 'orange'
    config.compress_images = false
    config.include_images = true
    config.additional_info = { 'Date': Time.now, 'Environment': SELECTED_ENV,
                               'Url': BASE_URL, 'Runtime': "ruby - #{RUBY_VERSION}" }
  end
  ReportBuilder.build_report

  puts "\nReportBuilder \n#{ReportBuilder.report_path}.#{ReportBuilder.report_types[0].downcase}"
end

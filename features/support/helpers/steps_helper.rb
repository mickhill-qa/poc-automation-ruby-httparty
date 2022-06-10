# frozen_string_literal: true

# Helper de ajuda aos steps
def expect_true_data_exist(data)
  data_exist = ![nil, '', false].include?(data)
  expect(data_exist).to eql true
  print_log data
end

def print_log(log_user)
  log log_user if ENV['CI'].blank?
end

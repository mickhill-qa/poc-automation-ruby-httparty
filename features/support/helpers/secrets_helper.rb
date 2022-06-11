# frozen_string_literal: true

# Helper de load de secrets => Pode ser substituido pelo AWS Secret Manager
class SecretsHelper
  def secrets
    secrets_used = ENV['SECRETS_BACK']
    data = if secrets_used.blank?
             File.read(File.join(File.dirname(__FILE__), '../config/secrets.json'))
           else
             secrets_used
           end
    JSON.parse(data)[SELECTED_ENV]
  end
end

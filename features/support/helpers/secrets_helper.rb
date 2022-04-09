module SecretsHelper
  def get_secrets
    data = File.read(
      File.join(
        File.dirname(__FILE__),
        '../config/secrets.json'
      )
    )
    JSON.parse( data )[SELECTED_ENV]
  end
end

World SecretsHelper
CarrierWave.configure do |config|
  if Rails.env.production?
    config.fog_credentials = {
      provider: 'AWS',
      aws_access_key_id: ENV["S3_ACCESS_KEY"],
      aws_secret_access_key: ENV["S3_SECRET_KEY"],
      region: 'ap-northeast-1'
    }
    config.fog_directory  = 'support-spouses-communication-production'
    config.cache_storage = :fog
  end
end

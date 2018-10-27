CarrierWave.configure do |config|

  if Rails.env.production? || Rails.env.staging? || ENV['USE_S3_STORAGE'].present?
    config.fog_provider = 'fog/aws'
    config.fog_credentials = {
      provider:              "AWS",
      region:                "ap-northeast-1",
      use_iam_profile: true
    }
    config.fog_directory = Global.app.s3.bucket
    config.storage = :fog
  else
    config.storage = :file
  end

end

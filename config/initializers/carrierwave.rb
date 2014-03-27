CarrierWave.configure do |config| 
  config.fog_credentials = { 
    :provider => 'AWS',
    :aws_access_key_id => ENV['AWS_KEY_ID'], 
    :aws_secret_access_key => ENV['AWS_SECRET_KEY'], 
    :region => 'us-west-1' 
  }
  config.fog_directory = 'krissepicenter' # required
  config.fog_public = false # optional,
  config.fog_attributes = {'Cache-Control'=>'max-age=315576000'} # optional, defaults to {} 
end
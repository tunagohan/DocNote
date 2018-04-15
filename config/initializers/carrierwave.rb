Dotenv.load
CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'
  config.fog_credentials = {
    provider: 'AWS',
    aws_access_key_id: ENV['AWS_ACCESS_KEY_ID'],
    aws_secret_access_key: ENV['AWS_SECRET_KEY'],
    region: ENV['AWS_REGION'],
    host: ENV['AWS_HOST']
  }

  # キャッシュもS3に置くようにする
  config.cache_storage = :fog
  config.cache_dir = 'tmp/image-cache'

  # S3バケット名
  config.fog_directory = ENV['AWS_DIRECTORY']

  # CloudFrontのDomainName or CNAME(例: http://xxx.cloudfront.net)
  # CDNを使わない場合は、S3バケットの絶対パス(例: https://s3-us-west-2.amazonaws.com/<backet>)
  config.asset_host = ENV['AWS_S3_FULLPATH']
end
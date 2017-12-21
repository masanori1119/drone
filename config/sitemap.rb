SitemapGenerator::Sitemap.default_host = 'http://bestdroneschool.jp/'
SitemapGenerator::Sitemap.sitemaps_host = "https://s3-ap-northeast-1.amazonaws.com/#{ENV['S3_BUCKET_NAME']}"
SitemapGenerator::Sitemap.sitemaps_path = 'sitemaps/'
SitemapGenerator::Sitemap.adapter = SitemapGenerator::AwsSdkAdapter.new(
  ENV['S3_BUCKET_NAME'],
  aws_access_key_id: ENV["ACCESS_KEY_ID"],
  aws_secret_access_key: ENV["SECRET_ACCESS_KEY"],
  aws_region: ENV['AWS_REGION'],
)

SitemapGenerator::Sitemap.create do
  add root_path, :priority => 0.7, :changefreq => 'daily'

end

:storage => :s3,
  :s3_region => 'ap-northeast-1',
  :s3_endpoint => '.ap-northeast-1.amazonaws.com',
  :bucket => 'upload-test1234',
  :enable_starttls_auto => true,
  :s3_credentials => {
  :access_key_id => ENV["ACCESS_KEY_ID"],
  :secret_access_key => ENV["SECRET_ACCESS_KEY"],
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

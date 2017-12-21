 Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get 'sitemap.xml', to: redirect("https://s3-ap-northeast-1.amazonaws.com/#{ENV['S3_BUCKET_NAME']}/sitemaps/sitemap.xml.gz")
  root to: 'schools#index'
  devise_for :users
  get 'columns/categori_1' => 'columns#categori_1'
  get 'columns/categori_2' => 'columns#categori_2'
  get 'columns/colum1' => 'columns#colum1'
  get 'columns/colum2' => 'columns#colum2'
  get 'columns/colum3' => 'columns#colum3'
  get 'columns/colum4' => 'columns#colum4'
  get 'columns/colum5' => 'columns#colum5'
  get 'columns/colum6' => 'columns#colum6'
  get 'columns/colum7' => 'columns#colum7'
  get 'columns/colum8' => 'columns#colum8'
  get 'columns/colum9' => 'columns#colum9'
  get 'columns/colum10' => 'columns#colum10'
  get 'columns/colum11' => 'columns#colum11'
  get 'columns/colum12' => 'columns#colum12'
  get 'columns/colum13' => 'columns#colum13'
  get 'columns/colum14' => 'columns#colum14'
  get 'columns/colum15' => 'columns#colum15'

  resources :areas
  resources :columns
  resources :schools do
    resources :reviews

# 検索機能を追加するのに、collection do get '好きな名前'が必要。
collection do
    get 'search'
    get 'ranking'
    get 'zenkoku'
    get 'toiawase'
    get 'gaidorain'
    get 'hajimete'
    get 'gaido1'
    get 'gaido2'
    get 'gaido3'
    get 'gaido4'
    get 'license'
    get 'license_2'
    get 'license_3'
    get 'license_4'
    get 'license_5'
    get 'mail' => 'schools#mail'
    post 'mail_send' => 'schools#send_mail'
end
end



end


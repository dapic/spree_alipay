#source 'http://rubygems.org'
source 'http://ruby.taobao.org/'


gem 'sass-rails', '~> 4.0.3'
gem 'ruby-hmac' #http://ryanbigg.com/2009/07/no-such-file-to-load-hmac-sha1/

gem 'activemerchant', :require => 'active_merchant'
gem 'activemerchant_patch_for_china' #support alipay
group :test,:development do
  # Provides basic authentication functionality for testing parts of your engine
  gem 'spree_auth_devise', github: 'spree/spree_auth_devise', branch: '2-3-stable'
end
gemspec

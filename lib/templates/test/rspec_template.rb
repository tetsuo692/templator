gem "rspec", :lib => "spec", :env => 'test'
gem "rspec-rails", :lib => "spec/rails", :env => 'test'

use_cucumber_webrat = yes?("Should I use cucumber and webrat ?")

if use_cucumber_webrat
  gem "cucumber",                                         :source => "http://gems.github.com",  :env => 'test'
  gem "webrat",                                                                                 :env => 'test'
end

rake 'gems:install', :sudo => true, :env => 'test'

generate :cucumber if use_cucumber_webrat
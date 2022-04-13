# 画像の削除
Dir.chdir 'storage/'
FileUtils.rm(Dir.glob('*.*'))
FileUtils.rm_r(Dir.glob('*'))
Image.all.destroy_all

require "factory_bot_rails"
include FactoryBot::Syntax::Methods

Circle.destroy_all
User.destroy_all

create(:circle)
create(:user)
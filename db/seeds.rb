# 画像の削除
Dir.chdir 'storage/'
FileUtils.rm(Dir.glob('*.*'))
FileUtils.rm_r(Dir.glob('*'))
Image.all.destroy_all

require "factory_bot_rails"
include FactoryBot::Syntax::Methods

Circle.destroy_all
User.destroy_all

%w[月 火 水 木 金 土 日].each do |day_of_week|
  DayOfWeek.create!(day_name: day_of_week)
end

circle = create(:circle)
user = create(:user)
create(:favorite, user: user, circle: circle)
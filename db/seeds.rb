# 画像の削除
Dir.chdir 'storage/'
FileUtils.rm(Dir.glob('*.*'))
FileUtils.rm_r(Dir.glob('*'))
Image.all.destroy_all

require "factory_bot_rails"
include FactoryBot::Syntax::Methods

CircleAccount.destroy_all
Circle.destroy_all
User.destroy_all
DayOfWeek.destroy_all
Category.destroy_all

%w[月 火 水 木 金 土 日].each do |day_of_week|
  DayOfWeek.create!(day_name: day_of_week)
end

Category.create(name: '強化クラブ' )
Category.create(name: '準強化クラブ')
Category.create(name: '部')
Category.create(name: '同好会')
Category.create(name: '愛好会')

circle = create(:circle)
user = create(:user)
create(:favorite, user: user, circle: circle)
create(:circle_account, user: user, circle: circle)
module ApplicationHelper
  def current_user?(user)
    user && user == current_user
  end

  def default_meta_tags
    {
      site: 'KURAKAN',
      title: '帝京大学のサークル紹介サイト',
      reverse: true,
      separator: '|',
      description: '帝京大学の部、同好会、愛好会の全てのサークルが掲載されているサイトです。また、3つの便利な機能があります。一つ目はどれくらいの人がそのサークルを気になっているのかが知ることができ、どんな人がどんなサークルを気になっているのかどんなサークルを気になっているのかを知ることができます。二つ目が気になっているサークルを気になっているサークルをお気に入り登録できます。三つ目がサークル関係者からのお知らせがタイムライン形式で流れてきます。',
      keywords: '帝京大学,サークル一覧,サークル,帝京,クラブ勧誘',
      canonical: request.original_url,
      noindex: ! Rails.env.production?,
      icon: [
        { href: image_url('kurakan.ico') },
        { href: image_url('kurakan.jpg'), rel: 'apple-touch-icon', sizes: '180x180', type: 'image/jpg' },
      ],
      og: {
        site_name: 'KURAKAN',
        title: '帝京大学のサークル紹介サイト',
        description: '帝京大学の部、同好会、愛好会の全てのサークルが掲載されているサイトです。また、3つの便利な機能があります。一つ目はどれくらいの人がそのサークルを気になっているのかが知ることができ、どんな人がどんなサークルを気になっているのかどんなサークルを気になっているのかを知ることができます。二つ目が気になっているサークルを気になっているサークルをお気に入り登録できます。三つ目がサークル関係者からのお知らせがタイムライン形式で流れてきます。', 
        type: 'website',
        url: request.original_url,
        image: image_url('kurakan_ogp.jpg'),
        locale: 'ja_JP',
      },
      twitter: {
        card: 'summary_large_image',
        site: '@MOKUMOKUpro',
      }
    }
  end
end

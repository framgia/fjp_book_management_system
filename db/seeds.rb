User.create! email: "le.tat.tung@framgia.com",
  password: "tung123", password_confirmation: "tung123"
User.create! email: "le.vinh.thien@framgia.com",
  password: "thien123", password_confirmation: "thien123"
User.create! email: "le.dinh.phuc@framgia.com",
  password: "phuc123", password_confirmation: "phuc123"
User.create! email: "vu.thu.hien@framgia.com",
  password: "hien123", password_confirmation: "hien123"
User.create! email: "pham.huu.duc@framgia.com",
  password: "duc123", password_confirmation: "duc123"
User.create! email: "tran.thi.dieu.linh@framgia.com",
  password: "linh123", password_confirmation: "linh123"

Publisher.create!([
  {name: "AlphaBook", description: "Vietnam's publisher"},
  {name: "Nha Nam", description: "Vietnam's publisher"},
])

Author.create!([
  {name:  "Cody Lindley"},
  {name: "和田 祐一郎"},
])

Language.create!([
  {alias: "en", full_name: "English"},
])

Series.create!([
  {title: "IT", description: "HeadFirst"},
])

Book.create!([
  {title: "開眼! JavaScript ―言語仕様から学ぶJavaScriptの本質",
   publisher_id: 1, language_id: 1, isbn: "487311621X", series_id: 1},
  {title: "APIデザインケーススタディ ~Rubyの実例から学ぶ。問題に即したデザインと普遍の考え方 (WEB+DB PRESS plus)",
   publisher_id: 1, language_id: 1, isbn: "4774178020", series_id: 1},
  {title: "情報処理教科書 ネットワークスペシャリスト",
   publisher_id: 1, language_id: 1, isbn: "4798145777", series_id: 1},
  {title: "ラズパイマガジン 2016年6月号 日経BPパソコンベストムック",
   publisher_id: 1, language_id: 1, isbn: "B01EH2RX42", series_id: 1},
  {title: "手戻りなしの要件定義 実践マニュアル",
   publisher_id: 1, language_id: 1, isbn: "978-4-8222-7728-4", series_id: 1},
  {title: "達人に学ぶDB設計 徹底指南書 初級者で終わりたくないあなたへ",
   publisher_id: 1, language_id: 1, isbn: "4798124702", series_id: 1},
  {title: "手戻りなしの要件定義 実践マニュアル",
   publisher_id: 1, language_id: 1, isbn: "978-4-8222-7728-4", series_id: 1},
  {title: "SOFT SKILLS ソフトウェア開発者の人生マニュアル",
   publisher_id: 1, language_id: 1, isbn: "978-4822251550", series_id: 1},
  {title: "OpenCV3プログラミングブック",
   publisher_id: 1, language_id: 1, isbn: "978-4-8399-5296-9", series_id: 1},
  {title: "メタプログラミングRuby 第2版 大型本",
   publisher_id: 1, language_id: 1, isbn: "978-4-87311-743-0", series_id: 1},
  {title: "入門 コンピュータ科学 ITを支える技術と理論の基礎知識",
   publisher_id: 1, language_id: 1, isbn: "978-4-04-886957-7", series_id: 1},
  {title: "さらに進化した画像処理ライブラリの定番 OpenCV 3基本プログラミング",
   publisher_id: 1, language_id: 1, isbn: "978-4877833985", series_id: 1},
  {title: "Python機械学習プログラミング 達人データサイエンティストによる理論と実践 (impress top gear)",
   publisher_id: 1, language_id: 1, isbn: "978-4844380603", series_id: 1},
  {title: "Web API: The Good Parts",
   publisher_id: 1, language_id: 1, isbn: "4873116864", series_id: 1},
  {title: "情熱プログラマー ソフトウェア開発者の幸せな生き方",
   publisher_id: 1, language_id: 1, isbn: "4274067939", series_id: 1},
])

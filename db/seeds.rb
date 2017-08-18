User.create! email: "le.tat.tung@framgia.com",
  password: "tung123", password_confirmation: "tung123",
  role: "user", name: "Le Tat Tung", staff_code: "20132900"
User.create! email: "le.vinh.thien@framgia.com",
  password: "thien123", password_confirmation: "thien123",
  role: "user", name: "Le Vinh Thien", staff_code: "20132901"
User.create! email: "le.dinh.phuc@framgia.com",
  password: "phuc123", password_confirmation: "phuc123",
  role: "admin", name: "Le Dinh Phuc", staff_code: "20132902"
User.create! email: "vu.thu.hien@framgia.com",
  password: "hien123", password_confirmation: "hien123",
  role: "admin", name: "Vu Thu Hien", staff_code: "20132903"
User.create! email: "pham.huu.duc@framgia.com",
  password: "duc123", password_confirmation: "duc123",
  role: "user", name: "Pham Huu Duc", staff_code: "20132904"
User.create! email: "tran.thi.dieu.linh@framgia.com",
  password: "linh123", password_confirmation: "linh123",
  role: "user", name: "Tran Thi Dieu Linh", staff_code: "20132905"

for i in 0..100
  User.create! email: "le.dinh.phuc" + i.to_s + "@framgia.com",
    name: "Le Phuc" + i.to_s,
    password: "phuc123", password_confirmation: "phuc123"
end
Publisher.create!([
  {name: "オライリージャパン", description: "Vietnam's publisher"},
  {name: "翔泳社; 初版", description: "Vietnam's publisher"},
  {name: "技術評論社", description: "Vietnam's publisher"},
  {name: "日経BP社", description: "Vietnam's publisher"},
  {name: "インプレス", description: "Vietnam's publisher"},
  {name: "KADOKAWA/アスキー・メディアワークス", description: "Vietnam's publisher"},
  {name: "マイナビ", description: "Vietnam's publisher"},
  {name: "Packt Publishing", description: "Vietnam's publisher"},
  {name: "mitp Verlags GmbH & Co. KG", description: "Vietnam's publisher"},
  {name: "オーム社", description: ""},
  {name: "TAC出版", description: ""},
  {name: "ソシム", description: ""},
  {name: "工学社", description: ""},
  {name: "SBクリエイティブ", description: ""},
  {name: "SBクリエイティブ", description: ""},
  {name: "Oreilly & Associates Inc", description: ""},
  {name: "CQ出版", description: ""},
])

Author.create!([
  {name: "田中 哲(Tanaka Akira)",
    description: "2000年北陸先端科学技術大学院大学博士後期課程修了。同年より電子技術総合
      研究所。2001年に産業技術総合研究所に改組され現在に至る。プログラミング言語に興味を持ち、
      実践としてRubyの開発を行うコミッタでもある。Rubyへの貢献は細かいものまで含めると数えき
      れないが、大きなものは本書にかなり書いてある。"
  },
  {name: "Paolo Perrotta", description: "Paolo Perrottaは、ソフトウェアの設計・開発に10
    年以上携わっており、
    これまでに数百もの技術記事を執筆している。
    Rubyと恋に落ちる前は、Java、C++、C#を使っていた。
    アジャイル方法論・プラクティス・テクニックの早期導入者であり、
    インターネットファッション企業であるYoox社において、
    アジャイルチームのコーチを務めている。
    また、ヨーロッパ各地で開発者の教育も行っている。
    出張がないときは、彼女と猫と一緒に暮らすイタリアの自宅でRubyに没頭している。"},
  {name: "J. Glenn Brookshear", description: "J. Glenn Brookshear(グレン・ブル
    ックシャー)
    1944年テキサス州デントン生まれ。
    マーケット大学(Marquette University)数学統計計算機科学科名誉教授。
    合衆国海軍士官としてコンピュータソフトウェアの保守業務に携わった後、1975年より現職。
    コンピュータ科学のカリキュラム開発と計算理論に興味をもつ。
    ノーステキサス大学より数学の学士号を、ニューメキシコ州立大学より数学の修士号と博士号を取得。
    神林 靖(かんばやし やすし)
    1958年東京都千代田区生まれ。
    日本工業大学情報工学科准教授。慶應義塾大学経済学部,早稲田大学商学部,法政大学経営学部講師。
    三菱総合研究所研究員を経て、2001年より現職。計算理論と分散システム、そして政治科学に興味を
    もつ。慶應義塾大学より政治学の学士号を、ワシントン大学よりコンピュータ科学の修士号を、そし
    てトレド大学より博士号を取得。
    長尾高弘(ながお たかひろ)
    1960年千葉県生まれ。株式会社ロングテール社長。訳書多数"},
  {name: "Sebastian Raschka", description: "Sebastian Raschka著者ページについて
    この著者ページは、著者ご自身が「著者セントラル」から更新をすることができます。著者ページを詳し
    く紹介した「著者ページストア」もご覧ください。
    著者セントラルから
    ・自分の著者ページの作品一覧への本の追加
    ・著者紹介文 (例はこちら)
    ・著者写真 (例はこちら)
    ・サイン会などのイベント情報
    の更新ができます。著者セントラルに申し込んで、あなたの著者ページに、著者写真、著者紹介文を
    掲載しませんか？ご登録、ご利用は無料です。"},
  {name: "左門 至峰"},
  {name: "平田 賀一"},
  {name: "山内 大史"},
  {name: "幸田 廣信"},
  {name: "Jonathan Rasmusson"},
  {name: "株式会社リクルートテクノロジーズ"},
  {name: "TAC情報処理講座"},
  {name: " 波多野 安衣", description: " 波多野 安衣
    法学部出身のインフラエンジニア歴4年。
    新卒で入社後、Webサイトの企画運営を経て、知識ゼロの状態でインフラエンジニアとして
    ラッキング、構築、運用まで一通り経験。
    現在は、カスタマーサポート兼顧客提案型案件の運用エンジニアとして、
    運用設計・負荷試験・体制構築・トラブルシューティング・改善提案等、
    顧客折衝から実務まで横断的に担当する。
    女性新人エンジニアの教育に奮闘中！",
    avatar: File.open(Rails.root + "public/uploads/image/au-12.jpg")},
  {name: "寺尾 英作"},
  {name: "中村 知成"},
  {name: "横田 真俊"},
  {name: "JPCERT/CC"},
  {name: "Chad Fowler"},
  {name: "林 良二"},
  {name: "末永 貴一"},
  {name: "清水俊博", description: "清水俊博
    著者セントラルから
    ・自分の著者ページの作品一覧への本の追加
    ・著者紹介文 (例はこちら)
    ・著者写真 (例はこちら)
    ・サイン会などのイベント情報
    の更新ができます。著者セントラルに申し込んで、あなたの著者ページに、著者写真、著者紹介文を掲載しませんか？ご登録、ご利用は無料です。",
    avatar: File.open(Rails.root + "public/uploads/image/au-20.jpg")},
  {name: "大津繁樹"},
  {name: "Jxck"},
  {name: "小林秀和"},
  {name: "佐々木庸平"},
  {name: "篠崎祐輔"},
  {name: "松原 敬二", description: "松原 敬二
    著者セントラルから
    ・自分の著者ページの作品一覧への本の追加
    ・著者紹介文 (例はこちら)
    ・著者写真 (例はこちら)
    ・サイン会などのイベント情報
    の更新ができます。著者セントラルに申し込んで、あなたの著者ページに、著者写真、著者紹介文を掲載しませんか？ご登録、ご利用は無料です。"},
  {name: "牧 隆史"},
  {name: "日経ソフトウエア"},
  {name: "原田 騎郎"},
  {name: "吉羽 龍太郎", description: "吉羽 龍太郎
    クラウドコンピューティング、DevOps、インフラ構築自動化、アジャイル開発、組織改革を中心にオンサイトでのコンサルティングとトレーニングを提供。
    認定スクラムプロフェショナル（CSP） / 認定スクラムマスター（CSM） / 認定スクラムプロダクトオーナー（CSPO）。Developers Summit 2016ベストスピーカー(1位)。
    著書に『Amazon Web Services企業導入ガイド』（マイナビ）、『SCRUM BOOT CAMP THE BOOK』（翔泳社）、『サーバ／インフラエンジニア養成読本 DevOps編』『Chef実践入門』（技術評論社）、『CakePHPで学ぶ継続的インテグレーション』（インプレス）、
    訳書に『カンバン仕事術』（オライリー・ジャパン）、『Software in 30 Days』（アスキー・メディアワークス）など。

    Twitter: @ryuzee
    http://www.ryuzee.com/",
    avatar: File.open(Rails.root + "public/uploads/image/au-30.jpg")},
  {name: "松浦 隼人"},
  {name: "須藤 涼介"},
  {name: "生沼 一公"},
  {name: "森下 雅章"},
  {name: "日経リナックス"},
  {name: "Sam Newman"},
  {name: "Sam Newman"},
  {name: "Eben Hewitt"},
  {name: "ビープラウド"},
  {name: "Dave Thomas"},
  {name: "杉山 貴章"},
  {name: "大瀧 隆太", description: "大瀧 隆太
    著者セントラルから
    ・自分の著者ページの作品一覧への本の追加
    ・著者紹介文 (例はこちら)
    ・著者写真 (例はこちら)
    ・サイン会などのイベント情報
    の更新ができます。著者セントラルに申し込んで、あなたの著者ページに、著者写真、著者紹介文を掲載しませんか？ご登録、ご利用は無料です。"},
  {name: " Yugui（Yuki Sonoda)"},
  {name: "中津川 篤司"},
  {name: "前佛 雅人"},
  {name: "松原 豊"},
  {name: "米林正明", description: "米林正明
    バスケットボールとラーメンが大好きです。
    株式会社Abby(エビイ) 代表取締役社長。
    著書に
    『Docker入門』(技術評論社)
    『Facebook発 新プログラミング言語「Hack」スタートアップガイド』(技術評論社)
    『Javaルールブック』(技術評論社)
    等。",
    avatar: File.open(Rails.root + "public/uploads/image/au-47.jpg")},
  {name: "松本 勇気"},
  {name: "吉田 真吾",
    avatar: File.open(Rails.root + "public/uploads/image/au-49.jpg")},
  {name: "今井 智明"},
  {name: "松井 基勝", description: "松井 基勝
    大学在学中より黎明期のインターネットプロバイダの立ち上げや業務システムやゲームソフトウェアの開発を経験。大学卒業後はソニーコンピュータエンタテインメントに入社し、2001年頃に当時としてはまだ珍しい家庭用ゲーム機のオンライン通信ゲーム開発・運用に携わる。その後本格的なオンラインゲームの普及に伴い、大規模オンラインゲームシステムの構築・運用を経験。2010年、米国アマゾンドットコム社のクラウドサービス「アマゾンウェブサービス」の日本国内初のエンジニアとして採用され、様々な企業のクラウドサービス導入を技術支援。2015年、株式会社ソラコムの立ち上げに参画。 岐阜出身。早稲田大学理工学部電気電子情報工学科卒。",
    avatar: File.open(Rails.root + "public/uploads/image/au-51.jpg")},
  {name: "冨永 善視"},
  {name: "藤原 吉規"},
  {name: "大栗 宗"},
  {name: "松原豊"},
  {name: "片山 暁雄"},
  {name: "松下 享平"},
  {name: "大槻 健"},
  {name: "鈴木 貴典"},
  {name: "竹之下 航洋",
   avatar: File.open(Rails.root + "public/uploads/image/au-60.jpg")},
  {name: "日経Linux"},
  {name: "伊藤 望", description: "株式会社TRIDENT代表取締役。
    TRIDENTでは、顧客の開発・テスト環境の構築・改善に日々取り組んでいる。
    Seleniumに関する情報共有や質問の場である「日本Seleniumユーザーコミュニティ」の運営も行っている。",
   avatar: File.open(Rails.root + "public/uploads/image/au-62.jpg")},
  {name: "戸田 広"},
  {name: "沖田 邦夫"},
  {name: "宮田 淳平"},
  {name: "長谷川 淳"},
  {name: "清水 直樹"},
  {name: "Vishal Banthia"},
  {name: "Mark Fewster"},
  {name: "Dorothy Graham"},
  {name: "Adrian Mouat"},
  {name: "水頭 一壽"},
  {name: "米澤 遼"},
  {name: "藤田 裕士"},
  {name: "斎藤 康毅", description: "1984年長崎県対馬市生まれ。東京工業大学卒、東京大学大学院修了。現在、企業にて、コンピュータビジョンや機械学習に関する研究開発に従事。
    技術書大賞（2017年）受賞。
    著書に『ゼロから作るDeep Learning』、翻訳書に『コンピュータシステムの理論と実装』、『実践機械学習システム』、『実践 Python 3』（以上、オライリー・ジャパン）などがある。",
   avatar: File.open(Rails.root + "public/uploads/image/au-75.jpg")},
  {name: "Mark Summerfield"},
  {name: "銭 飛"},
  {name: "Ilya Grigorik"},
  {name: "森岡 澄夫", description: "著者略歴
    森岡　澄夫　（もりおか・すみお）
    http://www002.upp.so-net.ne.jp/morioka/
    FaceBook: Sumio Morioka

    1968年7月27日　　　　　名古屋市生まれ．
    1997年　　　　　　　 　　　大阪大学大学院修了．博士（工学）．
    1997年4月　　　　　　　　 日本電信電話㈱ システムエレクトロニクス研究所入所．
    同年10月　　　 　　　　　　日本IBM㈱ 東京基礎研究所入所．サーバ，HDD，Sony PS2・PSX等に搭載のASIC研究開発に従事．
    2003年7月　　　 　　　　 ソニー㈱ ユビキタス技術研究所入所．PSP・PS3搭載セキュリティ・サブシステム回路開発を行い，Sony MVP2004．
    2006年1月　　　 　　　　 日本電気㈱ 中央研究所入所．
    2013年1月～16年6月　ロンドン駐在，Imperial College London客員研究員．
    2016年8月　　　　　　　　インターステラテクノロジ㈱入社．低価格民生ロケットの研究開発に従事",
   avatar: File.open(Rails.root + "public/uploads/image/au-79.png")},
  {name: "Nicholas C. Zakas"},
  {name: "Stoyan Stefanov"},
  {name: "Michael S. Mikowski"},
  {name: "Josh C. Powel"},
  {name: "WINGSプロジェクト阿佐志保"},
  {name: "山田祥寛"},
  {name: "中井 悦司", description: "1971年大阪生まれ。予備校講師から転身、外資系ベンダーで
    Linux/OSSを中心とするプロジェクトをリードするかたわら、多数のテクニカルガイド、雑誌記事などを執筆。
    その後、Linuxディストリビューターのエバンジェリストを経て、現在は、米系IT企業のCloud Solutions Architectとして活動。"},
])

Language.create!([
  {alias: "en", full_name: "English"},
  {alias: "ja", full_name: "Japanese"},
  {alias: "ge", full_name: "German"}])

Series.create!([
  {title: "AI with Python", description: "HeadFirst"},
  {title: "メタプログラミングRuby", description: "Ruby Ruby"}])

Category.create!([
  {title: "Java", description: "Thinking in Java is a complete guide to the Java
    programming language. The book is very well organized, has plenty of examples
    and exercises for the reader to practice in each and every chapter. The most
    important feature about this book is that it covers Java SE5 and as the author
    states the code is also tested against a release candidate of Java SE6. Fairly
    new topics like Generics, Concurrency and Annotations are covered so well that
    it gives the reader fundamental to deep knowledge of each concept."},
  {title: "Mobile", description: "The Mobile Book features the most important
    things that you need to know as a designer, developer or mobile strategist
    for
    your websites."},
  {title: "Android", description: "See what's new with Android -
    from phones to watches and more. Visit the official site to
    explore and learn."},
  {title: "iOS", parent_id: 3, description: "If there is one piece of technology
    that is ubiquitous in the blind community today, it would have to be the
    iPhone. Ever since the release of the iPhone 3GS, people with little or
    no vision have been moving their fingers across a smooth piece of glass
    and doing things they never thought possible. Whether it's setting calendar
    appointments, looking at restaurant menus, or reading movie reviews,
    the iPhone has been a big part of it all."},
  {title: "Window Phone", parent_id: 3, description: "Informationvine.com
    connects you to the best results from across the web. Search & Find Now ·
    Find Relevant Information · Learn More · Quick & Easy Answers"},
  {title: "Web", description: "We develop cross-platform Web app for reading
    ebooks, and also publish high- quality ebooks, especially textbooks."},
  {title: "Ruby On Rails", parent_id: 6, description: "We want to teach you
    the single most valuable skill you can learn in the 21st century.
    Read the Learn Enough Story to find out more."},
  {title: "PHP", parent_id: 6, description: "PHP Book includes 250+ functions,
    2 indexes, MySQL, and Regular Expressions. Also available: free PDF of the
    PHP reference book."},
  {title: "Python", description: "Learn python and how to use it to analyze,
    visualize and present data! On-Demand Courses · 30-Day Guarantee · Lifetime
    Accessaffordable prices & classes on virtually every topic."},
  {title: "AI", description: "Are you searching for some best books to get
    acquainted with the basics of AI? Here is a list of 20 free
    books on Artificial Intelligence."},
  {title: "Design", description: "We asked some of the world's top design
    schools to share their favorite books. Here's what they ... A history
    book and design philosophy book in one."},
  {title: "UI", parent_id: 11, description: "While not a short read,
    this book is a solid resource for UX and interaction designers at all
    experience levels and I definitely think it's worth."},
  {title: "UX", parent_id: 11, description: "Free UX Consultation ·
    SF Bay Area Based · 13 Yrs and 400+ Projects ·
    Award Winning UX Agency Types:
    UX Strategy, UI Design, Frontend Developement"},
  {title: "Agile", description: "Discover the best Agile Project
    Management in Best Sellers. Find the top 100 most popular items in Amazon
    Books Best Sellers."},
  {title: "Other", description: "Something else"},
])

Book.create!([
  {title: "開眼! JavaScript ―言語仕様から学ぶJavaScriptの本質",
    public_date: "2013/6/19", pages: 192, rate: 4.5, rate_count: 8,
    dimension: "1.5 x 15 x 21 cm", publisher_id: 1,
    language_id: 2, isbn: "487311621X", description: "内容紹介
      本書は、JavaScriptの言語的特性で知っておくべきポイントをまとめた書籍です。
      JavaScriptの「オブジェクト」の理解を中心に据えて、JavaScriptをひと通り経験した人が陥り
      がちな落とし穴であるthis、プロトタイプチェーン(継承)、スコープチェーンなどをサンプルを使っ
      て解説します。
      コンパクトにまとめているので、jQueryなどのライブラリは使っているが言語仕様には
      あまり馴染みのない開発者や、他の言語を習得していてJavaScriptのクセを把握したいエ
      ンジニアが、
      短い時間でJavaScriptの特性についての理解を深めるのに最適な書籍です。
      「どのように」、「なぜ」動作するのかを知ることで、JavaScriptを心から
      理解する「目覚め」を体験してください。
      内容（「BOOK」データベースより）
      JavaScriptの言語的特性で知っおてくべきポイントをまとめた書籍。「オブジェクト」の
      理解を中心に据えて、ひと通り経験した後に陥りがちな落とし穴であるthis、プロトタ
      イプチェーン(継承)、スコープチェーンなどをサンプルを使って解説した。"},
  {title: "達人に学ぶDB設計 徹底指南書 初級者で終わりたくないあなたへ",
    isbn: "4774178020",
    publisher_id: 2, language_id: 2, pages: 360, rate: 4, rate_count: 10,
    dimension: "21 x 14.8 x 2.6 cm", public_date: "2012/3/16",
    description: ""},
  {title: "APIデザインケーススタディ ~Rubyの実例から学ぶ。問題に即したデザインと普遍の考え方
    (WEB+DB PRESS plus)",
    isbn: "4798145777", publisher_id: 3, language_id: 2, pages: 304,
    dimension: "21.2 x 14.5 x 1.5 cm", public_date: "2015/12/16",
    description: ""},
  {title: "情報処理教科書 ネットワークスペシャリスト 2016年版", isbn: "B01EH2RX42",
    publisher_id: 2, language_id: 2, pages: 560,
    dimension: "21.1 x 15 x 2 cm", public_date: "2016/3/11",
    description: "内容紹介
      本書は、ネットワークスペシャリスト試験の受験対策書です。出題傾向を分析した、
      解答テクニックやプロセスはもちろん、難関の午後問題を攻略するための様々な対策を提供します。
      【午後試験に照準を合わせた解説】
      技術解説の中でも、合否のカギとなる応用技術に重点を置いて解説しています。
      頻出の項目をもれなくおさえ、より深く理解することで午後試験を突破する実力を
      身につけることができます。
      【豊富な試験対策情報】
      序章で午後問題全般に対する解答テクニックを、さらに各章第1節で
      各技術項目に対する試験傾向と学習アドバイスを取り上げています
      。効率よく試験勉強に取り組めます。
      【トータル9年分の全問題をくわしい解説付きで提供】
      本書の掲載分だけでなく、平成19~平成27年度試験の全問題とその解答・解説、
      および解答用紙をPDFファイルでWeb提供しています。"},
  {title: "ラズパイマガジン 2016年6月号 日経BPパソコンベストムック", isbn: "B01EH2RX42",
    publisher_id: 4, language_id: 2, pages: 148, rate: 4, rate_count: 10,
    dimension: "80299 KB", public_date: "2016/4/18",
    description: "内容紹介
      ※この商品はタブレットなど大きいディスプレイを備えた端末で読むことに適しています。
      また、文字列のハイライトや検索、辞書の参照、引用などの機能が使用できません。
      ラズパイマガジンが新装刊！ 「配線図ベスト17」「最新Pi 3詳報」など情報満載
      いまや5ドル版も発売された人気の名刺大PCボード「Raspberry Pi（ラズパイ）」。
      このラズパイを使って「何かを作ってみたい」（Makeしたい）と思う人をとことん支援する「ラ
      ズパイマガジン」が「新装刊」になります。ラズパイを超小型のパソコンとして使う
      方法から電子工作までを基礎から解説して、幅広い活用法を指南します。
      特集1「アキバの人気パーツ 配線図ベスト17」では、最大手のパーツショップで最も人気
      の25種の部品を実際に動かす、17種類の配線図を一挙掲載します。初めて電子工作
      に取り組む初心者でも、配線図通りに組めば、本誌提供のプログラムを使って確実に部品を動かせます。
      特集2「Windows PCと同じ! ラズパイOSのはじめ方」では、推奨Linux
      OSの導入から基本的な使い方までが分かります。Windowsと比較しながら丁寧に解説します。
      さらに5ドルラズパイ「Pi Zero」を使った電子工作に早速挑戦し、恵方の
      方角を調べられるようにします。ファイルサーバーを作ったり、マークシートで動き
      を指示できる車を工作したりなどいろんなモノ作りに挑戦しましょう。"},
  {title: "手戻りなしの要件定義 実践マニュアル", isbn: "4822211878",
    publisher_id: 4, language_id: 2, pages: 184, rate: 4, rate_count: 10,
    dimension: "23.4 x 18.2 x 1.2 cm", public_date: "2011/4/14",
    description: "内容紹介
      要件定義に必要な知識、スキルは多岐にわたります。要件定義自体の進め方に関する
      知識はもちろん、業種や業務に関する知識、業務を分析・設計するスキル、さらに利用
      部門など関係者から意見や要望をうまく聞き出し、会議を円滑にリードして合意を
      得ていくコミュニケーション力も不可欠です。しかしこれらの知識やスキルは、
      設計工程ほど具体的に標準化されていない企業が多く、多くのエンジニアが見よう見まねに
      こなしているのが実情です。
      　本書は架空のシステム開発プロジェクトを例に、若手SEがベテランエンジニアの助言を
      基に要件定義を進めていき、多くの成果物を実際にまとめていく構成になっています。
      現場のリアリティ溢れる内容で、要件定義の進め方やコミュニケーションの手法、
      各種成果物のまとめ方を、実践的に学ぶ事ができます。
      　最近は単なるシステム導入にとどまらず、業務自体を抜本的に見直してシステムを
      構築するプロジェクトが増えてきました。その分、要件定義の難易度も大きく高まっています。
      本書を活用して、プロジェクトが手戻りなく進められる、「ぶれない要件」を固める力を
      磨いてください。"},
  {title: "SOFT SKILLS ソフトウェア開発者の人生マニュアル", isbn: "4822251551",
    publisher_id: 4, language_id: 2, pages: 456, rate: 4, rate_count: 10,
    dimension: "21 x 15 x 2.6 cm", public_date: "2016/5/20",
    description: "ソフトウエア開発者専用に、「より良い人生」を送るため
      のノウハウ・スキルを網羅した、生き方バイブル本です。
      プログラマーが良い人生を送るためには、技術習得法やキャリア構築法といった
      ノウハウに加え、対人的な交渉・指導・意思疎通などをうまく行える能力や知
      恵、すなわちソフトスキルが不可欠です!
      本書では、キャリアの築き方、自分の売り込み方、技術習得法、生産性の高め方
      といった仕事で成功する方法だけでなく、財産の築き方、心身の鍛え方、恋愛で成功する
      方法など、「人生全般をより良く生きる方法」を具体的に説明します。
      ■序文から抜粋
      あなたがこの複雑な産業で活路を開こうとしている若いソフトウェア開発者な
      ら、今手にしているこの本は、多くの知恵と優れたアドバイスを与えてくれるはずだ。
      ロバート・C・マーティン(アンクル・ボブ)
      ■「解説」から抜粋
      本書はソフトウェア技術者向けの書籍ではありますが、いわゆるテクノロ
      ジーのことはほとんど書いてありません。しかし、「成功者」になるために必要
      なそれ以外の多くのことが書いてあります。(中略)今こそ私たちがもっと成
      功に貪欲になれるチャンスなのではないでしょうか。
      ■「訳者あとがき」から抜粋
      全体を読み通して感じたのは、人の弱さを十分に意識して書かれていること、率直であること
      、上からではなく同じ高さから話しかけてくることでした。
      (中略)校正のために読み返してみると、株や栄養や腹筋のことなど、「何かで読ん
      だんだけどさあ」という枕で出てくるような話の多くを本書で覚えたことに気づきました。
      無意識のうちにいろいろな影響を受けているようです。この本、ただものではないですよ。"},
  {title: "OpenCV 3 プログラミングブック", isbn: "4839952965",
    publisher_id: 7, language_id: 2, pages: 360, rate: 4.5, rate_count: 8,
    dimension: "23.7 x 18.2 x 2.4 cm", public_date: "2015/9/29",
    description: "内容紹介
      コンピュータビジョンと機械学習のためのライブラリOpenCV 3をわかりやすく解説。
      画像処理(Image Processing)は、読んで字のごとく「画像を対象とする処理」を指します。
      今日では、カメラで撮影した画像の不要な部分を除去したり、画像を明るくしたり、
      目を大きくしたりなどは誰でも気軽に可能となっていて、画像処理が身近に存在しています。
      画像を取り扱うプログラムのためのライブラリであるOpenCV(Open Computer Vision
      Library)は、最初のリリース以降着実に機能と知名度を増してきました。
      今やOpenCVのバージョンは3となり、画像を取り扱う研究者は当たり前のようにOpen
      CVをインストールするようになりました。
      本書は画像処理ライブラリであるOpenCV、とくに2015年6月にリリースされたOpe
      nCV 3.0を主な対象として、ライブラリのインストール方法から基本的な使い方、
      さらには具体的な問題を解決する手順を示した書籍です。
      画像処理に興味がある、または過去に画像処理に関する勉強をしたことがあ
      る方、過去のバージョンのOpenCVを使ったことがあり、OpenCV 3.0に興味が
      ある方などを対象としています。
      本書が一人でも多くの方の助けになることを願っています。"},
  {title: "メタプログラミングRuby 第2版", isbn: "4873117437",
    publisher_id: 1, language_id: 2, pages: 292, series_id: 2,
    dimension: "23.4 x 18.2 x 2 cm", public_date: "2015/10/10",
    description: ""},
  {title: "メタプログラミングRuby 第1版", isbn: "4048687158", series_id: 2,
    publisher_id: 6, language_id: 2, pages: 312, rate: 4, rate_count: 10,
    dimension: "21 x 14.8 x 2.6 cm", public_date: "2010/8/28",
    description: "内容紹介
      メタプログラミングは強力なRubyの機能ですが、習得が難しいと言われていました。
      本書はメタプログラミングに必要なすべての概念を明確に、平易に解説。
      Rubyの最も複雑な秘伝を簡単に身につけましょう。"},
  {title: "入門 コンピュータ科学 ITを支える技術と理論の基礎知識", isbn: "4048869574",
    publisher_id: 2, language_id: 2, pages: 608, rate: 4, rate_count: 10,
    dimension: "23.2 x 18.4 x 3 cm", public_date: "22014/2/18",
    description: "内容（「BOOK」データベースより）
      きわめてオー  ソドックスなコンピュータ科学の教科書。コンピュータ科学が抽象化ツ
      ールの階層構造になっているという視点で統一的に記述されている。"},
  {title: "Python機械学習プログラミング 達人データサイエンティスト
    による理論と実践 (impress top gear)",
    isbn: "4844380605",
    publisher_id: 2, language_id: 2, pages: 456, rate: 4, rate_count: 10,
    dimension: "21 x 14.8 x 2.6 cm", public_date: "2012/3/16",
    description: "内容紹介
      機械学習の考え方とPython実装法がわかる!
      分類/回帰問題や深層学習の導入を解説

      ◎絶妙なバランスで「理論と実践」を展開
      ◎Pythonライブラリを使いこなす
      ◎数式・図・Pythonコードを理解する

      機械学習の各理論を説明し、Pythonプログラミングによる実装を解説。
      初期の機械学習アルゴリズムから、深層学習の導入までを見ていきます。

      原著『Python Machine Learning』は米国Amazon.comでベストセラー!
      3つのカテゴリーで首位(2016/5/24時点)
      Data Modeling & Design/Data Processing/Neural Networks

      1章 「データから学習する能力」をコンピュータに与える
      2章 分類問題 —機械学習アルゴリズムのトレーニング
      3章 分類問題 —機械学習ライブラリscikit-learnの活用
      4章 データ前処理 —よりよいトレーニングセットの構築
      5章 次元削減でデータを圧縮する
      6章 モデル評価とハイパーパラメータのチューニングのベストプラクティス
      7章 アンサンブル学習 —異なるモデルの組み合わせ
      8章 機械学習の適用1 —感情分析
      9章 機械学習の適用2 —Webアプリケーション
      10章 回帰分析 —連続値をとる目的変数の予測
      11章 クラスタ分析 —ラベルなしデータの分析
      12章 ニューラルネットワーク —画像認識トレーニング
      13章 ニューラルネットワーク —数値計算ライブラリTheanoによるトレーニングの並列化
      付録 Jupyter Notebookの基本/matplotlibによる可視化/行列の固有分解

      ■「はじめに」より抜粋
      機械学習の実務家になりたい、問題をもっとうまく解決したい、機械学習の研究者
      になりたい場合、
      本書はそのためにある。ただし、初心者は機械学習の理論に圧倒されてしまうかも
      しれない。筆者が思うに、
      実践的なサンプルコードを使用することは重要である。実際に試してみるこ
       とで、概念が明確になるからだ。
      筆者の使命は、これまでとは違う本を提供することである。それは機械学習
      の概念に不可欠な内容を取り上げ、
      機械学習のアルゴリズムの仕組み、それらを使用す
      る方法、そして(最も重要な)一般的な落とし穴を
      避ける方法を直観的かつ有益な方法で説明する本である。

      【本書の解説記事を技術解説サイト(Think IT)に掲載】
      ◎記事タイトル:「ブック・インサイド―『Python機械学習プログラミング』学び方ガイド」
      本書に必要な前提知識(Python/ライブラリ/数学)、本書の構成と読み方のプラン等について説明し、
      本書を通してより効果的に機械学習を学ぶための解説となっています。"},
  {title: "Python Machine Learning: Unlock Deeper Insights into Machine Learning
    With This Vital Guide to Cutting-edge Predictive Analytics", isbn: "1783555130",
    series_id: 1,
    publisher_id: 8, language_id: 1, pages: 360, rate: 4.5, rate_count: 8,
    dimension: "21 x 14.8 x 2.6 cm", public_date: "2012/3/16",
    description: "About This Book
      Leverage Python's most powerful open-source libra
      ries for deep learning, data wrangling, and data visualization
      Learn effective strategies and best practices t
      o improve and optimize machine learning systems and algorithms
      Ask – and answer – tough questions of your d
      ata with robust statistical models, built for a range of datasets"},
  {title: "Python: Deeper Insights into Machine Learning", isbn: "B01LD8K994", series_id: 1,
    publisher_id: 8, language_id: 1, pages: 360, rate: 4, rate_count: 10,
    dimension: "21 x 14.8 x 2.6 cm", public_date: "2012/3/16",
    description: "About This Book
      Improve and optimise machine learning systems using effective strategies.
      Develop a strategy to deal with a large amount of data.
      Use of Python code for implementing a range of machine learning
      algori  thms and techniques.
      Who This Book Is For
      This title is for data scientist and researchers who are
      already into the field of data science and want to see
      machine learning in action and explore its real-world application.
      Prior knowledge of Python programming and mathematics is must with
      basic knowledge of machine learning concepts."},
  {title: "Machine Learning mit Python - Das Praxis-Handbuch für
    Data Sience, Predictive Analytics und Deep Learning (mitp Professional)",
    isbn: "B01MXOGW9T", series_id: 1, rate: 4, rate_count: 10,
    publisher_id: 9, language_id: 3, pages: 360,
    dimension: "21 x 14.8 x 2.6 cm", public_date: "2012/3/16",
    description: "Datenanalyse mit ausgereiften statistischen Modellen
      des Machine Learnings
      Anwendung der wichtigsten Algorithmen und Python-Bibliotheken wie NumPy,
      SciPy, scikit-learn, matplotlib, pandas, Theano und Keras
      Verständlicher und eleganter Python-Code zur Optimierung Ihrer Algorithmen
      Machine Learning und Predictive Analytics verändern die Arbeitsweise von
      Unternehmen grundlegend. Die Fähigkeit, in komplexen Daten
      Trends und Muster zu erkennen, ist heutzutage für den langfristig
      en geschäftlichen Erfolg ausschlaggebend und entwickelt
      sich zu einer der entscheidenden Wachstumsstrategien.
      Sebastian Raschka gibt Ihnen einen detaillierten Einblick in die
      Techniken der Predictive Analytics. Er erläutert die grundlegenden
      theoretischen Prinzipien des Machine Learnings und wendet sie praktisch an.
      Dabei konzentriert er sich insbesondere auf das Stellen und
      Beantworten der richtigen Fragen.
      Python zählt zu den führenden Programmiersprachen im Bereich
      Data Science und ist besonders gut dazu geeignet, grundlegende Erkenntnisse a
      us Ihren Daten zu gewinnen sowie ausgefeilte Algorithmen und
      statistische Modelle auszuarbeiten, die neue Einsichten liefern
      und wichtige Fragen beantworten.
      Der Autor erläutert in diesem Buch ein breites Spektrum
      leistungsfähiger Python-Bibliotheken wie scikit-learn, Theano ode
      r Keras. Sie lernen Schritt für Schritt die Grundlagen von
      Python für maschinelle Lernverfahren kennen und setzen dabei
      eine Vielfalt von statistischen Modellen ein."},
  {title: "ネスペ 27 礎 -ネットワークスペシャリストの最も詳しい過去問解説 (情報処理技術者試験)",
    isbn: "477418067X",
    publisher_id: 3, language_id: 2, pages: 312,
    dimension: "21.2 x 15 x 1.7 cm", public_date: "2016/4/9",
    description: "内容紹介
      ネットワークスペシャリスト試験午後対策の定番書『ネスペ』シリーズの27年度版です。27年度試験「午後I・午後II」に的を絞り、問題文を掘り下げ、答えを導き出す思考プロセスを詳しく解説しています。解答の組み立て方がよくわかり、正答以外がなぜ間違っているかも納得できます。本書で「真の実力」が身に付きます! 今回はエンジニアにとっての「礎」をテーマにしたマンガを掲載。ある事件を解決すべく「礎」について学んでいく主人公。事件の行方はいかに…。本書での学習を通して,「礎」とは何かをつかんでいただければ幸いです。

      内容（「BOOK」データベースより）
      平成27年度の「午後1」「午後2」のみを徹底的に分析し、深く解説。問題文にじっくり向き合えば、正答の導き方がわかります!ネットワークの「基礎」とは何かをつかむ―マンガ「ネット犯罪の犯人を追え」を掲載。"},
  {title: "ネスペ 26　道－ネットワークスペシャリストの最も詳しい過去問解説 (情報処理技術者試験)",
    isbn: "4774172944",
    publisher_id: 3, language_id: 2, pages: 352, rate: 4, rate_count: 10,
    dimension: "2015/3/28", public_date: "21 x 15 x 2.4 cm",
    description: "内容紹介
      大好評いただいた過去問解説書『ネスペの剣 25』に続く26年度版です。26年度試験の「午後Ⅰ・午後Ⅱ」に的を絞り、問題文を深く掘り下げ、答えを導き出す思考プロセスを詳しく解説しています。解答の組み立て方がよくわかり、正答以外がなぜ間違っているかも納得できます。本書で「真の実力」が身に付きます！さらに今回はネスペを志す方への「道」の指針を示したストーリーも掲載。迷いながらも前に進み、道を切り開いた主人公の姿から効果的な勉強法を掴み、自分の道を考えていただければ幸いです。ネスペ受験者にエールをおくります！

      内容（「BOOK」データベースより）
      平成26年度の「午後1」「午後2」のみを徹底的に分析し、深く解説。問題文にじっくり向き合えば、正答の導き方がわかります!ネスペを志す方への「道」の指針を示したストーリーも掲載。"},
  {title: "ネスぺの剣25 ~ネットワークスペシャリストの最も詳しい過去問解説 (情報処理技術者試験)",
    isbn: "4774163899",
    publisher_id: 3, language_id: 2, pages: 328, rate: 4.5, rate_count: 8,
    dimension: "21 x 14.8 x 2.2 cm", public_date: "2014/3/27",
    description: "内容紹介
      Amazonのネットワークスペシャリスト部門でダントツ人気を誇る過去問解説書「ネスペ」シリーズの
      最新版が装いを新たに登場! 【25年度試験の「午後I・午後II」に的を絞って解説/問題文を深く掘り下げ、
      答えを導き出す思考プロセスを詳しく解説/本質の理解を問う確認問題により、理解度のチェックができる
      /正答以外がなぜ間違っているかということにも言及/解答の組み立て方がわかる】といった特徴が受験者に支持されています。
      「合格のポイント」解説も、正答を導き出すための実践的なアドバイスが満載。「真の実力」が身に付きます!
      内容（「BOOK」データベースより）
      ネットワークスペシャリスト試験平成25年度の「午後1」「午後2」のみを徹底的に分析し、深く解説。"},
  {title: "アジャイルサムライ−達人開発者への道",
    isbn: "4274068560",
    publisher_id: 10, language_id: 2, pages: 288, rate: 5, rate_count: 2,
    dimension: "21 x 15 x 1.6 cm", public_date: "2011/7/16",
    description: "内容紹介
      マスターセンセイと学ぶアジャイル開発の道
      動くソフトウェアを素早く開発するための「アジャイルソフトウェア開発手法」を、実際に導入するにはどうすればよいかを、豊富な図を使い親しみやすい言葉で解説しています。経験豊かな著者が具体的なノウハウをまとめた本書は、アジャイル開発を導入したいと考えている組織や人のための「現場のマニュアル」として役立ってくれることでしょう。
      著者からのコメント
      日本の読者の皆さんへ
      君がこの本を手に取ったことに祝福を。おめでとう。というのも、君にはすごく大事な2つのことが備わってるってことだからだ。
      1. 君は学ぶことが心から好きだ。
      2. 君はソフトウェアのことを大切に思っている。

      このどちらもが大切なんだ。君が学びたいという気持ちを抱かなければ、私との旅がこうして幕を開けようとすることもなかった。君がソフトウェアのことなんて気にしない人物だったら、私たちの世界は今よりも暮らしづらいものになっていただろう。

      なぜなら世界はソフトウェアを必要としてるわけだから。世界はソフトウェアを作ることを手助けする人を必要としてるんだ。そう、君みたいなね。私たちが、君みたいに才気煥発で、頭が良くて、思慮深い、情熱にあふれた人達をもっと惹きつけられるようになるには、もっと成果をあげるソフトウェアの作り方が必要なんだ。わくわくするような、毎朝目を覚ますたび、今日一日またソフトウェアを作ることが楽しみで仕方がないようなやつがね。

      そのために私は本書を書いた。もっとうまくソフトウェアを届けるやり方を探し求め、分かちあい、見出していこう（でもあんまり深刻に受け止めすぎないで。楽しみながらやっていこう）。

      君の探してることが、本書を読んで見つけられることを願っている。もし見つからなかったとしても、探し続けることを止めないでほしい。

      2011年4月26日

      ジョナサン・ラスマセン

      （日本語版序文より）

      ----

      本書の特長

      タイトルに加えて、ジョナサン独特の筆致と妙な味わいの挿絵に幻惑された読者がいるかもしれませんが、本書は見た目によらず硬派な1冊です。監訳者たちが本書の価値と特長だと捉えている点を、簡単にまとめておきます。1）開発者------もっといえばプログラマ向けに焦点を合わせていること、2）アジャイルな開発の進め方をひと通りすべてカバーしていること、3）よく練られた5部15章の構成になっていること、4）特定の方法論を前提としていないこと、5）ユーモアと楽しむ気持ちを忘れていないこと。これだけの内容を300ページ以内に収めたジョナサンたち原著執筆チームの力量には「お見事！」と喝采を送りたいです。

      ...

      よく誤解されることなのですが、アジャイル開発は腕自慢の「優秀な」プログラマでなければ実践できない、というものではありません。たとえば、監訳者2人はアジャイル開発を実践していますが、プログラマとしてはいたって普通です。ですから、顧客にちゃんと価値を届けるためには、エンジニアリングプラクティスという先人の知恵の集大成を「問答無用」で「規律正しく実践」しなければなりません。それに、普通のプログラマは独りで実現できることもたかが知れています。だからチームを組むのです。

      本書の冒頭でジョナサンは宣言します。「コードを実行するのはコンピュータかもしれないが、そのコードを生み出し、保守するのは私たち人間なんだ」と。私たちプログラマの多くは、普通のプログラマです（たくさんいるから「普通」なのです）。そんな私たちがチームを組んで成果をあげるには、物事をうまく運ぶための仕組みやプラクティスが必要です。だからといって、既存のアジャイル開発手法の提示するやり方を形だけなぞってもなかなかうまくいきません。

      スケジュールを2週間単位で分割したMicrosoft Execlのシートを作ればイテレーションなのか？毎朝集まればデイリースタンドアップなのか？テストを先に書けばテスト駆動開発なのか？------「そうじゃないんだ」とばかりに、ジョナサンは「12の原則」を、字面だけでなく真に理解して体現した「圧倒的なアジャイルプロジェクトの姿」を私たちに示してくれます。10.6「デイリースタンドアップ」（p. 213）などはその好例です（毎朝、天地神明に誓ってから仕事をしてますか？ただ突っ立ってボソボソしゃべってるような開発者はいねがー？）。

      私たちのソフトウェア開発の現場をどうにかできるのは私たちだけです。しかも、一つとして同じ現場はありません。だから「どんな書籍も手法も、君が必要とするありとあらゆるものを用意することなんてできない」のです。私たちは「自分の頭で考えるのをやめちゃだめ」なのです。

      （「監訳者あとがき」より）"},
  {title: "エンジニアのためのGITの教科書 (WEB Engineer’s Books)",
    isbn: "4798143669",
    publisher_id: 2, language_id: 2, pages: 200, rate: 4, rate_count: 10,
    dimension: "25 x 18.2 x 1.6 cm", public_date: "2016/1/20",
    description: "内容紹介
      これだけは知っておきたい、開発現場の本格スキル。

      本書は、Gitが実践で使えるようになるための本です。基本的な使い方はもちろん、分散型バージョン管理システムの仕組みを理解するところから、ブランチの設計・運用、継続的インテグレーションといった実践的なチーム開発手法まで解説していきます。Gitは「どういうものか」から、具体的に「どう使うか」まで、しっかり学べるので、脱初心者に最適な一冊です。Gitコマンド早見表付き。

      「古くならないGitの普遍的な部分、検索しても見つからない現場のノウハウを詰め込んだ一冊に仕上げました。Gitのバイブルとして長く使っていただけると幸いです」(著者前書より)

      【こんな方に最適】
      1. Git初学者で、開発の技術を学ぶのと同様に、必須のツールとして覚えておきたい、という方。
      2. Gitは覚えはじめで挫折してしまったという人が、今度こそちゃんと覚えたいという方。
      3. Gitを使いはじめて、もっと便利な使い方をしたい、問題の解決法がみつからない、あるいは、Gitの使い方は知っているが、チームでどのようにGit運用をしていくのかわからないといった方。"},
  {title: "ネットワークスペシャリスト 合格テキスト 2016年度 (情報処理技術者試験対策) ",
    isbn: "4813265529",
    publisher_id: 11, language_id: 2, pages: 496,
    dimension: "21 x 14.8 x 2.5 cm", public_date: "2016/3/7",
    description: "内容紹介
      【最短合格を目指す人のためのインプット教材の決定版! 】
      本書の目次順に学習すれば万全の試験対策が可能です!

      ネットワークスペシャリスト試験に必要な知識を習得していただくための基本テキストです。
      ネットワークの専門知識や技術を把握したうえで、合格するために必要な
      知識や技術をテーマ別に分類し、体系的にまとめています。

      【本書の特徴】
      ■最も効率よく学習できる順番に項目を並べています!
      長年にわたる情報処理試験対策の指導実績に基づいて構成しているので
      順番通りに学習していくことで充分な試験対策をとれます。

      ■各Sectionの冒頭に、重要論点を「5秒でチェック」できるまとめを掲載!
      覚えておきたい事柄や用語が簡潔に記されています。
      何を学ぶべきなのか確認してから進めるので効率のより学習が実現できます。

      ■「リンク参照」で、関連する項目を素早く確認OK!
      本文にでてくる用語が他の章Sectionでも触れられていることを示します。

      ■「重要度アイコン」で、効率のよいメリハリ学習が可能!
      各項目の重要度を鉛筆の色づけ本数で示しています。

      ■章ごとに、キーワードの穴埋め形式による「確認問題」を設定!
      各章末にキーワード穴埋め問題を掲載。重要な用語を習得しましょう。

      ■本試験3回分の詳細な出題傾向分析と、2016年度本試験に向けた学習戦略付き!
      合格に必要な情報が満載です!

      ━━━━━━━━━━━━━━━━━━━━━━
      本試験に自在に対応できる実戦知識が
      体系的に身につきます!
      ━━━━━━━━━━━━━━━━━━━━━━
      出版社からのコメント
      Amazon「TAC出版ストア」では、関連書籍がまとめてチェックできます。ぜひご利用ください!
      「TAC出版ストア」はこちらから→http://www.amazon.co.jp/b?node=2827320051"},
  {title: "現場のインフラ屋が教える インフラエンジニアになるための教科書",
    isbn: "4802610432",
    publisher_id: 12, language_id: 2, pages: 296, rate: 4, rate_count: 10,
    dimension: "23.2 x 18.2 x 2.2 cm", public_date: "2016/6/24",
    description: "内容紹介
      インフラエンジニアという言葉がひろく一般に使われるようになったのは、ここ数年のことでしょうか。
      一般的な言葉として使われるようになった一方で、「インフラエンジニアが何をやっているのか」ということは、意外と知られていません。
      技術的なことは、ネットワークやサーバの解説書を読めばわかります。
      しかし、インフラエンジニアが、現場でどのような仕事をしているのか、どういう技術が必要なのか、
      といった情報があまり知られていないな……ということから本書の企画がはじまりました。
      「単なる技術書ではない、インフラエンジニアの仕事を支える現場の知識を多くのインフラエンジニア志望者に伝えたい」
      これが、本書のコンセプトです。
      これからインフラエンジニアを目指そう、あるいはインフラエンジニアになってしまったけど、
      自分の知識はこれでいいのだろうかと思っている方にも、ぜひ読んででいただきたいと思います。
      内容（「BOOK」データベースより）
      設計・構築はどう始める?インシデントが発生したときの対応は?DevOpsを導入したいけど、どうすればいい?この先10年を生き残るためには何が必要?現場のインフラエンジニアが「どうしても伝えたかった」こと。"},
  {title: "情熱プログラマー ソフトウェア開発者の幸せな生き方",
    isbn: "4274067939",
    publisher_id: 10, language_id: 2, pages: 200,
    dimension: "21 x 14.8 x 1.6 cm", public_date: "2010/2/26",
    description: "内容紹介
      本書は、等身大のプログラマの一人がキャリア開発の重要性を説き、そのための心構えなどを示したもの。「プログラマはビジネス視点を持って意識的なキャリア開発をすべき」という視点から、その実践方法を著者独特の生き生きとした共感できる語り口で伝える。

      『My Job Went To India オフショア時代のソフトウェア開発者サバイバルガイド』(オーム社、2006年)の改題改訂第2版。

      著者略歴 (「BOOK著者紹介情報」より)
      Fowler,Chad
      世界的に著名なソフトウェア開発者、トレーナー、マネージャ、演説家、ミュージシャン。過去10年間に、世界最大級の企業のいくつかで働き、最優秀のソフトウェア開発者という評価を受けた。InfoEther,Inc.のCTOとして、Ruby言語における顧客からの困難な問題の解決に、その時間の多くを割いている。RubyConf、RailsConf、RailsConf Europeの共同主催者であり、多数の人気ソフトウェア書籍の著者または共著者である(本データはこの書籍が刊行された当時に掲載されていたものです)"},
  {title: "OpenCV3ではじめるWindowsアプリ開発 (I・O BOOKS)",
    isbn: "4777519279",
    publisher_id: 13, language_id: 2, pages: 207,
    dimension: "20.6 x 14.8 x 1.8 cm", public_date: "2015/12",
    description: "内容（「BOOK」データベースより）
      OpenCVの「CV」は「コンピュータビジョン」の略です。オープンソースの画像処理ライブラリで、読み込んだ「画像」や「動画」を瞬時に処理したり、解析や変換するときに使われます。その機能の豊富さから、さまざまなシーンで活用されています。OpenCVは「C/C++」で書かれているので、OpenCVのパフォーマンスを生かすには、アプリもC/C++を使ってネイティブアプリにしたほうが有利です。本書では、「OpenCV3.0」を用いた、Windows用「デスクトップ・アプリ」の作り方を解説しています。

      著者略歴 (「BOOK著者紹介情報」より)
      林/良二
      日本大学工学部電気工学科を卒業後、民放ラジオ局の子会社で番組制作に携わる放送音声ミキサーを担当。その後、電機会社で音響機器の回路設計、デジタルオーディオ応用機器の商品開発を担当。音声圧縮応用の開発会社の立ち上げに参画の後、独立してのソフト開発を行なう。その後、ソフト開発会社に入社、DSCプリント店頭受付機アプリケーションの開発やデジタルイメージング応用アプリケーション、プリントラボ用システムの開発を担当。現在、屋号「プロノワ」にて、画像処理、音声処理を中心に開発業務に携わる(本データはこの書籍が刊行された当時に掲載されていたものです)"},
  {title: "LPIC Level.1 1回で合格必達テキスト+問題集 【Version 4.0対応】 (一冊で完全合格シリーズ)",
    isbn: "4797377224",
    publisher_id: 14, language_id: 2, pages: 576, rate: 5, rate_count: 2,
    dimension: "21.2 x 14.6 x 3 cm", public_date: "2015/7/18",
    description: "内容紹介
      はじめの一歩から学べるLPIC試験対策本

      わかりやすさが「ダン違い」
      基本のキからやさしく解説、「はじめのいっぽ」から学べます!

      模擬試験2回分、合計240問に加え、練習問題112題=352題、各章ごとの一問一答で演習力がつく!
      『超』初心者でも合格必達! ! 本格学習の前準備、懇切丁寧な補足注釈つき

      【こんな方にオススメ! 】
      Linux実務経験のある方などLPICLevel1試験の合格圏内な方「だけではなく」、初心者の方に最適です。

      内容（「BOOK」データベースより）
      試験合格に必要な知識を完全網羅。詳解テキスト+模擬問題345問。練習問題+模擬試験2回分。最短ルートで合格必達!!『超』初心者でも合格必達!前提知識から解説充実。試験直前向けの要点まとめチェックリスト付き。"},
  {title: "サーバサイドJavaScript Node.js入門 ",
    isbn: "4048703676",
    publisher_id: 6, language_id: 2, pages: 584,
    dimension: "23.4 x 18.2 x 3.6 cm", public_date: "2012/10/26",
    description: ""},
  {title: "情報処理教科書 エンベデッドシステムスペシャリスト 2017~2018年版",
    isbn: "4798148865",
    publisher_id: 2, language_id: 2, pages: 592, rate: 4.7, rate_count: 13,
    dimension: "21.1 x 15 x 2.5 cm", public_date: "2016/9/13",
    description: "内容紹介
      2人のプロによるES試験対策の決定版!

      情報処理技術者試験のプロフェッショナルと、組込みソフトウェアのプロフェッショナルの最強タッグ。ES試験と組込み開発の現場を知り尽くした2人による、抜群の午後試験重点対策テキスト。

      【2人の専門家による無駄のない構成】
      エンベデッドシステムスペシャリスト試験合格に直結する必須の知識とテクニックを簡潔にまとめています。

      【最新傾向の対応した演習問題】
      過去問題を徹底分析し、頻出テーマを割り出した過去問および最新の過去問を丁寧な解説とともに掲載しています。

      【平成29年度試験もフォロー】
      刊行後に行われる平成29年度試験についてもWebダウンロードでフォローします。

      内容（「BOOK」データベースより）
      午後問題を解くプロセスを身につける「解答テクニック」を序章に掲載。ES試験特有の技術内容を重点的に解説。豊富な図表を用いたイメージしやすい解説。午前2試験の頻出分野について精選した過去問題を100問掲載。午後1試験は直近3回分(平成26~28年)、午後2試験は直近2回分(平成27~28年)の問題を、的確な解説と共に掲載。"},
  {title: "情報処理教科書 高度試験午前I・II 2017年版",
    isbn: "4798148873",
    publisher_id: 2, language_id: 2, pages: 608, rate: 4, rate_count: 10,
    dimension: "21.1 x 15 x 2.4 cm", public_date: "2016/9/13",
    description: "内容紹介
      シリーズ累計180万部超の人気試験対策書!

      翔泳社の情報処理教科書シリーズは、受験セミナーの人気講師や第一線で活躍する現役技術者など、各分野のエキスパートが合格に必要な知識について、ポイントを絞って解説しているため、効率よく学習することができます。
      知識解説に加えて、過去問題を中心とした問題演習を丁寧な解説とともに掲載しているため、実戦力を効果的に身につけることができます。

      【本書の特徴】
      ・午前Iと午前IIの両方の対策が行える
      ・よく出る問題を選んで掲載しているので、無駄なく効率よく学べる
      ・問題の背景となる知識も解説しているので、類似問題にも対応できる
      ・高度試験すべてをカバーしているので、他試験から再出題される可能性がある問題をチェックできる
      ・対応試験とレベルを明示してあるので、自分に必要な問題が一目でわかる
      ・読みやすく機能的な2色刷
      ・赤いシートで暗記できているかをチェックできる
      ・応用情報技術者の午前対策にも活用できる

      著者略歴 (「BOOK著者紹介情報」より)
      松原/敬二
      1970年生まれ、京都大学薬学部卒、大阪市立大学大学院創造都市研究科(システムソリューション研究分野)修士課程修了。複数のIT企業等に勤務し、これまでにソフトウェア開発、インターネットサービスの企画・開発、ネットワーク・サーバの構築・運用、IT企業の社員研修講師、専門学校講師、中小企業支援などに携わる。資格:情報処理技術者(プロジェクトマネージャ以外のすべて)、中小企業診断士、電気通信設備工事担任者(AI・DD総合種)、JASA組込みソフトウェア技術者(ETEC)クラス2グレードAなど(本データはこの書籍が刊行された当時に掲載されていたものです)"},
  {title: "日経ソフトウエア2016年11月号",
    isbn: "",
    publisher_id: 4, language_id: 2, rate: 4, rate_count: 10,
    dimension: "28.2 x 21.1 x 1.4 cm", public_date: "2016/9/24",
    description: "内容紹介
      【特集1】匠が伝授! Webアプリの作り方 ~10の基礎を覚えて楽々開発~

      Webアプリ開発法は、時代に合わせて変化しています。
      JavaScriptは徐々に新バージョンに移行しつつあり、フレームワークやライブラリも進化しています。
      本特集では、現在のモダンなWebアプリ開発に必要な知識を説明し、実際の現場で行われている開発フローでサンプルアプリを作ります。

      【特集2】イマドキのBASICを楽しもう ~最新のXojoと子供向け教材のIchigoJamで~

      BASICはその名前の通り、ベーシックでわかりやすいプログラミング言語。
      今回は、BASICによるマルチプラットフォーム&クロス開発対応の最新ツール「Xojo」と、
      子供向け小型パソコンとして話題になってきている「IchigoJam」のBASICプログラミングを紹介します。

      【新連載! 】
      ・大人のためのマイクラ講座 「レッドストーンて何? MODって何?」
      ・日本と世界で働くエンジニア 「グローバル人材を目指さずに活躍する」

      【特別レポート】
      ・3D拡張現実が開く新しい世界 マイクロソフトHoloLensを使ってみた
      ・CEDEC 2016レポート ゲームの「過去」と「未来」が交錯
      ・注目エンジニアの「この技術が気になる! 」

      【好評連載陣! 】
      ・吉岡直人のsyntax error
      ・すぐに役立つ! JavaScriptコード
      ・チャレンジ! ラズベリーパイ
      ・実務を快適にするExcel VBA
      ・素朴な疑問をスッキリ解消 矢沢久雄のソフトウエアの基礎 Q&A

      ★★★特別付録つき! ★★★

      【極厚冊子付録】C#でデスクトップアプリが作れるようになる本

      C#で美しいユーザーインタフェースのアプリケーションを作りたい人、必読!
      ライブラリを使ってモダンな外観を作る手順も詳しく解説しています。"},
  {title: "WEB+DB PRESS Vol.93 ",
    isbn: "4774182427",
    publisher_id: 3, language_id: 2, pages: 168, rate: 4.7, rate_count: 13,
    dimension: "25.6 x 18.3 x 1.2 cm", public_date: "2016/6/24",
    description: "内容紹介
      ■特集1
      [要求の変化に柔軟に対応する]実践見積り ── スケジュール、スコープ、スキル
      スケジュール、開発するプロダクトのスコープ、そして開発に参加するメンバーのスキルなど、開発に関わるさまざまなものをどのように見積もるかを解説した特集です。見積りに必要な各種データをどのように集めるのか、そしてどのように見積りに活かすのかも解説します。また、開発の途中で問題が変化するプロジェクトについても、どのように見積りを行い、変化に対応していくのかを解説します。

      ■特集2
      SQL高速化ガイド ── インデックス、データの取捨、I/O効率化
      Webアプリケーションの開発・運用において、パフォーマンスの考慮は必須事項です。本特集ではその中でもSQLのチューニングに焦点を当て、パフォーマンスにまつわるデータベースのしくみを知ったうえで、計測・改善についての実践的な手法を学んでいきます。適切にインデックスを張ったり、必要なデータを見極めたり、I/O負荷を軽減したりといったSQL高速化の原則を現場で活かす方法が必ず見つかる特集です!!

      ■特集3
      [詳解]モダンCSS ── 記法、スタイルの管理、PostCSS
      本特集では、トレンドの移り変わりが激しい昨今のWebフロントエンド技術の中で、CSSでは何が起こっているのかを解説します。標準化の動向はもちろん、コーディング規約、設計指針、PostCSSやスタイルガイドジェネレータといったモダンなツールの活用方法を通して、「抽象化できない」「すべてのルールセットがグローバルスコープ」「デザインの意図を理解せずにCSSを書いている」といった現在のCSSが抱える問題についての解決策を詳述していきます。"},
  {title: "日経Linux(リナックス)2016年10月号",
    isbn: "",
    publisher_id: 4, language_id: 2, rate: 4, rate_count: 10,
    dimension: "27.8 x 20.6 x 1.2 cm", public_date: "2016/9/8",
    description: "内容紹介
      【特集1】安全に楽しめる
      『Linuxサーバー遊び方100パターン』
      [サーバーOSならLinux] と言ってよいほど、Linuxはサーバー構築・運用を得意とするOSです。
      Linuxでは無料で提供されているソフトウエアだけで、世の中に存在するあらゆるサーバーを構築できます。
      Linuxで遊びながらサーバーを構築してみましょう。
      「セキュリティが心配」という方でも大丈夫。ステップを踏みながら安全第一で進められます。

      【特集2】
      『Ubuntuは初期設定で使うな! 』
      Ubuntuは、使いやすさを重視して作られています。しかし、インストール後の初期設定のまま利用するのは禁物です。
      「メニューバーの位置がWindowsと違う」「一部の動画サイトが開けない」など、細かなトラブルを避けるため、
      必要な設定やアプリの追加を最初に済ませてしまいましょう。

      【特集3】750円でディスプレイが付く!
      『Raspberry Piを小さなガジェットにしよう』
      Raspberry Piで小さなガジェットを作れるように小さな液晶ディスプレイを取り付けましょう。
      Pythonプログラムで簡単に日本語などを表示できます。
      例として、USBデバイスの着脱を監視するプログラムを作ります。
      "},
  {title: "IO 2016年 10 月号 [雑誌] ",
    isbn: "",
    publisher_id: 13, language_id: 2, rate: 4, rate_count: 10,
    dimension: "25.6 x 18.3 x 0.6 cm", public_date: "2016/9/17",
    description: "内容紹介
      「コンピューター・アーキテクチャ」の大研究

      この雑誌について
      自作派のためのコンピューター技術情報誌"},
  {title: "マイクロサービスアーキテクチャ",
    isbn: "4873117607",
    publisher_id: 1, language_id: 2, pages: 344, rate: 4, rate_count: 10,
    dimension: "21 x 15 x 2.5 cm", public_date: "2016/2/26",
    description: "内容紹介
      マイクロサービスとは、ThoughtWorks社のマーチン・ファウラーとジェームス・ルイスが最初に提唱したソフトウェアアーキテクチャです。
      モノリシック(一枚岩)なアーキテクチャを、ビジネス機能に沿って複数の小さい「マイクロサービス」に分割し、それらを連携させるアーキテクチャにすることで、迅速なデプロイ、優れた回復性やスケーラビリティといった利点を実現しようとするものです。
      本書は、マイクロサービスとは何か、その長所と短所、定義と概念、設計思想、アーキテクトの役割から、分割、デプロイ、テスト、監視、セキュリティといった個別の技術までを、マイクロサービスを採用しているNetflixやAmazonといった企業の事例を交えながら紹介します。
      これからますます普及が期待されるマイクロサービスについて深く理解できる一冊です。

      内容（「BOOK」データベースより）
      柔軟かつシンプルな新時代のソフトウェアアーキテクチャ、マイクロサービスの本質に迫る!モノリシック(一枚岩)からの脱却。複数の小さいマイクロサービスに分割してそれらを連携させることで、迅速なデプロイ、優れた回復性やスケーラビリティを実現する。"},
  {title: "Cassandra: The Definitive Guide (英語)",
    isbn: "1491933666",
    publisher_id: 16, language_id: 1, pages: 342, rate: 4, rate_count: 10,
    dimension: "17.8 x 2 x 23.3 cm", public_date: "2016/7/22",
    description: "内容紹介
      Imagine what you could do if scalability wasn't a problem. With this hands-on guide, you'll learn how the Cassandra database management system handles hundreds of terabytes of data while remaining highly available across multiple data centers. This expanded second edition--updated for Cassandra 3.0--provides the technical details and practical examples you need to put this database to work in a production environment.

      Authors Jeff Carpenter and Eben Hewitt demonstrate the advantages of Cassandra's non-relational design, with special attention to data modeling. If you're a developer, DBA, or application architect looking to solve a database scaling issue or future-proof your application, this guide helps you harness Cassandra's speed and flexibility.

      Understand Cassandra's distributed and decentralized structure
      Use the Cassandra Query Language (CQL) and cqlsh--the CQL shell
      Create a working data model and compare it with an equivalent relational model
      Develop sample applications using client drivers for languages including Java, Python, and Node.js
      Explore cluster topology and learn how nodes exchange data
      Maintain a high level of performance in your cluster
      Deploy Cassandra on site, in the Cloud, or with Docker
      Integrate Cassandra with Spark, Hadoop, Elasticsearch, Solr, and Lucene
      著者について
      Jeff Carpenter is a software and systems architect with experience in the hospitality and defense industries. Jeff cut his teeth as an architect in the early days of Service-Oriented Architecture (SOA) and has worked on projects ranging from a complex battle planning system in an austere network environment, to a cloud-based hotel reservation system. Jeff is passionate about projects and technologies that change industries, helping troubled projects find architectural solutions, and mentoring other architects and developers.

      Eben Hewitt is Director of Application Architecture at a publicly traded company where he is responsible for the design of their mission-critical, global-scale web, mobile and SOA integration projects. He has written several programming books, including Java SOA Cookbook (O'Reilly)."},
  {title: "Cassandra: The Definitive Guide (英語)",
    isbn: "",
    publisher_id: 16, language_id: 1, pages: 301, rate: 4.7, rate_count: 13,
    dimension: "17.8 x 1.8 x 23.3 cm", public_date: "2010/12/9",
    description: "内容紹介
      What could you do with data if scalability wasn't a problem? With this hands-on guide, you'll learn how Apache Cassandra handles hundreds of terabytes of data while remaining highly available across multiple data centers -- capabilities that have attracted Facebook, Twitter, and other data-intensive companies. 'Cassandra: The Definitive Guide' provides the technical details and practical examples you need to assess this database management system and put it to work in a production environment.

      Author Eben Hewitt demonstrates the advantages of Cassandra's nonrelational design, and pays special attention to data modeling. If you're a developer, DBA, application architect, or manager looking to solve a database scaling issue or future-proof your application, this guide shows you how to harness Cassandra's speed and flexibility.Understand the tenets of Cassandra's column-oriented structureLearn how to write, update, and read Cassandra dataDiscover how to add or remove nodes from the cluster as your application requiresExamine a working application that translates from a relational model to Cassandra's data modelUse examples for writing clients in Java, Python, and C#Use the JMX interface to monitor a cluster's usage, memory patterns, and moreTune memory settings, data storage, and caching for better performance

      著者について
      Eben Hewitt is Director of Application Architecture at a publicly traded company where he is responsible for the design of their mission-critical, global-scale web, mobile and SOA integration projects. He has written several programming books, including Java SOA Cookbook (O'Reilly)."},
  {title: "Pythonプロフェッショナルプログラミング第2版",
    isbn: "479804315X",
    publisher_id: 15, language_id: 2, pages: 472, rate: 3.6, rate_count: 7,
    dimension: "23.4 x 18.2 x 3.4 cm", public_date: "2015/2/27",
    description: "内容紹介
      「Web開発のプロのための本」と高い評価を得た初版(2012年)から三年。最新情報を盛り込んで改訂しました。
      次のような項目を全面的にリニューアルしています。
      ・Pythonプロジェクトとパッケージング
      ・チーム開発環境
      ・チケット駆動開発
      ・ソースコード管理(Mercurial)
      ・Jenkinsで継続的インテグレーション(CI)
      ・環境構築とデプロイの自動化(Ansible)
      ・Djangoフレームワーク

      目次構成上の変更は、次の三つの章を新設した点です。

      第3章 Pythonプロジェクトの構成とパッケージ作成
      Pythonでの開発に必須なツール、pipとvirtualenvを紹介。第2章で作成したWebアプリケーションを題材に、Pythonの開発を始めるときのディレクトリ構成、setup.pyの用意、リポジトリの登録、PyPIへの公開という流れを扱っています。

      第9章 Pythonパッケージングと運用への活用
      Pythonパッケージングを活用して、デプロイやCIに適用するという内容です。第3章の応用編です。

      第11章 環境構築とデプロイの自動化
      デプロイの解説は第1版でも行いましたが、第2版ではFabricからAnsibleに切り替わりました。本書は特に、サーバー構築時の考え方と、それをAnsibleでどう扱うのかというテーマにフォーカスしています。

      ◎株式会社ビープラウド
      2008年4月からPythonを会社のメイン言語として採用し、数々のPythonによる開発の実績をあげている。
      日本の優秀なPythonエンジニアが集まる会社として認知されており、その高い技術力は顧客、業界から高い評価を受けている。
      またIT業界の活発化、横のつながり促進のため、コミュニティ活動にも会社として積極的に取り組み、会社主催のWeb系IT勉強会「BPStudy」は2007年9月から毎月開催し、2015年2月で、90回目の開催を迎える。"},
  {title: "プログラミングElixir",
    isbn: "4274219151",
    publisher_id: 10, language_id: 2, pages: 360, rate: 4, rate_count: 10,
    dimension: "21.2 x 15.1 x 1.5 cm", public_date: "2016/8/19",
    description: "内容紹介
      プログラミング言語Elixirを学ぶ
      Elixir(エリクサー)は、並行処理を得意とするプログラミング言語ErlangのVM(エンジン部分)を基盤とし、Erlangよりもなじみやすい文法を採用したプログラミング言語です。
      本書は、世界的なRubyプログラマであるDave Thomas氏が書いた、プログラミング言語Elixirの本格的解説書、“Programming Elixir 1.2” (Pragmatic Bookshelf, 2016) の日本語訳です。通常のプログラミングから、並行処理、さらなる応用へと順を追って進む構成になっています。本書を読むことで、Elixirらしいプログラミングを学ぶことができます。

      内容（「BOOK」データベースより）
      言語の基本から、並行プログラミング、OTP、マクロまで、Elixirの魅力を丁寧に解説。"},
  {title: "Dockerエキスパート養成読本［活用の基礎と実践ノウハウ満載！］ (Software Design plus)",
    isbn: "4774174416",
    publisher_id: 3, language_id: 2, pages: 112, rate: 4, rate_count: 10,
    dimension: "25.6 x 18 x 1 cm", public_date: "2015/6/18",
    description: "内容紹介
      Docker は、アプリケーションの開発・配布・実行のための、オープンソース・コンテナ型仮想化技術です。2013 年の登場以来、重要なITインフラ技術として、エンジニアから、そしてIT ベンダから最重要視されるようになりました。本書では、Docker をソフトウェア開発・運用で活用するために知っておきたい基礎と実践のための知識をわかりやすくまとめてお届けします。その導入にあたってはいまだ試行錯誤の側面もありますが、まずは本書で、その概要と最新動向はもとより、現場で活用するためのノウハウを習得してみてください。
      内容（「BOOK」データベースより）
      Dockerは、アプリケーションの開発・配布・実行のための、オープンソース・コンテナ型仮想化技術です。2013年の登場以来、重要なITインフラ技術として、エンジニアから、そしてITベンダから最重要視されるようになりました。本書では、Dockerをソフトウェア開発・運用で活用するために知っておきたい基礎と実践のための知識をわかりやすくまとめてお届けします。"},
  {title: "AWSエキスパート養成読本[Amazon Web Servicesに最適化されたアーキテクチャを手に入れる! ] (Software Design plus) ",
    isbn: "4774179922",
    publisher_id: 3, language_id: 2, pages: 112, rate: 3.6, rate_count: 7,
    dimension: "25.9 x 18.1 x 1 cm", public_date: "2016/2/26",
    description: "内容紹介
      クラウドサービスの代名詞とも言えるAWS(Amazon Web Services)。いまや、Web 業界だけでなく基幹系システムや業務システムでも合理的な選択肢として避けて通ることのできない存在になりました。しかし実際のところはまだ、ホスティングの代わりにAWS を利用しているに過ぎないようなケースも多く見られます。
      本書では、AWS のメリットであるスケーラビリティ、アジリティ(俊敏性)、マネージドプラットフォームを享受する、クラウドのポテンシャルを120% 活かした「クラウドネイティブ」なアーキテクチャを実現するにはどうすればよいのか、実案件で実践してきたエンジニア陣が解説します。

      出版社からのコメント
      ■本書のキーワード「New Normal」(ニューノーマル)について
      AWSの最大のメリットは「スケーラビリティ」「アジリティ(俊敏性)」「マネージドプラットフォーム(AWS側に隠蔽され、サービスとして運用保守された仮想サーバやOSを意識せずに使えるプラットフォーム)にあります。こうしたAWSの特徴を考慮した、クラウドネイティブなアーキテクチャは最近、「ニューノーマル」と呼ばれ、AWS上に構築するシステムの指針として今後、広く一般的になっていくと考えられています。本書では、こうしたニューノーマルなクラウドアーキテクチャの構築を日々実践している著者陣が、そのさまざまなノウハウをわかりやすく解説します。"},
  {title: "IoTエンジニア養成読本 (Software Design plus)",
    isbn: "4774188654",
    publisher_id: 3, language_id: 2, pages: 144,
    dimension: "26 x 18.3 x 1.2 cm", public_date: "2017/4/12",
    description: "内容紹介
      IoTシステムの全体像と現場で求められる技術がわかる!

      IoT(Internet of Things)はビジネス面でも大きく注目されるようになりました。
      一方、技術面から見ると、複雑に構成されるシステムになるため全体を見渡すことが難しいと言われます。
      そこで本書では、構成要素である「センサ&デバイス」「ネットワーク」「クラウド」「アプリケーション」「セキュリティ」を
      個別に紐解くことで、最新のIoT システムの全体像を理解できる構成になっています。
      さらに、後半ではIoT プラットフォームとして注目される「SORACOM」を使ったIoT システムをハンズオン形式で実装していきます。

      CONTENTS
      ■Part 1:基礎編
      ■Part 2:技術要素編~IoTシステムの全体像をつかむ
      ■Part 3:実践編~IoTデバイス実践講座
      ■Part 4:ビジネス編

      内容（「BOOK」データベースより）
      IoTシステムの全体像をつかむ。各セグメントの位置づけと関連性がわかる!"},
  {title: "Docker入門 Immutable Infrastructureを実現する",
    isbn: "",
    publisher_id: 3, language_id: 2, pages: 92, rate: 4, rate_count: 10,
    public_date: "2014/4/25",
    description: "内容紹介
      （概要）
      ここ最近，Webシステム・Webサービスを構築・運用するにあたって「Immutable Infrastructure」という概念に注目が集まっています。これを実現する技術の1つとして現在盛り上がっているのがDockerです。

      Dockerは，Linuxのコンテナ技術を用いて仮想的なOS環境を構築するというもので，一度設定し，新規で作りなおすといった場合に，手軽に利用できます。

      本書は，このDockerの設定から実際の使い方についてまとめた入門書となっています。

      （こんな方におすすめ）
      Webアプリ開発者
      インフラエンジニア

      （目次）

      はじめに

      1章　Docker概要
      　1.1 なぜ今Dockerなのか?
      　1.1 なぜ今Dockerなのか?
      　1.2 コンテナ vs Virtual Machine
      　1.3 その他のコンテナ実装
      　　LXC
      　　libvirt
      　　OpenVZ
      　　Warden

      2章　Dockerの特長
      　2.1 GO言語
      　2.2 Linux Namespace
      　2.3 リソース制御
      　2.4 UnionFS
      　2.5 Dockerfile
      　2.6 イメージ，コンテナ

      3章　Dockerのインストール
      　3.1 インストール
      　　動作確認
      　　Mac OS Xへのインストール
      　3.2 設定の確認

      4章　Docker操作の基本
      　4.1 バージョンの確認（version）
      　4.2 現在の情報（info）
      　4.3 イメージの取得（pull）
      　4.4 インタラクティブ実行
      　4.5 長時間実行するアプリケーションの実行
      　4.6 コンテナの停止（stop）
      　4.7 コンテナの再実行（start，restart）
      　4.8 コンテナへのアタッチ（attach）
      　4.9 コンテナの強制終了（kill）
      　4.10 コンテナ内プロセスの監視(top)
      　4.11 コンテナの状態の確認（inspect）
      　4.12 コンテナのコミット（commit）
      　4.13 コンテナの削除，イメージの削除(rm, rmi)
      　4.14 コンテナのイメージを共有する（push）
      　4.15 runコマンドリファレンス
      　　detach
      　　env
      　　interactive
      　　link
      　　name
      　　rm
      　　publish-all
      　　publish
      　　privilege
      　　tty
      　　volume
      　　volume-from

      5章　Dockerfile～Dockerの設定ファイル
      　5.1 build コマンド
      　5.2 Dockerfile Format
      　　FROM
      　　MAINTAINER
      　　RUN
      　　CMD
      　　EXPOSE
      　　ENV
      　　ADD
      　　ENTRYPOINT
      　　VOLUME
      　　USER
      　　WORKDIR
      　　ONBUILD
      　　Dockerfile Example

      6章　コンテナとネットワーク
      　6.1 ブリッジ機能の確認
      　　複数コンテナを起動した場合
      　　通信の確認
      　6.2 Expose，ポートマッピング
      　6.3 コンテナ間ネットワークとセキュリティ
      　6.4 Link a Container
      　6.5 Ambassador Pattern

      7章 その他のDockerTIPS
      　7.1 Dockerの基本，コマンド編
      　　Dockerのイメージ格納先を変更したい
      　　使用してないコンテナを一度に削除したい
      　　使用してないイメージを一度に削除したい
      　　コンテナ内のデータをバックアップしたい
      　　AUFS のリミットに達してしまった
      　　private-repository でイメージを共有，バックアップする
      　　イメージをリモートリポジトリにアップロードする
      　　実行メモリを制限したい

      7.2 Dockerfile編
      　　Dockerfileを動的に変更してbuildしたい
      　　apt-getが遅い
      　　aptでインストール中でのダイアログの選択
      　　upstartへの登録，upstartで動作しない
      　　fuseのインストール（ubuntu 13.10）
      　　容量を少しでも減らしたい
      　　git clone時のknown_hosts

      7.3 ソフトウェアのインストール，個別設定
      　　timezoneを設定したい
      　　sshdの設定（ubuntu 13.10）
      　　nvmによるnodeのインストール
      　　Oracle JDKのインストール

      おわりに


      米林氏から一句

      Dockerを
      　ドカドカ使う
      　　春の空"},
  {title: "プログラミングHHVM Hack",
    isbn: "", rate: 4, rate_count: 10,
    publisher_id: 3, language_id: 2, pages: 140,
    public_date: "2017/5/22",
    description: "内容紹介
      （概要）
      プログラミング言語Hackとは，Facebookが2014年3月20日にリリースしたPHPと互換性を持つHHVM（Hip Hop Virtual Machine for PHP）向けの開発言語です。Facebookでは，オープンソースとしてHackを公開し「段階的な型付き言語」としており，それがHackの強みとされています。そして，Facebook社内においてHack公開以前から広く利用されており，2013年よりPHPベースのコンテンツの大部分をHackに切り替えた実績があります。本書では2年前に出版した電子書籍『Facebook発 新プログラミング言語「Hack」スタートアップガイド』の続編として，同書では伝えきれなかった最新のHack情報をお伝えします。

      （こんな方におすすめ）
      ・Hack を勉強したい人
      ・前作を購入された人

      （目次）
      1章 プログラミング言語 Hack とその環境構築

      2章 Hackの特長と構文

      3章 Hackの機能

      4章 Hackが提供するツール

      5章 Extension～Hackの拡張"},
  {title: "ラズパイマガジン2016年10月号(日経BPパソコンベストムック)",
    isbn: "4822237869",
    publisher_id: 4, language_id: 2, pages: 145, rate: 4, rate_count: 10,
    dimension: "27.8 x 20.8 x 0.8 cm", public_date: "2016/8/18",
    description: "内容紹介
      電子工作とネットを“15の定石 で連携させよう

      ラズパイマガジン2016年10月号では、電子工作とWebの連携を実現させます。WebブラウザーからLEDをつけたり、表示させる数字を指定したり、センサーデータのグラフを確認したり。Webアプリの基本を身に付けることで電子工作の世界が大きく広がります。実際に、Web操作ができるキッチンタイマーや自動撮影ロボットも作ってみましょう。

      Windows 10 IoT Coreもラズパイで動かして、グラフィックスプログラミングも楽しみます。9軸センサーをつないで、その動きを可視化します。
      作業が10倍はかどるLinuxコマンドの利用法を学び、SDカードを差し替えてラズパイを七変化させてみましょう。

      【目次】
      ≪特集1 電子工作×ネット 15の定石≫
      ●Webのボタンでオン/オフ
      ●ラジオボタンで切り替え
      ●スライダーで一定範囲を調整
      ●絵柄の選択肢から選ぶ
      ●デバイスの状態を表示
      ●フォームで入力したデータを渡す
      ●「タプル」でデータを管理
      ●「M-JPEG over HTTP」で動画配信
      ●映像に文字を入れる
      ●動作の開始・再開の制御
      ●動きを指示できるようにする
      ●データベースにデータをためる
      ●表形式で表示する
      ●グラフで見られるようにする
      ●「RESTful API」を用意する

      ≪特集2 Windowsで9軸センサーを可視化しよう≫

      ≪特集3 作業が10倍はかどるLinuxコマンド超入門≫

      ▼電子工作とクラフトがコラボ!
      クレイケーキ×電子工作

      ▼ラズパイレポート
      ラズパイ電子工作の新ライブラリ、
      きめ細かい制御や遠隔操作に対応

      ≪特集4 SDカードで使い方 七変化≫

      ▼講座 温湿度センサーで電子工作の基本を学ぼう

      ▼講座 ハードとソフトの基本を学ぶ かんたんロボット製作
      最終回 音声リモコンでコントロールしよう

      ▼講座 プログラミングでラズパイを楽しく動かそう
      最終回 写真付き日記をブログに自動投稿する

      ▼ラズパイと周辺機材をお得に買ってOSインストールと日本語化をしよう"},
  {title: "Interface(インターフェース) 2016年10月号",
    isbn: "",
    publisher_id: 17, language_id: 2,
    dimension: "26 x 18.7 x 1.5 cm", public_date: "2016/8/25",
    description: "内容紹介
      ☆特集 データ解析時代の新定番Python

      ◎初心者からプロまで使える科学技術計算の新定番
         第1章 IoT時代にPythonをオススメする理由
      ◎これからのコンピュータの当たり前!
         第2章 IoT/データ解析にピッタリ! おすすめPythonライブラリ事典101
         Appendix1 Pythonライブラリの基本的な使い方
      ◎定番も最新も! 世界の英知が集結
         第3章 いま大注目の理由…人工知能ライブラリはPython
         Appendix2 Python文法超入門
      ◎画像処理や文字列処理がサクサク! 自動更新ウェブ・サーバもサッ
         第4章 はじめての Pythonプログラミング
         Appendix3 この先10年は定番! ?Pythonが広まっている理由
      ◎対話型グラフ表示で確認しながら楽々チューニング!
         第5章 Python科学技術ライブラリを使った無線機のディジタル・フィルタ設計
         コラム Pythonを仕事で使うにはライブラリ調査が必要
      ◎OpenCVよりビギナ向け! 画像操作ライブラリPillow
         第6章 Pythonで数学の描画問題を解く
      ◎1500円定番ARMマイコン・ボードで試して合点 !
         第7章 アプリはスクリプトで柔軟に! マイコン用MicroPythonプログラミング
         Appendix4 アマゾン・クラウドも Python! AWS用ライブラリ boto


      ☆第2特集 IoTから! オープンソース組み合わせ時代の重要言語シェル再入門

         Appendix1 オープンソース時代にますます重要! 伝統的シェルのメリット
         Appendix2 ついに全コンピュータ制覇! Windows正式対応シェルの世界
      ◎名刺サイズ・コンピュータにもよく使うしIoT向き
         第1章 やり直しのためのシェル入門
      ◎ステップ・バイ・ステップでメカニズムを確認!
         第2章 シェルからのハード操作超入門
      ◎コマンド&パイプはやっぱり強力! データ解析時代に欠かせない!
         第3章 得意技1データ処理…IoT用データベース
      ◎サーバもクライアントも組み合わせてサクッ!
         第4章 得意技2文字列処理&サーバ機能…インターネットでI/O
         Appendix3 データ主義! 良いシェル・プログラミングの勘どころ
         Appendix4 レベルアップ! オリジナル・コマンドを作る


      ☆音声信号処理全集コーナ
      ◎適応処理時代のノイズ・キャンセル実験室〈第1回〉
         周波数領域ノイズ除去の基本中の基本…スペクトル・サブトラクション
      ☆人工知能コーナ
      ◎人工知能アルゴリズム探検隊〈第 2回〉
         パターン認識でよく使われる「サポート・ベクタ・マシン」
      ☆フリー・ソフト活用コーナ
      ◎スポーツ好き向けオープンソース! 動作解析から撮影のコツまで
         運動映像解析ソフトKinovea
      ◎オープンソースのブロック型言語Pure Dataではじめるサウンド信号処理〈第11回〉
         C言語オリジナル・ブロックの作り方
      ☆Raspberry Pi2ライフ
      ◎ラズパイ・サーバでロックオン! GPS位置トラッカ〈第1回〉
         ラズパイGPS位置トラッキング・システムの制作
      ☆ARM FPGAコーナ
      ◎はじめてのARM Cortex-M3×FPGAマイコン〈第1回〉
         約8000円! Cortex-M3コア内蔵FPGA SmartFusion2入門キット
      ☆ImageTechコーナ
      ◎高性能カメラ探偵団〈第 5回〉
         評価項目:解像度…レンズ性能を見極める定番指標
      ☆モータ制御コーナ
      ◎夏のビギナ企画! パルスを送れば向き自由自在!
         動きものビギナのためのRCサーボモータ入門
      ☆ネットワーク・コーナ
      ◎パケットづくりではじめるネットワーク入門〈第15回〉
         ポート開放機能を追加してホーム・サーバをインターネットに公開する
      ☆研究! クルマのテクノロジ
      ◎制御&監視向け! 小型ネットワークCAN通信入門〈第9回〉
         基本的な送受信プログラムを作る
      ☆連載
      ◎個人で試せる! 生体センシング実験室〈第10回〉
         静電容量方式生体センシングのキモ…ソフトウェア制御周波数発振器
      ◎研究! モノづくりの最新コモンセンス「機能安全」〈第12回〉
         最初に全部決めるのが最重要…機能安全マネジメントFSM

      この雑誌について
      コンピュータ・サイエンス&テクノロジー専門誌"},
  {title: "Selenium実践入門 ―― 自動化による継続的なブラウザテスト (WEB+DB PRESS plus)",
    isbn: "4774178942",
    publisher_id: 3, language_id: 2, pages: 416, rate: 4, rate_count: 10,
    dimension: "21 x 14.8 x 2 cm", public_date: "2016/2/2",
    description: "内容紹介
      ブラウザの多様化に伴い、Webアプリケーションをクロスブラウザ対応にするための負荷がますます増加し、その解決の一つとしてテスト自動化のノウハウが開発現場で必要とされています。また継続的インテグレーションを実践する際にも、テスト自動化がその一部として取り入れられています。本書では、Webアプリケーションのテスト、特にブラウザテストに関わる現状と問題点を整理し、これを解決する最適なプロダクトであるSeleniumを中心にWebブラウザテスト自動化への取り組み方、具体的な手順などについて解説します。

      内容（「BOOK」データベースより）
      テストの手間とミスを減らし、開発効率を上げる。導入から大規模事例までを網羅。"},
  {title: "システムテスト自動化 標準ガイド CodeZine BOOKS",
    isbn: "",
    publisher_id: 2, language_id: 2, pages: 797, rate: 4, rate_count: 10,
    public_date: "2014/12/15",
    description: "内容紹介
      自動化が困難なソフトウェアテストの1つ「システムテスト」の自動化に取り組むエンジニアの必携バイブル！

      今日、テスト駆動開発やCI（継続的インテグレーション）の技術や環境が普及し、ソースコードのユニットテストやビルド時の結合テストでは、自動化が一般的に行われるようになりました。

      一方で、ソフトウェアをユーザーが操作したときに問題がないことを確認する「システムテスト」では、自動化が進んでいません。そのため、顧客やユーザーにソフトウェアを確認してもらう受け入れテストへなかなか移れないケースが多発しています。これは顧客・ユーザーへ動作するソフトウェアをいつでも、何度でも提出し、確認しながら進めていくアジャイル開発において、特に大きなボトルネックになってきます。

      本書は、この「システムテストの自動化」の課題に取り組むための解説書です。この分野の権威である著者が、システムテストの自動化を実現するために考慮すべきこと、発生しうる問題、解決策や方針などを示します。その中には、ツールの選択方法や、開発チームへの普及手段なども含まれます。さらに、Seleniumなど現在の開発現場でシステムテストのために使用されるツールによる応用例も掲載。システムテストの自動化を目指すエンジニアにはバイブルと言える1冊です。

      ※本電子書籍は同名出版物を底本として作成しました。記載内容は印刷出版当時のものです。
      ※印刷出版再現のため電子書籍としては不要な情報を含んでいる場合があります。
      ※印刷出版とは異なる表記・表現の場合があります。予めご了承ください。
      ※プレビューにてお手持ちの電子端末での表示状態をご確認の上、商品をお買い求めください。

      内容（「BOOK」データベースより）
      退屈なテストにさようなら。システムテストを自動化するプログラムを技術・組織の両面から実践的に解説。Seleniumなどの各種ツールを使ったシステムテスト自動化の事例も収録。"},
  {title: "Docker",
    isbn: "4873117763",
    publisher_id: 1, language_id: 2, pages: 384, rate: 4, rate_count: 10,
    dimension: "24 x 19 x 2 cm", public_date: "2016/8/17",
    description: "内容紹介
      本書はオープンソースのコンテナ管理ソフトウェア、Dockerの基礎から応用までを網羅した総合的な解説書です。
      はじめに開発環境をセットアップし、シンプルなWebアプリケーションのビルドについて解説した上で、コンテナの開発、テスト、結合に加えて、デプロイの方法、実動システムの効率的なモニタリングとロギングを紹介します。
      そして複数のホストからなるDockerコンテナのクラスタを、安全かつ高い信頼性の下で実行するために必要な高度なテクニックやツールについて紹介します。
      さらにネットワークやセキュリティについても詳述。
      Dockerとそのエコシステムを本格的に活用したい開発者、運用エンジニア、システム開発者必携の一冊です。

      内容（「BOOK」データベースより）
      本書はオープンソースのコンテナ管理ソフトウェア、Dockerの基礎から応用までを網羅した総合的な解説書です。はじめに開発環境をセットアップし、シンプルなWebアプリケーションのビルドについて解説した上で、コンテナの開発、テスト、結合に加えて、デプロイの方法、実動システムの効率的なモニタリングとロギングを紹介します。そして複数のホストからなるDockerコンテナのクラスタを、安全かつ高い信頼性の下で実行するために必要な高度なテクニックやツールについて紹介します。さらにネットワークやセキュリティについても詳述。Dockerとそのエコシステムを本格的に活用したい開発者、運用エンジニア、システム開発者必携の一冊です。"},
  {title: "CPU自作入門 ~HDLによる論理設計・基板製作・プログラミング",
    isbn: "4774153389",
    publisher_id: 3, language_id: 2, pages: 528,
    dimension: "22.9 x 18.7 x 3 cm", public_date: "2012/10/20",
    description: "内容紹介
      本書はエンジニアを目指す学生をメインターゲットとしているが、前提とする知識を極力減らし、ハードルを下げることによって様々な層に受け入れられるよう配慮する。本書は学ぶことよりも実際に製作することに重点を置いており、「実際に製作することの楽しさ」を知る、ということが他の技術書と異なる大きなアピールポイントである。FPGAを用いてCPUを設計・実装し、ボードの製作を行い、ソフトウェアの開発を行う、これらすべての工程を自らの手で行うという趣旨の本は他に例がない。

      内容（「BOOK」データベースより）
      オリジナルCPUを実装し、FPGA基板を製作し、プログラムを動作させるまでの過程を詳しく解説。"},
  {title: "ゼロから作るDeep Learning ―Pythonで学ぶディープラーニングの理論と実装",
    isbn: "4873117585",
    publisher_id: 1, language_id: 2, pages: 320,
    dimension: "21 x 15 x 2 cm", public_date: "2016/9/24",
    description: "内容紹介
      ディープラーニングの本格的な入門書。外部のライブラリに頼らずに、Python 3によってゼロからディープラーニングを作ることで、ディープラーニングの原理を楽しく学びます。
      ディープラーニングやニューラルネットワークの基礎だけでなく、誤差逆伝播法や畳み込みニューラルネットワークなども実装レベルで理解できます。
      ハイパーパラメータの決め方や重みの初期値といった実践的なテクニック、Batch NormalizationやDropout、Adamといった最近のトレンド、自動運転や画像生成、強化学習などの応用例、さらには、なぜディープラーニングは優れているのか?なぜ層を深くすると認識精度がよくなるのか?といった“Why に関する問題も取り上げます。

      出版社からのコメント
      ■本書「まえがき」より

      本書は「ディープラーニング」についての本です。ディープラーニングを理解するために必要な知識を、初歩的なことから一つひとつ積み重ねながら説明していきます。ディープラーニングとは何なのか、どういう特徴があるのか、どういう原理で動作しているのか、といったことをできるだけ平坦な言葉で説明します。ただし、技術の概要だけを説明するのではなく、一歩踏み込んでより深く理解してもらうことを目的としています。そこが本書の特徴のひとつです。

      では、ディープラーニングについて、“より深く 理解するにはどうしたらよいでしょうか? 筆者が考えるに、そのための最も良い方法は、実際に作ってみることです。実際に動くプログラムをゼロから作り、ソースコードを読みながら考える――そのような作業が、ディープラーニングを(さらに言えば、高度に見える何らかの技術を)正しく理解する上で重要だと筆者は信じて疑いません。ここで、「ゼロから」という言葉を用いましたが、それはできるだけ外部の既成品(ライブラリやツールなど)には頼らないということを意味します。つまり、本書が目標とすることは、中身の分からないブラックボックスは極力使わずに、自分が理解できる最低限の知識から出発し、最先端のディープラーニングを作り上げることを目指すことなのです。そして、その作るという過程を通して、ディープラーニングについてより深く理解してもらいたいと思っています。"},
  {title: "実践 Python 3",
    isbn: "4873117399",
    publisher_id: 1, language_id: 2, pages: 372,
    dimension: "21 x 15 x 2 cm", public_date: "2015/12/1",
    description: "内容紹介
      仕事や研究で役立つ実践的な側面を重視し、一般的なプログラミングのベストプラクティスをPythonに適用する方法について解説します。
      主なテーマは、エレガントなコーディングのためのデザインパターン、処理速度向上のための並行処理とCython、高レベルなネットワーク処理、そしてグラフィックスです。
      読者対象は中級以上のPythonプログラマー。
      実践的なベストプラクティスを示し、巷で囁かれてきた「デザインパターンはPythonには不向き」「Pythonはマルチコアの恩恵を受けられない」といった認識が間違いであり、迷信にすぎなかったことを明らかにします。
      2014年米国Joltアワード受賞書、待望の邦訳。

      内容（「BOOK」データベースより）
      仕事や研究で役立つ実践的な側面を重視し、一般的なプログラミングのベストプラクティスをPythonに適用する方法について解説します。主なテーマは、エレガントなコーディングのためのデザインパターン、処理速度向上のための並行処理とCython、高レベルなネットワーク処理、そしてグラフィックスです。読者対象は中級以上のPythonプログラマー。実践的なベストプラクティスを示し、巷で囁かれてきた「デザインパターンはPythonには不向き」「Pythonはマルチコアの恩恵を受けられない」といった認識が間違いであり、迷信にすぎなかったことを明らかにします。2014年米国Joltアワード受賞書、待望の邦訳。"},
  {title: "ROSプログラミング ",
    isbn: "4627853416",
    publisher_id: 18, language_id: 2, pages: 306, rate: 4, rate_count: 10,
    dimension: "22.1 x 15.7 x 1.6 cm", public_date: "2016/3/31",
    description: "内容紹介
      ◇初の本格的入門書◇
      近年,世界標準のロボット用フレームワークとして注目を浴びているROS(Robot Operating System).本書では,C++の基本スキルをもつ方を対象に,ROSのコア機能のプログラミングについて一通り解説します.

      ROSの基本的な概念から,Kinect,Leap Motion,AR.Droneといったデバイスやロボットへの実応用例まで幅広く解説しているので,これからROSを使ってみようと考えている方はもちろん,すでにROSユーザの方にとっても有用な一冊となっています.

      本書で紹介しているソースコードやROSパッケージは,森北出版のWebサイトにて公開しています.

      内容（「BOOK」データベースより）
      初の本格的入門書。世界標準のロボット用フレームワークであるROS。その基礎概念からドローンなどへの実応用まで網羅的に解説。"},
  {title: "ラズパイマガジン 2017年2月号 (日経BPパソコンベストムック)",
    isbn: "4822239225",
    publisher_id: 4, language_id: 2, pages: 148, rate: 4, rate_count: 10,
    dimension: "28 x 21 x 0.9 cm", public_date: "2016/12/15",
    description: "内容紹介
      ラズパイ工作のパーツ制御法80を一挙紹介、人工知能で笑顔判定機も

      70種類を超える電子パーツを制御する80の方法を紹介します。各種センサーやモーターの制御法に、家電制御を実現したり、5ドルラズパイをスティックPCにしたり。これで好きな電子工作に取り組めます。

      クラウドの人工知能の活用にも取り組みます。USBカメラを付けて撮った顔写真の笑顔判定機を作ります。
      さらに、みんなのラズパイコンテスト2016の受賞50作品を一挙紹介します。電子工作のアイデアが満載です。


      ―――≪目次≫―――

      【特集1】
      ラズパイ電子工作
      パーツ制御法80

      ●LEDを点滅させたい ●さまざまな色のLEDを点灯したい
      ●スライドスイッチを読み取りたい●扉や蓋の開閉を認識したい
      ●傾いたかどうかを知りたい ●ジョイスティックを読み取りたい
      ●温度を測りたい ●気圧を計測したい ●特定の場所まで動いたことを検知したい ほか

      【特集2】
      Windows IoTで始める機械学習
      カメラで写った笑顔判定機を作ろう

      【特集3】
      みんなのラズパイコンテスト2016
      受賞50作品を一挙紹介

      ▼ラズパイレポート
      Raspberry Pi とLinuxで動く警告灯、Webやコマンドから手軽に制御できる
      オープンソースOSに新顔、ラズパイでも動くMinoca OS

      ▼電子工作とクラフトがコラボ!
      チョークアート×電子工作

      【講座】
      温湿度センサーで
      電子工作の基本を学ぼう 最終回
      ・Part1 センサーとサーボを動かそう
      ・Part2 アナログ温湿度・気圧計を作る

      【講座】
      会議室の空きが分かる
      簡単IoTシステム 第1回
      ・Part1 Raspberry Pi とセンサーの動作確認
      ・Part2 クラウドを介してメッセージやり取り

      【講座】
      ラズパイで作ろう
      お手軽ロボット教室 第2回
      ・Part1 ジャイロで真っすぐ走らせる
      ・Part2 衝突を避けつつ壁沿いに走行
      ・Part3 音声でロボットを制御"},
  {title: "ハイパフォーマンス ブラウザネットワーキング ―ネットワークアプリケーションのためのパフォーマンス最適化",
    isbn: "4873116767",
    publisher_id: 1, language_id: 2, pages: 480, rate: 4, rate_count: 10,
    dimension: "2.5 x 19 x 24 cm", public_date: "2014/5/16",
    description: "内容紹介
      現代のアプリケーションエンジニアは、UIやデータ処理、開発言語、プラットフォームの仕様や癖だけでなく、
      サーバやネットワークについても、上から下まで、表から裏まで広く知ることを求められます。
      本書は「ブラウザ」に関連し、インターネットで使用されるさまざまなネットワーク技術をまとめたものです。
      HTTP/2.0やWebRTCなどの最新技術、WebSocketやXMLHttpRequestなどのブラウザAPI、
      そしてそれらの土台となるTCPやUDPやトランスポート層についてまでを幅広くカバーします。
      本書はカバーする技術範囲の広さを「パフォーマンス」という軸に沿って説明します。
      また改善前後の性能・速さを可能な限り具体化し、それぞれの場面においてのパフォーマンス改善幅を示します。
      ネットワークのデータリンク層からアプリケーション層、そして過去から近い将来までをまとめた本書は、インターネットにかかわるすべてのエンジニア必携の一冊です。

      内容（「BOOK」データベースより）
      本書は「ブラウザ」に関連する、インターネットで使用される様々なネットワーク技術をまとめたものです。WebSocketやHTTP/2.0やWebRTCのように最新ブラウザで簡単に動作する新しい技術から、そのような技術の土台となるTCPやUDPやトランスポート層についてまで幅広くカバーします。"},
  {title: "HDLによる高性能ディジタル回路設計―ソフトウェア感覚を離れてハードウェアを意識する (Design Wave BOOKS)",
    isbn: "478983395X",
    publisher_id: 17, language_id: 2, pages: 191, rate: 4, rate_count: 10,
    dimension: "23.4 x 18.2 x 1.4 cm", public_date: "2002/10",
    description: "内容（「BOOK」データベースより）
      本書では、まずソフトウェア的に考えた処理を回路化する手順を示し、さらに回路を最適化するさまざまな方法について解説する。

      内容（「MARC」データベースより）
      ソフトウェア開発のセンスでHDLを使うと、所望の性能を得られない回路、あるいはまったく動作しない回路を作ってしまうことがある。ソフトウェア的に考えた処理を回路化する手順を示し、さらに回路を最適化する方法を解説。"},
  {title: "オブジェクト指向JavaScriptの原則",
    isbn: "4873116813",
    publisher_id: 1, language_id: 2, pages: 200, rate: 4, rate_count: 10,
    dimension: "2 x 15 x 21 cm", public_date: "2014/6/18",
    description: "内容紹介
      本書はJavaScriptが持つオブジェクト指向的な言語特性や、その特性を強力にサポートするECMAScript 5の機能を紹介し、
      それらの特性や機能を活かすプログラミングの方法、考え方、パターンについて、深くそして簡潔に解説する書籍です。
      本書を通じて、C++やJavaなど「クラスベースのオブジェクト指向言語」に慣れたプログラマは
      JavaScript特有のクラスを持たないオブジェクト指向プログラミングの世界への知識を得ることができ、
      JavaScriptプログラマはJavaScriptのオブジェクトに関する理解をさらに深めることができるでしょう。
      JavaScriptのオブジェクトを自由自在に扱い、より効果的なプログラミングを行いたいすべてのプログラマ必携の一冊です。

      内容（「BOOK」データベースより）
      JavaScriptが持つオブジェクト指向的な言語特性や、その特性を強力にサポートするECMAScript 5の機能を紹介し、それらの特性や機能を活かすプログラミングの方法や考え方、パターンについて深く、そして簡潔に解説。"},
  {title: "JavaScriptパターン ―優れたアプリケーションのための作法",
    isbn: "4873114888",
    publisher_id: 1, language_id: 2, pages: 244, rate: 4, rate_count: 10,
    dimension: "24 x 2 x 19 cm", public_date: " 2011/2/16",
    description: "内容紹介
      JavaScriptについては一通りマスターした中上級者が、さらに上を目指すための高度でかつ有用なテクニックを盛り込んでいます。
      デザインパターン、コーディングパターン、アンチパターンに基づき、いままで以上にJavaScriptを使いこなし、プログラミングの力を向上させ、JavaScriptのエキスパートになるための知識と技を豊富に紹介。
      次のステップに踏み出したいプログラマにとって貴重な情報源となる一冊です。
      Yahoo!のエンジニアとして数々の有用なアプリケーションの開発に携わってきた著者がJavaScriptを200%使いこなすための秘伝を伝授します。

      内容（「BOOK」データベースより）
      JavaScriptについては一通りマスターした中上級者がさらに上を目指すための高度でかつ有用なテクニックを盛り込んでいます。デザインパターン、コーディングパターン、アンチパターンに基づき、いままで以上にJavaScriptを使いこなし、プログラミングの力を向上させ、JavaScriptのエキスパートになるための知識と技を豊富に紹介。次のステップに踏み出したいプログラマにとって貴重な情報源となる一冊です。Yahoo!のエンジニアとして数々の有用なアプリケーションの開発に携わってきた著者がJavaScriptを200%使いこなすための秘伝を伝授します。"},
  {title: "シングルページWebアプリケーション ―Node.js、MongoDBを活用したJavaScript SPA 大型本 – 2014/5/24",
    isbn: "4873116732",
    publisher_id: 1, language_id: 2, pages: 498, rate: 4, rate_count: 10,
    dimension: "4 x 19 x 24 cm", public_date: "2014/5/24",
    description: "内容紹介
      シングルページWebアプリケーション（SPA）は、最近注目を集めているWebアプリケーションのアーキテクチャです。
      SPAは、ユーザがアプリケーションを使っている間、Webページ全体をロードすることがなく、レスポンスが高速でUI/UXに優れているという利点を持っています。
      かつてはJavaアプレットやFlashといったWebブラウザのプラグインに依存する必要がありましたが、近年ではJavaScriptを使ったSPAが現実的になってきています。
      JavaScriptベースのため、既存のWeb開発スキルの活用が容易であり、新しいデバイスへの対応も比較的簡単です。
      本書では、クライアントでJavaScriptを使ったSPAを採用するだけでなく、WebサーバにNode.js、データベースにMongoDBを使うことで、
      フロントエンドからバックエンドまでエンドツーエンドのJavaScript SPAの仕組みと開発方法について詳しく解説します。

      内容（「BOOK」データベースより）
      クライアントでJavaScriptを使ったSPAを採用するだけでなく、WebサーバにNode.js、データベースにMongoDBを使うことで、フロントエンドからバックエンドまでエンドツーエンドのJavaScript SPAの仕組みと開発方法について詳しく解説。"},
  {title: "ラズパイマガジン 2016年12月号(日経BPパソコンベストムック)",
    isbn: "4822239020",
    publisher_id: 4, language_id: 2, pages: 148, rate: 4, rate_count: 10,
    dimension: "27.8 x 21 x 1.2 cm", public_date: "2016/10/31",
    description: "内容紹介
      1日で工作プログラムが作れる、5ドルラズパイは携帯音楽機に

      「1日、24時間」分の時間を作ってください。1日あれば、本誌特集で紹介する15種類の作り方を実践することで、いろんなパターンの工作プログラムをRaspberry Pi(ラズパイ)で作れるようになります。便利な開発環境を使い、CSVでデータ収集したり、センサーをタイマー制御したりしましょう。

      5ドルラズパイZeroは海外通販で簡単に入手できるようになりました。その購入方法から、750円ディスプレイの付け方、携帯音楽プレイヤーの作り方まで、Pi Zeroをとことん使い倒します。

      Windows 10 IoT Coreでは、玄関鍵の開閉を監視して、クラウド経由でチェックできるようにします。"},
  {title: "プログラマのためのDocker教科書 インフラの基礎知識＆コードによる環境構築の自動化",
    isbn: "",
    publisher_id: 2, language_id: 2, rate: 4, rate_count: 10,
    public_date: "2015/11/19",
    description: "内容紹介
      【本電子書籍は固定レイアウトのため7インチ以上の端末での利用を推奨しております。文字列のハイライトや検索、辞書の参照、引用などの機能が使用できません。ご購入前に、無料サンプルにてお手持ちの電子端末での表示状態をご確認の上、商品をお買い求めください】

      従来、システム開発のプログラマは、顧客の業務要件を理解し、要件に応じた設計を行ない、プログラミング言語を使ってシステムを実装し、仕様通りの機能を持つかをテストすることが主なミッションでした。今日ではそれに加えて、構成管理ツールを使って、開発したシステムの実行環境のプロビジョニングなどを行なうケースも増え、ネットワーク設計やOSの導入、システム／データベースサーバなどのミドルウェアの設定やセキュリティといったインフラ構築の知識が求められています。

      本書は、Linuxのコンテナ仮想化ツールであるDockerを使って、コードでインフラ環境を構築するための入門書です。開発環境や実行環境などインフラ構築「自動化」の経験がない開発者を対象に、おさえておきたいシステム基盤＆インフラの基礎知識に加えて、Dockerによるインフラ構築と管理の方法をやさしく解説します。理解しにくいネットワークや仮想技術などのインフラの基礎概念を図解しながら、開発／実行環境を実際に構築することで、構成管理ツールを使ったインフラ構築の流れを解説していきます。

      ・おさえておきたいシステム／インフラの知識
      ・コンテナ仮想化技術とDocker
      ・Dockerのインストールと基本コマンド
      ・Dockerfileを使ったコードによるサーバ構築
      ・Dockerイメージの共有─Docker Registry
      ・複数コンテナの一元管理─Docker Compose
      ・マルチホスト環境でのDocker運用─Docker Machine、Docker Swarm
      ・クラウドでのDocker運用

      ※本電子書籍は同名出版物を底本として作成しました。記載内容は印刷出版当時のものです。
      ※印刷出版再現のため電子書籍としては不要な情報を含んでいる場合があります。
      ※印刷出版とは異なる表記・表現の場合があります。予めご了承ください。
      ※プレビューにてお手持ちの電子端末での表示状態をご確認の上、商品をお買い求めください。

      内容（「BOOK」データベースより）
      Linuxのコンテナ仮想化ツールであるDockerを使って、コードでインフラ環境を構築するための入門書です。開発環境や実行環境などインフラ構築「自動化」の経験がない開発者を対象に、おさえておきたいシステム基盤&インフラの基礎知識に加えて、Dockerによるインフラ構築と管理の方法をやさしく解説します。理解しにくいネットワークや仮想技術などのインフラの基礎概念を図解しながら、開発/実行環境を実際に構築することで、構成管理ツールを使ったインフラ構築の流れを解説していきます。"},
  {title: "[改訂新版]プロのためのLinuxシステム構築・運用技術 (Software Design plus)",
    isbn: "4774184268",
    publisher_id: 3, language_id: 2, pages: 272, rate: 4, rate_count: 10,
    dimension: "23 x 18.2 x 1.4 cm", public_date: "2016/9/22",
    description: "内容紹介
    好評につき重版してきた『プロになるためのLinuxシステム構築・運用』が、最新版のRed Hat Enterprise Linux(ver.7)に対応し全面的な改訂を行った。これまでと同様に懇切丁寧にLinuxのシステムを根底から解説する。そして運用については、現場で得られた知見をもとに「なぜそうするのか」といったそもそも論から解説をしており、無駄なオペレーションをせずに実運用での可用性の向上をねらった運用をするためのノウハウをあますことなく公開した。もちろん、systemdもその機能を詳細にまとめあげている。

    内容（「BOOK」データベースより）
    キックスタートによる自動インストール、運用プロセスの理解、SAN/iSCSI、L2/L3スイッチ、VLAN、Linuxカーネル、systemd、ファイルシステム、問題判別ノウハウ、プロとしてのLinux技術。システム構築運用/ネットワーク・ストレージ管理の秘訣がわかる。Red Hat Enterprise Linux対応。"}
])


Image.create!([
  {target_id: 1, target_type: "Book",
    url: File.open(Rails.root + "public/uploads/image/1.jpg")},
  {target_id: 2, target_type: "Book",
    url: File.open(Rails.root + "public/uploads/image/2.jpg")},
  {target_id: 3, target_type: "Book",
    url: File.open(Rails.root + "public/uploads/image/3.jpg")},
  {target_id: 4, target_type: "Book",
    url: File.open(Rails.root + "public/uploads/image/4.jpg")},
  {target_id: 5, target_type: "Book",
    url: File.open(Rails.root + "public/uploads/image/5.jpg")},
  {target_id: 6, target_type: "Book",
    url: File.open(Rails.root + "public/uploads/image/6.jpg")},
  {target_id: 7, target_type: "Book",
    url: File.open(Rails.root + "public/uploads/image/7.1.jpg")},
  {target_id: 7, target_type: "Book",
    url: File.open(Rails.root + "public/uploads/image/7.2.jpg")},
  {target_id: 8, target_type: "Book",
    url: File.open(Rails.root + "public/uploads/image/8.jpg")},
  {target_id: 9, target_type: "Book",
    url: File.open(Rails.root + "public/uploads/image/9.jpg")},
  {target_id: 10, target_type: "Book",
    url: File.open(Rails.root + "public/uploads/image/10.jpg")},
  {target_id: 11, target_type: "Book",
    url: File.open(Rails.root + "public/uploads/image/11.1.jpg")},
  {target_id: 11, target_type: "Book",
    url: File.open(Rails.root + "public/uploads/image/11.2.jpg")},
  {target_id: 12, target_type: "Book",
    url: File.open(Rails.root + "public/uploads/image/12.jpg")},
  {target_id: 13, target_type: "Book",
    url: File.open(Rails.root + "public/uploads/image/13.1.jpg")},
  {target_id: 13, target_type: "Book",
    url: File.open(Rails.root + "public/uploads/image/13.2.jpg")},
  {target_id: 13, target_type: "Book",
    url: File.open(Rails.root + "public/uploads/image/13.3.jpg")},
  {target_id: 14, target_type: "Book",
    url: File.open(Rails.root + "public/uploads/image/14.jpg")},
  {target_id: 15, target_type: "Book",
    url: File.open(Rails.root + "public/uploads/image/15.jpg")},
  {target_id: 16, target_type: "Book",
    url: File.open(Rails.root + "public/uploads/image/16.jpg")},
  {target_id: 17, target_type: "Book",
    url: File.open(Rails.root + "public/uploads/image/17.1.jpg")},
  {target_id: 17, target_type: "Book",
    url: File.open(Rails.root + "public/uploads/image/17.2.jpg")},
  {target_id: 17, target_type: "Book",
    url: File.open(Rails.root + "public/uploads/image/17.3.jpg")},
  {target_id: 18, target_type: "Book",
    url: File.open(Rails.root + "public/uploads/image/18.1.jpg")},
  {target_id: 18, target_type: "Book",
    url: File.open(Rails.root + "public/uploads/image/18.2.jpg")},
  {target_id: 19, target_type: "Book",
    url: File.open(Rails.root + "public/uploads/image/19.jpg")},
  {target_id: 20, target_type: "Book",
    url: File.open(Rails.root + "public/uploads/image/20.jpg")},
  {target_id: 21, target_type: "Book",
    url: File.open(Rails.root + "public/uploads/image/21.1.jpg")},
  {target_id: 21, target_type: "Book",
    url: File.open(Rails.root + "public/uploads/image/21.2.jpg")},
  {target_id: 22, target_type: "Book",
    url: File.open(Rails.root + "public/uploads/image/22.jpg")},
  {target_id: 23, target_type: "Book",
    url: File.open(Rails.root + "public/uploads/image/23.jpg")},
  {target_id: 24, target_type: "Book",
    url: File.open(Rails.root + "public/uploads/image/24.jpg")},
  {target_id: 25, target_type: "Book",
    url: File.open(Rails.root + "public/uploads/image/25.jpg")},
  {target_id: 26, target_type: "Book",
    url: File.open(Rails.root + "public/uploads/image/26.1.jpg")},
  {target_id: 26, target_type: "Book",
    url: File.open(Rails.root + "public/uploads/image/26.2.jpg")},
  {target_id: 27, target_type: "Book",
    url: File.open(Rails.root + "public/uploads/image/27.jpg")},
  {target_id: 28, target_type: "Book",
    url: File.open(Rails.root + "public/uploads/image/28.jpg")},
  {target_id: 29, target_type: "Book",
    url: File.open(Rails.root + "public/uploads/image/29.jpg")},
  {target_id: 30, target_type: "Book",
    url: File.open(Rails.root + "public/uploads/image/30.jpg")},
  {target_id: 31, target_type: "Book",
    url: File.open(Rails.root + "public/uploads/image/31.jpg")},
  {target_id: 32, target_type: "Book",
    url: File.open(Rails.root + "public/uploads/image/32.jpg")},
  {target_id: 33, target_type: "Book",
    url: File.open(Rails.root + "public/uploads/image/33.jpg")},
  {target_id: 34, target_type: "Book",
    url: File.open(Rails.root + "public/uploads/image/34.1.jpg")},
  {target_id: 34, target_type: "Book",
    url: File.open(Rails.root + "public/uploads/image/34.2.jpg")},
  {target_id: 34, target_type: "Book",
    url: File.open(Rails.root + "public/uploads/image/34.3.jpg")},
  {target_id: 35, target_type: "Book",
    url: File.open(Rails.root + "public/uploads/image/35.jpg")},
  {target_id: 36, target_type: "Book",
   url: File.open(Rails.root + "public/uploads/image/36.1.jpg")},
  {target_id: 36, target_type: "Book",
   url: File.open(Rails.root + "public/uploads/image/36.2.jpg")},
  {target_id: 37, target_type: "Book",
    url: File.open(Rails.root + "public/uploads/image/37.jpg")},
  {target_id: 38, target_type: "Book",
    url: File.open(Rails.root + "public/uploads/image/38.jpg")},
  {target_id: 39, target_type: "Book",
    url: File.open(Rails.root + "public/uploads/image/39.jpg")},
  {target_id: 40, target_type: "Book",
    url: File.open(Rails.root + "public/uploads/image/40.jpg")},
  {target_id: 41, target_type: "Book",
    url: File.open(Rails.root + "public/uploads/image/41.jpg")},
  {target_id: 42, target_type: "Book",
   url: File.open(Rails.root + "public/uploads/image/42.jpg")},
  {target_id: 43, target_type: "Book",
    url: File.open(Rails.root + "public/uploads/image/43.jpg")},
  {target_id: 44, target_type: "Book",
    url: File.open(Rails.root + "public/uploads/image/44.jpg")},
  {target_id: 45, target_type: "Book",
   url: File.open(Rails.root + "public/uploads/image/45.jpg")},
  {target_id: 46, target_type: "Book",
    url: File.open(Rails.root + "public/uploads/image/46.jpg")},
  {target_id: 47, target_type: "Book",
    url: File.open(Rails.root + "public/uploads/image/47.jpg")},
  {target_id: 48, target_type: "Book",
    url: File.open(Rails.root + "public/uploads/image/48.jpg")},
  {target_id: 49, target_type: "Book",
    url: File.open(Rails.root + "public/uploads/image/49.jpg")},
  {target_id: 50, target_type: "Book",
    url: File.open(Rails.root + "public/uploads/image/50.jpg")},
  {target_id: 51, target_type: "Book",
    url: File.open(Rails.root + "public/uploads/image/51.1.jpg")},
  {target_id: 51, target_type: "Book",
    url: File.open(Rails.root + "public/uploads/image/51.2.jpg")},
  {target_id: 52, target_type: "Book",
    url: File.open(Rails.root + "public/uploads/image/52.jpg")},
  {target_id: 53, target_type: "Book",
    url: File.open(Rails.root + "public/uploads/image/53.jpg")},
  {target_id: 54, target_type: "Book",
    url: File.open(Rails.root + "public/uploads/image/54.jpg")},
  {target_id: 55, target_type: "Book",
    url: File.open(Rails.root + "public/uploads/image/55.jpg")},
  {target_id: 56, target_type: "Book",
    url: File.open(Rails.root + "public/uploads/image/56.jpg")},
  {target_id: 57, target_type: "Book",
    url: File.open(Rails.root + "public/uploads/image/57.jpg")},
  {target_id: 58, target_type: "Book",
    url: File.open(Rails.root + "public/uploads/image/58.jpg")},
  {target_id: 59, target_type: "Book",
    url: File.open(Rails.root + "public/uploads/image/59.jpg")},
  {target_id: 60, target_type: "Book",
    url: File.open(Rails.root + "public/uploads/image/60.jpg")},
])

AuthorBook.create!([
  {author_id: 1, book_id: 1},
  {author_id: 1, book_id: 2},
  {author_id: 2, book_id: 2},
  {author_id: 1, book_id: 3},
  {author_id: 2, book_id: 3},
  {author_id: 3, book_id: 3},
  {author_id: 1, book_id: 4},
  {author_id: 1, book_id: 5},
  {author_id: 2, book_id: 6},
  {author_id: 3, book_id: 7},
  {author_id: 2, book_id: 8},
  {author_id: 3, book_id: 8},
  {author_id: 2, book_id: 9},
  {author_id: 2, book_id: 10},
  {author_id: 3, book_id: 11},
  {author_id: 1, book_id: 12},
  {author_id: 4, book_id: 13},
  {author_id: 4, book_id: 14},
  {author_id: 4, book_id: 15},
  {author_id: 5, book_id: 16},
  {author_id: 6, book_id: 16},
  {author_id: 7, book_id: 16},
  {author_id: 8, book_id: 16},
  {author_id: 5, book_id: 17},
  {author_id: 5, book_id: 18},
  {author_id: 6, book_id: 17},
  {author_id: 6, book_id: 18},
  {author_id: 9, book_id: 19},
  {author_id: 10, book_id: 20},
  {author_id: 11, book_id: 21},
  {author_id: 12, book_id: 22},
  {author_id: 13, book_id: 22},
  {author_id: 14, book_id: 22},
  {author_id: 15, book_id: 22},
  {author_id: 16, book_id: 22},
  {author_id: 17, book_id: 23},
  {author_id: 18, book_id: 24},
  {author_id: 19, book_id: 25},
  {author_id: 20, book_id: 26},
  {author_id: 21, book_id: 26},
  {author_id: 22, book_id: 26},
  {author_id: 23, book_id: 26},
  {author_id: 24, book_id: 26},
  {author_id: 25, book_id: 26},
  {author_id: 26, book_id: 27},
  {author_id: 26, book_id: 28},
  {author_id: 27, book_id: 27},
  {author_id: 28, book_id: 29},
  {author_id: 29, book_id: 30},
  {author_id: 30, book_id: 30},
  {author_id: 31, book_id: 30},
  {author_id: 32, book_id: 30},
  {author_id: 33, book_id: 30},
  {author_id: 34, book_id: 30},
  {author_id: 35, book_id: 31},
  {author_id: 36, book_id: 33},
  {author_id: 37, book_id: 34},
  {author_id: 38, book_id: 34},
  {author_id: 38, book_id: 35},
  {author_id: 39, book_id: 36},
  {author_id: 40, book_id: 37},
  {author_id: 41, book_id: 38},
  {author_id: 42, book_id: 38},
  {author_id: 43, book_id: 38},
  {author_id: 44, book_id: 38},
  {author_id: 45, book_id: 38},
  {author_id: 46, book_id: 38},
  {author_id: 47, book_id: 38},
  {author_id: 42, book_id: 39},
  {author_id: 42, book_id: 40},
  {author_id: 47, book_id: 42},
  {author_id: 47, book_id: 41},
  {author_id: 48, book_id: 39},
  {author_id: 49, book_id: 39},
  {author_id: 50, book_id: 39},
  {author_id: 51, book_id: 39},
  {author_id: 52, book_id: 39},
  {author_id: 53, book_id: 39},
  {author_id: 54, book_id: 39},
  {author_id: 55, book_id: 41},
  {author_id: 56, book_id: 40},
  {author_id: 57, book_id: 40},
  {author_id: 58, book_id: 40},
  {author_id: 59, book_id: 40},
  {author_id: 60, book_id: 40},
  {author_id: 61, book_id: 43},
  {author_id: 61, book_id: 52},
  {author_id: 61, book_id: 58},
  {author_id: 62, book_id: 45},
  {author_id: 63, book_id: 45},
  {author_id: 64, book_id: 45},
  {author_id: 65, book_id: 45},
  {author_id: 66, book_id: 45},
  {author_id: 66, book_id: 45},
  {author_id: 67, book_id: 45},
  {author_id: 68, book_id: 45},
  {author_id: 62, book_id: 46},
  {author_id: 69, book_id: 46},
  {author_id: 70, book_id: 46},
  {author_id: 71, book_id: 47},
  {author_id: 72, book_id: 48},
  {author_id: 73, book_id: 48},
  {author_id: 74, book_id: 48},
  {author_id: 75, book_id: 49},
  {author_id: 76, book_id: 50},
  {author_id: 77, book_id: 51},
  {author_id: 78, book_id: 53},
  {author_id: 79, book_id: 54},
  {author_id: 80, book_id: 55},
  {author_id: 81, book_id: 56},
  {author_id: 82, book_id: 57},
  {author_id: 83, book_id: 57},
  {author_id: 85, book_id: 59},
  {author_id: 84, book_id: 59},
  {author_id: 86, book_id: 60},
])

BookCategory.create!([
  {category_id: 1, book_id: 1},
  {category_id: 11, book_id: 2},
  {category_id: 13, book_id: 2},
  {category_id: 10, book_id: 3},
  {category_id: 11, book_id: 4},
  {category_id: 12, book_id: 4},
  {category_id: 14, book_id: 5},
  {category_id: 14, book_id: 6},
  {category_id: 14, book_id: 7},
  {category_id: 11, book_id: 8},
  {category_id: 12, book_id: 8},
  {category_id: 6, book_id: 9},
  {category_id: 7, book_id: 9},
  {category_id: 6, book_id: 10},
  {category_id: 7, book_id: 10},
  {category_id: 14, book_id: 11},
  {category_id: 10, book_id: 12},
  {category_id: 9, book_id: 13},
  {category_id: 10, book_id: 13},
  {category_id: 9, book_id: 14},
  {category_id: 10, book_id: 14},
  {category_id: 9, book_id: 15},
  {category_id: 10, book_id: 15},
  {category_id: 1, book_id: 28},
  {category_id: 1, book_id: 29},
  {category_id: 1, book_id: 34},
  {category_id: 1, book_id: 35},
  {category_id: 1, book_id: 55},
  {category_id: 1, book_id: 56},
  {category_id: 1, book_id: 57},
  {category_id: 6, book_id: 20},
  {category_id: 6, book_id: 23},
  {category_id: 6, book_id: 37},
  {category_id: 6, book_id: 42},
  {category_id: 6, book_id: 29},
  {category_id: 7, book_id: 23},
  {category_id: 7, book_id: 37},
  {category_id: 8, book_id: 42},
  {category_id: 9, book_id: 31},
  {category_id: 9, book_id: 34},
  {category_id: 9, book_id: 35},
  {category_id: 9, book_id: 36},
  {category_id: 9, book_id: 44},
  {category_id: 9, book_id: 49},
  {category_id: 9, book_id: 50},
  {category_id: 10, book_id: 23},
  {category_id: 10, book_id: 28},
  {category_id: 10, book_id: 34},
  {category_id: 10, book_id: 35},
  {category_id: 10, book_id: 41},
  {category_id: 10, book_id: 49},
  {category_id: 11, book_id: 54},
  {category_id: 11, book_id: 40},
  {category_id: 11, book_id: 39},
  {category_id: 11, book_id: 38},
  {category_id: 11, book_id: 35},
  {category_id: 11, book_id: 34},
  {category_id: 11, book_id: 53},
  {category_id: 11, book_id: 57},
  {category_id: 12, book_id: 53},
  {category_id: 12, book_id: 57},
  {category_id: 13, book_id: 57},
  {category_id: 14, book_id: 19},
  {category_id: 14, book_id: 30},
  {category_id: 14, book_id: 46},
  {category_id: 15, book_id: 16},
  {category_id: 15, book_id: 17},
  {category_id: 15, book_id: 18},
  {category_id: 15, book_id: 21},
])

Tag.create!([
  {title: "rails"},
  {title: "ruby"},
  {title: "python"},
  {title: "ui"},
  {title: "ux"},
  {title: "java"},
  {title: "android"},
  {title: "html5"},
  {title: "css"},
  {title: "bootstrap"},
  {title: "jquery"},
  {title: "angulat"},
  {title: "react"},
  {title: "database"},
  {title: "mysql"},
  {title: "postgre"},
  {title: "mongodb"},
  {title: "hello"},
  {title: "writer"},
  {title: "amazing"}
])

BookTag.create!([
  {book_id: 1, tag_id: 1},
  {book_id: 2, tag_id: 2},
  {book_id: 3, tag_id: 3},
  {book_id: 4, tag_id: 4},
  {book_id: 5, tag_id: 5},
  {book_id: 6, tag_id: 6},
  {book_id: 7, tag_id: 7},
  {book_id: 8, tag_id: 8},
  {book_id: 9, tag_id: 9},
  {book_id: 10, tag_id: 10},
  {book_id: 11, tag_id: 11},
  {book_id: 12, tag_id: 12},
  {book_id: 13, tag_id: 13},
  {book_id: 14, tag_id: 14},
  {book_id: 15, tag_id: 15},
  {book_id: 1, tag_id: 11},
  {book_id: 1, tag_id: 12},
  {book_id: 1, tag_id: 13},
  {book_id: 1, tag_id: 14},
  {book_id: 1, tag_id: 15},
  {book_id: 1, tag_id: 16},
  {book_id: 2, tag_id: 3},
  {book_id: 2, tag_id: 4},
  {book_id: 2, tag_id: 5},
  {book_id: 3, tag_id: 13},
  {book_id: 3, tag_id: 4},
  {book_id: 3, tag_id: 5},
  {book_id: 4, tag_id: 3},
  {book_id: 4, tag_id: 14},
  {book_id: 4, tag_id: 5},
  {book_id: 5, tag_id: 3},
  {book_id: 5, tag_id: 4},
  {book_id: 5, tag_id: 15},
  {book_id: 6, tag_id: 3},
  {book_id: 7, tag_id: 4},
  {book_id: 7, tag_id: 5},
  {book_id: 8, tag_id: 3},
  {book_id: 9, tag_id: 4},
  {book_id: 10, tag_id: 5}
])

for i in 1..100
  a = i%4
  if a == 0
    Borrow.create! book_id: i%10 +1, user_id: i%19 +1, status: "not_approved_yet",
      time_start: Time.now - 2.days,
      time_end: Time.now + i.days
  elsif a == 1
    Borrow.create! book_id: i%10 +1, user_id: i%19 +1, status: "approved",
      time_start: Time.now - 2.days,
      time_end: Time.now + i.days
  elsif a == 2
    Borrow.create! book_id: i%10 +1, user_id: i%19 +1, status: "cancel",
      time_start: Time.now - 2.days,
      time_end: Time.now + i.days
  else
    Borrow.create! book_id: i%10 +1, user_id: i%19 +1, status: "rejected",
      time_start: Time.now - 2.days,
      time_end: Time.now + i.days
  end
end

for i in 1..100
  BookItem.create! book_id: (i%13 + 1), location: "Sequence number 2 on the left.",
    state: :ready, description: "New books, not damaged."
end

Blog.create!([
  {user_id: 1,
    content: "KIRKUS REVIEW
      A witty book that turns the science of the stuff we breathe into a delightful romp through history.
      Kean (The Tale of the Dueling Neurosurgeons: The History of the Human Brain as Revealed by True Stories of Trauma, Madness, and Recovery, 2014, etc.), an award-winning science writer whose previous books may have sounded off the wall but tackled serious subjects, has done it again, using his free-wheeling style to translate hard scientific facts into lively stories. He divides the narrative into three sections, the first of which examines the origins of the air on our planet. Here, we learn about the contribution of volcanic eruptions, including a diverting piece on one unfortunately stubborn resident of Mount Saint Helens, the eruption of which served as “the greatest geology lesson in American history.” In the second section, Kean takes up the various components of air, starting with the major one, nitrogen, and concluding with the much rarer helium and the noble gases. Here, each chapter explores how human beings have exploited the different gases, which gives the author the opportunity to tell more entertaining stories, including ones about anesthesia and ballooning. In the third section, Kean takes a look at recent changes in the composition of our air and at the significance of the atmospheres of other planets. Of special interest, however, are the interspersed sections called “Interludes,” in which the author tells related human interest anecdotes—e.g., an exploding lake in Cambodia, a failed bank robbery in Germany, spontaneous combustion of humans, and the special talents of Le Pétomane, a highly paid “fartiste” at the Moulin Rouge. Kean cannot resist sharing other gems he uncovered in his research, and readers will appreciate them. For these, see the back-of-the-book section, “Notes and Miscellanea.” Some are priceless.
      Great fun for general readers curious about our world and an especially appropriate gift for a young person considering a career in the sciences.",
    description: "Decoding the Secrets of the Air Around Us",
    title: "CAESAR'S LAST BREATH",},
  {user_id: 1,
   content: "KIRKUS REVIEW
      A witty book that turns the science of the stuff we breathe into a delightful romp through history.
      Kean (The Tale of the Dueling Neurosurgeons: The History of the Human Brain as Revealed by True Stories of Trauma, Madness, and Recovery, 2014, etc.), an award-winning science writer whose previous books may have sounded off the wall but tackled serious subjects, has done it again, using his free-wheeling style to translate hard scientific facts into lively stories. He divides the narrative into three sections, the first of which examines the origins of the air on our planet. Here, we learn about the contribution of volcanic eruptions, including a diverting piece on one unfortunately stubborn resident of Mount Saint Helens, the eruption of which served as “the greatest geology lesson in American history.” In the second section, Kean takes up the various components of air, starting with the major one, nitrogen, and concluding with the much rarer helium and the noble gases. Here, each chapter explores how human beings have exploited the different gases, which gives the author the opportunity to tell more entertaining stories, including ones about anesthesia and ballooning. In the third section, Kean takes a look at recent changes in the composition of our air and at the significance of the atmospheres of other planets. Of special interest, however, are the interspersed sections called “Interludes,” in which the author tells related human interest anecdotes—e.g., an exploding lake in Cambodia, a failed bank robbery in Germany, spontaneous combustion of humans, and the special talents of Le Pétomane, a highly paid “fartiste” at the Moulin Rouge. Kean cannot resist sharing other gems he uncovered in his research, and readers will appreciate them. For these, see the back-of-the-book section, “Notes and Miscellanea.” Some are priceless.
      Great fun for general readers curious about our world and an especially appropriate gift for a young person considering a career in the sciences.",
   description: "Of the free internet and its discontents, who are many and powerful. ",
   title: "A MIND AT PLAY: HOW CLAUDE SHANNON INVENTED THE INFORMATION AGE",},
  {user_id: 1,
   content: "KIRKUS REVIEW
      A witty book that turns the science of the stuff we breathe into a delightful romp through history.
      Kean (The Tale of the Dueling Neurosurgeons: The History of the Human Brain as Revealed by True Stories of Trauma, Madness, and Recovery, 2014, etc.), an award-winning science writer whose previous books may have sounded off the wall but tackled serious subjects, has done it again, using his free-wheeling style to translate hard scientific facts into lively stories. He divides the narrative into three sections, the first of which examines the origins of the air on our planet. Here, we learn about the contribution of volcanic eruptions, including a diverting piece on one unfortunately stubborn resident of Mount Saint Helens, the eruption of which served as “the greatest geology lesson in American history.” In the second section, Kean takes up the various components of air, starting with the major one, nitrogen, and concluding with the much rarer helium and the noble gases. Here, each chapter explores how human beings have exploited the different gases, which gives the author the opportunity to tell more entertaining stories, including ones about anesthesia and ballooning. In the third section, Kean takes a look at recent changes in the composition of our air and at the significance of the atmospheres of other planets. Of special interest, however, are the interspersed sections called “Interludes,” in which the author tells related human interest anecdotes—e.g., an exploding lake in Cambodia, a failed bank robbery in Germany, spontaneous combustion of humans, and the special talents of Le Pétomane, a highly paid “fartiste” at the Moulin Rouge. Kean cannot resist sharing other gems he uncovered in his research, and readers will appreciate them. For these, see the back-of-the-book section, “Notes and Miscellanea.” Some are priceless.
      Great fun for general readers curious about our world and an especially appropriate gift for a young person considering a career in the sciences.",
   description: 'The life of the man called "the father of information theory"',
   title: "THE DARKENING WEB: THE WAR FOR CYBERSPACE",},
  {user_id: 1,
   content: "KIRKUS REVIEW
      A witty book that turns the science of the stuff we breathe into a delightful romp through history.
      Kean (The Tale of the Dueling Neurosurgeons: The History of the Human Brain as Revealed by True Stories of Trauma, Madness, and Recovery, 2014, etc.), an award-winning science writer whose previous books may have sounded off the wall but tackled serious subjects, has done it again, using his free-wheeling style to translate hard scientific facts into lively stories. He divides the narrative into three sections, the first of which examines the origins of the air on our planet. Here, we learn about the contribution of volcanic eruptions, including a diverting piece on one unfortunately stubborn resident of Mount Saint Helens, the eruption of which served as “the greatest geology lesson in American history.” In the second section, Kean takes up the various components of air, starting with the major one, nitrogen, and concluding with the much rarer helium and the noble gases. Here, each chapter explores how human beings have exploited the different gases, which gives the author the opportunity to tell more entertaining stories, including ones about anesthesia and ballooning. In the third section, Kean takes a look at recent changes in the composition of our air and at the significance of the atmospheres of other planets. Of special interest, however, are the interspersed sections called “Interludes,” in which the author tells related human interest anecdotes—e.g., an exploding lake in Cambodia, a failed bank robbery in Germany, spontaneous combustion of humans, and the special talents of Le Pétomane, a highly paid “fartiste” at the Moulin Rouge. Kean cannot resist sharing other gems he uncovered in his research, and readers will appreciate them. For these, see the back-of-the-book section, “Notes and Miscellanea.” Some are priceless.
      Great fun for general readers curious about our world and an especially appropriate gift for a young person considering a career in the sciences.",
   description: "Decoding the Secrets of the Air Around Us",
   title: "EVERYTHING ALL AT ONCE: HOW NERDS SOLVE PROBLEMS",},
  {user_id: 1,
   content: "KIRKUS REVIEW
      A witty book that turns the science of the stuff we breathe into a delightful romp through history.
      Kean (The Tale of the Dueling Neurosurgeons: The History of the Human Brain as Revealed by True Stories of Trauma, Madness, and Recovery, 2014, etc.), an award-winning science writer whose previous books may have sounded off the wall but tackled serious subjects, has done it again, using his free-wheeling style to translate hard scientific facts into lively stories. He divides the narrative into three sections, the first of which examines the origins of the air on our planet. Here, we learn about the contribution of volcanic eruptions, including a diverting piece on one unfortunately stubborn resident of Mount Saint Helens, the eruption of which served as “the greatest geology lesson in American history.” In the second section, Kean takes up the various components of air, starting with the major one, nitrogen, and concluding with the much rarer helium and the noble gases. Here, each chapter explores how human beings have exploited the different gases, which gives the author the opportunity to tell more entertaining stories, including ones about anesthesia and ballooning. In the third section, Kean takes a look at recent changes in the composition of our air and at the significance of the atmospheres of other planets. Of special interest, however, are the interspersed sections called “Interludes,” in which the author tells related human interest anecdotes—e.g., an exploding lake in Cambodia, a failed bank robbery in Germany, spontaneous combustion of humans, and the special talents of Le Pétomane, a highly paid “fartiste” at the Moulin Rouge. Kean cannot resist sharing other gems he uncovered in his research, and readers will appreciate them. For these, see the back-of-the-book section, “Notes and Miscellanea.” Some are priceless.
      Great fun for general readers curious about our world and an especially appropriate gift for a young person considering a career in the sciences.",
   description: "The concept of curiosity is a tough nut to crack. Livio is not shy about admitting its difficulties, and he makes an admirable effort to explain complex and still-not-well-understood ideas",
   title: "WHY: WHAT MAKES US CURIOUS?",},
])

BlogBook.create!([
  {blog_id: 1, book_id: 1},
  {blog_id: 2, book_id: 2},
  {blog_id: 3, book_id: 3},
  {blog_id: 4, book_id: 4},
  {blog_id: 4, book_id: 6},
  {blog_id: 4, book_id: 7},
  {blog_id: 5, book_id: 11},
  {blog_id: 5, book_id: 5},
  {blog_id: 2, book_id: 1},
])

Announcement.create!([
  {admin_id: 1, title: "Fbook introduced the Trending posts feature",
    content: "Fbook has just added new feature called Trending posts.
      When posts reach the number of views, votes, clips, comments at a certain
      level, they will be automatically tagged by Fbook system as Trending."},
  {admin_id: 1, title: "Fbook introduced the RSS Feed feature",
    content: "Fbook has just added the RSS Feed feature, allowing you to
      receive news feeds through RSS Feed Readers.The address for receiving RSS
      feeds on Fbook is https://fbook/rss, which you can see at RESOURCES in
      the footer at the bottom of the page."}
])

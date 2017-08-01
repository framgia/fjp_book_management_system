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
  {name: "マイナビ ", description: "Vietnam's publisher"},
  {name: "Packt Publishing", description: "Vietnam's publisher"},
  {name: "mitp Verlags GmbH & Co. KG", description: "Vietnam's publisher"}])

Author.create!([
  {name: "田中 哲(Tanaka Akira)",
    description: "2000年北陸先端科学技術大学院大学博士後期課程修了。同年より電子技術総合
      研究所。2001年に産業技術総合研究所に改組され現在に至る。プログラミング言語に興味を持ち、
      実践としてRubyの開発を行うコミッタでもある。Rubyへの貢献は細かいものまで含めると数えき
      れないが、大きなものは本書にかなり書いてある。"},
  {name: "aolo Perrotta", description: "aolo Perrottaは、ソフトウェアの設計・開発に10
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
      掲載しませんか？ご登録、ご利用は無料です。"}])

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
  {title: "Android", parent_id: 3, description: "See what's new with Android -
   from phones to watches and more. Visit the official site to
   explore and learn."},
  {title: "iOS", parent_id: 3, description: "If there is one piece of technology
    that is ubiquitous in the blind community today, it would have to be the
    iPhone. Ever since the release of the iPhone 3GS, people with little or
    no vision have been moving their fingers across a smooth piece of glass
    and doing things they never thought possible. Whether it's setting calendar
    appointments, looking at restaurant menus, or reading movie reviews,
    the iPhone has been a big part of it all."},
  {title: "Windown Phone", parent_id: 3, description: "Informationvine.com
    connects you to the best results from across the web. Search & Find Now ·
    Find Relevant Information · Learn More · Quick & Easy Answers"},
  {title: "Web", description: "We develop cross-platform Web app for reading
    ebooks, and also publish high- quality ebooks, especially textbooks."},
  {title: "Ruby on rails", parent_id: 6, description: "We want to teach you
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
    Books Best Sellers."}])

Book.create!([
  {title: "開眼! JavaScript ―言語仕様から学ぶJavaScriptの本質",
    public_date: "2013/6/19", pages: 192,
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
    publisher_id: 2, language_id: 2, pages: 360,
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
    publisher_id: 4, language_id: 2, pages: 148,
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
    publisher_id: 4, language_id: 2, pages: 184,
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
    publisher_id: 4, language_id: 2, pages: 456,
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
    publisher_id: 7, language_id: 2, pages: 360,
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
    publisher_id: 6, language_id: 2, pages: 312,
    dimension: "21 x 14.8 x 2.6 cm", public_date: "2010/8/28",
    description: "内容紹介
      メタプログラミングは強力なRubyの機能ですが、習得が難しいと言われていました。
      本書はメタプログラミングに必要なすべての概念を明確に、平易に解説。
      Rubyの最も複雑な秘伝を簡単に身につけましょう。"},
  {title: "入門 コンピュータ科学 ITを支える技術と理論の基礎知識", isbn: "4048869574",
    publisher_id: 2, language_id: 2, pages: 608,
    dimension: "23.2 x 18.4 x 3 cm", public_date: "22014/2/18",
    description: "内容（「BOOK」データベースより）
      きわめてオー  ソドックスなコンピュータ科学の教科書。コンピュータ科学が抽象化ツ
      ールの階層構造になっているという視点で統一的に記述されている。"},
  {title: "Python機械学習プログラミング 達人データサイエンティスト
    による理論と実践 (impress top gear)",
    isbn: "4844380605",
    publisher_id: 2, language_id: 2, pages: 456,
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
    publisher_id: 8, language_id: 1, pages: 360,
    dimension: "21 x 14.8 x 2.6 cm", public_date: "2012/3/16",
    description: "About This Book
      Leverage Python's most powerful open-source libra
      ries for deep learning, data wrangling, and data visualization
      Learn effective strategies and best practices t
      o improve and optimize machine learning systems and algorithms
      Ask – and answer – tough questions of your d
      ata with robust statistical models, built for a range of datasets"},
  {title: "Python: Deeper Insights i
    nto Machine Learning", isbn: "B01LD8K994", series_id: 1,
    publisher_id: 8, language_id: 1, pages: 360,
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
   isbn: "B01MXOGW9T", series_id: 1,
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
    eine Vielfalt von statistischen Modellen ein."}])


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
    url: File.open(Rails.root + "public/uploads/image/13.3.jpg")}])

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
  {author_id: 4, book_id: 15}])

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
  {category_id: 10, book_id: 15}])

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
  {title: "amazing"}])

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
  {book_id: 10, tag_id: 5}])

for i in 1..100
  a = i%4
  if a == 0
    Borrow.create! book_id: i%10 +1, user_id: i%19 +1, status: "not_approved",
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
    Borrow.create! book_id: i%10 +1, user_id: i%19 +1, status: "reject",
      time_start: Time.now - 2.days,
      time_end: Time.now + i.days
  end
end

for i in 1..100
  BookItem.create! book_id: (i%13 + 1), location: "Sequence number 2 on the left.",
    state: "Ready", description: "New books, not damaged."
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

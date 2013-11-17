# language: ja

機能: スプリント１

  <div class="narrative">
    突然ですが、プロジェクトでカレンダー機能なんかあったりした場合、祝日の計算ってどうやっていますか？
    <br/>
    えっ、計算なんか難しくてしていない？
    <br/>
    そう返答したあなたはおそらく正解です。
  </div>

  <div class="narrative">
    内閣府のホームページ http://www8.cao.go.jp/chosei/shukujitsu/gaiyou.html には、こんな記述があります。
    <div>
      「春分の日」及び「秋分の日」について
      <br/>
      <br/>
      祝日のうち、「春分の日」及び「秋分の日」は、法律で具体的に月日が明記されずに、それぞれ「春分日」、「秋分日」と定められています。
      <br/>
      <br/>
      「春分の日」及び「秋分の日」については、国立天文台が、毎年２月に翌年の「春分の日」、「秋分の日」を官報で公表しています。詳しくは、国立天文台ホームページ「よくある質問」（質問3-1）を御参照ください。
    </div>
  </div>

  <div class="narrative">
    これって、毎年の発表を待たないと正確な祝日は確定しないってことですよね。
    <br/>
    なんか祝日が変なサイトがあるなあと思ったことがあったのですが、こうゆうことだったのかも知れません。
  </div>

  <div class="narrative">
    そこで便利がライブラリが <a href="https://github.com/komagata/holiday_jp" target="_blank">holiday_jp</a> です。
    <br/>
    祝日を計算せずに、内部でデータベース化しています。
    <br/>
    どんなものか、さっそく使ってみましょう。
  </div>

  シナリオ: アプリを生成
    * 雛形を生成
      """
      <b>
      $ rails _3.2.15_ new jpcalendar -d mysql --skip-bundle
      </b>
      """
    * Gemfileを編集
      """
      holiday_jp 他、便利な gem を定義します。
      """
    * ライブラリをインストール
      """
      <b>
      $ sudo bundle install
      </b>
      """
    * DB定義を生成
      """
      <b>
      $ rake dad:db:config
      </b>
      """
    * DBを作成
      """
      <b>
      $ rake dad:db:create
      </b>
      """

# Eye-et（アイエット）
バランスの取れた食生活をサポートする、栄養可視化スマートアイグラス

## 製品概要
### 背景(製品開発のきっかけ、課題等）
日々の生活を送る上で基本となる「健康」。そのためには「食生活」が大切です。<br>
でも、忙しかったり好き嫌いがあったりして、偏った食事になりがちではありませんか？

一日の摂取目安量やバランスを意識する「栄養管理」には、知識や努力が必要です。
> 例えば、ある食品の栄養成分表を見て「〜 100 mg」と書かれていても、<br>
それまでに何の栄養素をどの程度摂取していて、今日はあと何mg摂取すれば良いのか<br>
分かっている人はなかなかいません。

記録・診断してくれるサービスを使うにも、「何を食べたのか」の入力に手間がかかり、続けるのは難しいイメージがあります。

そんなときに、メガネ型端末SmartEyeglassを活用することで、誰でも続けられる栄養管理サービスを考えました。
「Eye（目） から Diet（適切な食事）を」というメッセージを込めて「Eye-et」と名づけています。

### 製品説明（具体的な製品の説明）
### 特長
####1. 見る＋ワンタッチで、その食品の栄養成分を自分向けに可視化
　SmartEyeglassから覗いた食品を認識し、栄養成分を自動で調べます。
　そして、それを食べたとすると、何の栄養素がどの程度満たされるのかを、<br>自分のそれまでの摂取量を踏まえてわかりやすくくグラフ化します。

####2. 見る＋ワンタッチで、食事を簡単記録
　特徴1 のようにして確認した後、食べたかどうかを選択すれば、データベースにその食事情報が記録されます。
　
####3. 栄養の蓄積を常に確認
 自分にあわせた「1日の必要％」で分かりやすく表示。
 1日の摂取目安量の達成度がいつでも確認できます。


### 解決出来ること
* 生活習慣病の予防・改善<br>
栄養についての知識がない人でも、バランスや摂取量を意識した食生活が送れるようになることで、生涯健康で過ごせるようになる

### 今後の展望
【価値の提供】
*  ユーザーの特徴に合わせた提案
  * 商品提案によるスポンサー商品の販売促進，アフィリエイト
　（疲れが溜まっている◯◯さんには，□□□がおすすめです）
  * アレルギー対応
   （アレルギー食品が含まれていると，警告が出る）
  * 運動量計等のとデータ連携
  （活動量・消費カロリーに合わせて，各栄養分の推奨量を変更．アドバイス）
* 他のユーザーとの比較（競争要素）

【使いやすさの向上】
* 音声認識による入力
   　画像認識できないもの（自炊）の食事記録にも対応できるように、
　（例：シチュー。豚肉 100グラム、にんじん 40グラム…。）
* 食品栄養素APIの利用による、対応商品数の拡大


### 注力したこと（こだわり等）
* わかりやすく楽しくなるUIデザイン
　堅苦しいものではなく、ゲーム中でのHPやMPのような、楽しめるUIを目指しました。
* 手軽に使える「栄養LOOK機能」
　調べる手間を減らし、ワンタッチで目の前の栄養成分を確認できる手軽さを追求しました。


## 開発技術
### 活用した技術
#### API・データ
* docomo 画像認識API（商品認識）
* EatSmart もぐなび　http://mognavi.jp/food/858364
* さくらインターネット さくらのクラウド

#### フレームワーク・ライブラリ・モジュール
* Ruby on Rails 4 + Grape + Rmagick + Faraday

#### デバイス
* Sony SmartEyeglass Developer Edition SED-E1 - 透過式メガネ型端末
* Android スマートフォン

### 独自技術
#### ハッカソンで開発した独自機能・技術
* 独自で開発したものの内容をこちらに記載してください
* 特に力を入れた部分をファイルリンク、またはcommit_idを記載してください。

#### 製品に取り入れた研究内容（データ・ソフトウェアなど）（※アカデミック部門の場合のみ提出必須）
* 
*

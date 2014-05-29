SpreeMakerSearch
================

目的
-------
* 商品のメーカー名を商品詳細ページに表示します。
* ショッピングサイト上で、メーカー名でフィルタリングできます（分類のページで）。
* 管理者はメーカーのリストを管理でき、製品に1メーカーを設定することができます（ADD ON MENUタブを開いてください）。

商品名の下にメーカー名を表示
![MakerSearch](https://raw.githubusercontent.com/wiki/digitalm/spree_maker_search/images/makersearch2.jpg)

フィルタ検索
![MakerSearch](https://raw.githubusercontent.com/wiki/digitalm/spree_maker_search/images/makersearch1.jpg)

管理サイト - ADD ON MENUタブ
![Maker](https://raw.githubusercontent.com/wiki/digitalm/spree_maker_search/images/maker1.jpg)

管理サイト - 商品タブ - 商品編集ページ
![Maker](https://raw.githubusercontent.com/wiki/digitalm/spree_maker_search/images/maker2.jpg)

設置方法
------------

Gemfileに追加します:

```ruby
gem 'spree_maker_search', github: 'digitalm/spree_maker_search'
```

Bundleしてインストールします:

```shell
bundle
bundle exec rails g spree_add_on_menu:install
bundle exec rails g spree_maker_search:install
```

Testing
-------

Be sure to bundle your dependencies and then create a dummy test app for the specs to run against.

```shell
bundle
bundle exec rake test_app
bundle exec rspec spec
```

When testing your applications integration with this extension you may use it's factories.
Simply add this require statement to your spec_helper:

```ruby
require 'spree_maker_search/factories'
```

Copyright (c) 2014 [Exsight.inc](http://www.exsight.co.jp/) , released under the New BSD License
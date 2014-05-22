SpreeMakerSearch
================

Purpose
-------
* Product's maker name is shown on product detail page.
* Customer can filter by maker name on taxon page.
* Admin can manage maker list and set one maker to product.

![MakerSearch](https://raw.githubusercontent.com/wiki/digitalm/spree_maker_search/images/makersearch2.jpg)
![MakerSearch](https://raw.githubusercontent.com/wiki/digitalm/spree_maker_search/images/makersearch1.jpg)

Installation
------------

Add spree_maker_search to your Gemfile:

```ruby
gem 'spree_maker_search'
```

Bundle your dependencies and run the installation generator:

```shell
bundle
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
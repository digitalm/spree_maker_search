//= require admin/spree_backend
$(document).ready(function () {
  'use strict';

  if ($('#product_add_on_maker_ids').length > 0) {
    $('#product_add_on_maker_ids').select2({
      placeholder: Spree.translations.add_on_maker_placeholder,
      multiple: true,
      initSelection: function (element, callback) {
        var url = Spree.url(Spree.routes.add_on_makers_search, {
          ids: element.val()
        });
        return $.getJSON(url, null, function (data) {
          return callback(data['add_on_makers']);
        });
      },
      ajax: {
        url: Spree.routes.add_on_makers_search,
        datatype: 'json',
        data: function (term, page) {
          return {
            per_page: 50,
            page: page,
            q: {
              name_cont: term
            }
          };
        },
        results: function (data, page) {
          var more = page < data.pages;
          return {
            results: data['add_on_makers'],
            more: more
          };
        }
      },
      formatResult: function (add_on_maker) {
        return add_on_maker.name;
      },
      formatSelection: function (add_on_maker) {
        return add_on_maker.name;
      }
    });
  }
});
(function () {
  App.Collections.Marks = Backbone.Collection.extend({
    url: function () {
      if (this.query) {
        return '/api/marks?query=' + encodeURIComponent(this.query);
      } else {
        return '/api/marks';
      }
    }
  });
})();

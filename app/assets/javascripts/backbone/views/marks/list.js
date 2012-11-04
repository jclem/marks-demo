(function () {
  App.Views.Marks.List = Backbone.Marionette.CompositeView.extend({
    initialize: function () {
      this.itemView = App.Views.Marks.Show
    },

    template: JST['marks/list'],

    itemViewContainer: '#marks',

    events: {
      'click #search input[type=submit]': 'search',
      'search #query': 'search'
    },

    search: function (e) {
      e.preventDefault();
      this.collection.query = this.$('#query').val();
      this.collection.fetch();
    }
  });
})();

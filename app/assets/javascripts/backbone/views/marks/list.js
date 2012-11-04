(function () {
  App.Views.Marks.List = Backbone.Marionette.CompositeView.extend({
    initialize: function () {
      this.itemView = App.Views.Marks.Show
    },

    template: JST['marks/list'],

    itemViewContainer: '#marks'
  });
})();

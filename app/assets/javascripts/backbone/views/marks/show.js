(function () {
  App.Views.Marks.Show = Backbone.Marionette.ItemView.extend({
    template: JST['marks/show'],
    render: function () {
      this.$el.html(this.template({ model: this.model }));
    }
  });
})();

(function () {
  App.Layouts.Layout = Backbone.Marionette.Layout.extend({
    template: JST['layouts/layout'],

    render: function () {
      this.$el.html(this.template());
      return this.$el;
    },

    regions: {
      content: '#content'
    }
  });
})();

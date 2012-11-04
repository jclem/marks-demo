(function () {
  App.Controllers.MarksController = function () {
    this.list = function () {
      var collection = new App.Collections.Marks();

      collection.fetch().done(function () {
        var view = new App.Views.Marks.List({ collection: collection });
        App.layout.content.show(view);
      });
    };
  };
})();

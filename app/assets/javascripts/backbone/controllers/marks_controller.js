(function () {
  App.Controllers.MarksController = function () {
    this.list = function (query) {
      var collection = new App.Collections.Marks();

      if (query) {
        collection.query = query;
      }

      collection.fetch().done(function () {
        var view = new App.Views.Marks.List({ collection: collection });
        App.layout.content.show(view);
      });
    };
  };
})();

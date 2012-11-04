$(function () {
  App.addInitializer(function () {
    this.controllers = {
      marksController: new App.Controllers.MarksController()
    };

    this.routers = {
      marksRouter: new App.Routers.MarksRouter({ controller: App.controllers.marksController })
    };

    App.layout = new App.Layouts.Layout();
    $('body').prepend(App.layout.render());
    Backbone.history.start({ pushState: true });
  });

  App.start();
});

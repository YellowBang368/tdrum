$(document).ready(function(){
  $(".read-more").click(function(){
    var $this = $(this)
    if ($this.hasClass("used")) {
      $this.removeClass("used");
      $this.find("i").removeClass("fa-angle-up").addClass("fa-angle-down");
      $this.closest(".review").find(".body").removeClass("opened").addClass("closed");
    } else {
      $this.addClass("used");
      $this.find("i").removeClass("fa-angle-down").addClass("fa-angle-up");
      $this.closest(".review").find(".body").removeClass("closed").addClass("opened");
    }
  });
});

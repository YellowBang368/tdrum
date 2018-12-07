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

  $(".open-review-dialog").click(function(){
    $(".overlay-modal").css("display", "block");
    $(".modal").css("display", "flex");
  });

  $(".modal-close").click(function(){
    $(".overlay-modal").css("display", "none");
    $(".modal").css("display", "none");
  });

  $(".choose-color li").click(function(){
    $(".choose-color li").removeClass("active");
    $(this).addClass("active");
  });
});

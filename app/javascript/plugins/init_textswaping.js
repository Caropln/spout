function initTextswaping ($swap) {
  var next = $swap.find("li.visible").removeClass("visible").index() + 1;

  if(next >= $swap.find("li").length) {
    next = 0;
  }

  $swap.width($($swap.find("li").get(next)).addClass("visible").outerWidth() - 30);
  $swap.css({ "transform" : "translateY(-" + next * 3 + "rem)" });

  setTimeout(function () { initTextswaping($swap); }, 2000);
};

$(function () {
  $(".swap").each(function () {
    var $this = $(this);

    $this.find("li").each(function () {
      $(this).css({ top: $(this).index() * 3 + "rem" });
    });

    initTextswaping($this);
  });
});


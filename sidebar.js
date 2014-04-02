$(document).ready(function () {
	//Set side nav to height of window on load
	limit = $(this).height();	
	$("#sidebar").css("max-height",limit);
	//Set side nav to height of window on resize
	$(window).resize(function () {
		limit = $(this).height();
		$("#sidebar").css("max-height",limit);
	});
	//Make side bar scroll with window
	$(window).scroll(function (event) {
		// what the y position of the scroll is
		var y = $(window).scrollTop();
		//position of sidebar while scrolled past 150px
		var offset = $(window).scrollTop()-150;
		// check if scrolled past limit
		if (y >= 150) {
			// if so, ad the fixed class and position
			$("#sidebar").css("postion","fixed");
			$("#sidebar").css("top", offset);
			} else {
			// otherwise remove it
			$("#sidebar").css("postion","relative");
			$("#sidebar").css("top", "0");
		}
	});
/********************************
	Dynamic sidebar builder
*********************************/
	var cnt = 1;
	var cnt2 = 1;
	var dropcheck = 0;
	$("#content").find(".section").each(function(){
		$(this).attr("id","section"+cnt);
		$(this).find("h2").each(function(){
			var currHtml = this.innerHTML;
			var currId = currHtml.replace(/[^a-z0-9\s]/gi,'').replace(/\s+/g,'');
			$(this).attr("id",currId);	
			$("#sidebarlist").append("<li id=\"secitem"+cnt+"\"><a id=\"seclink"+cnt+"\" href=\"#"+currId+"\">"+currHtml+"</a></li>");
		});
		$(this).find("h3").each(function(){				
			var currHtml = this.innerHTML;
			var currId = currHtml.replace(/\s+/g,'');
			$(this).attr("id",currId);
			var currId = this.id;
			var SEC = "secitem"+cnt;
			var dropid = "drop"+cnt;
			if(dropcheck == 0){
				$("#"+SEC).append("<ul class=\"nav nav-list nav-stacked\" id=\""+dropid+"\"></ul>");
				dropcheck = 1;
				}
			$("#"+dropid).append("<li><a href=\"#"+currId+"\">"+currHtml+"</a></li>");
			cnt2++;
		});
		cnt++;
		dropcheck = 0;
	});	
});



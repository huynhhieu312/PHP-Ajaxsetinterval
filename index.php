<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Title of the document</title>
<script><?php include_once("js/jquery.php"); ?></script>
</head>

<body>
<div class="notification notifycomment">
<div class="close closethongbao">X</div>
<p class="namkhoa">abc</p>
<p class="taimuihong"></p>
<p class="benhxahoi"></p>
</div>

<style>
.notification{position:fixed;width:50%;padding:10px;background:#1fb5ad;right:0;margin-right:5%;top:20%;}
.notification p{color:#fff;}
.notifycomment{display:none;}
</style>
</body>
<script>
$(function(){
		$('.closethongbao').click(function(){
				$('.notifycomment').fadeOut(500);
				console.log(123);
			})
				var ajax_call = function() {
				$.ajax({     
					url:"http://localhost/goirealtime/xulykiemtracomment.php", cache:false,
					success: function(dulieu) {
							//obj = JSON.parse(dulieu);
							if(dulieu['status'] == 200)
							{
								if (dulieu['data']== false){
									$('.notifycomment').fadeOut(500);
									console.log(123);
								}
								else if(dulieu['data']== true){
										//
										var nk = parseInt(dulieu['countnk']);
										var tmh = parseInt(dulieu['counttmh']);
										var bxh = parseInt(dulieu['countbxh']);
										if (nk>0) $('.notifycomment p.namkhoa').html(dulieu['namkhoa']);		
										if (tmh>0) $('.notifycomment p.taimuihong').html(dulieu['taimuihong']);
										if (bxh>0) $('.notifycomment p.benhxahoi').html(dulieu['benhxahoi']);
										$('.notifycomment').fadeIn(500);
								}
							}
						}
				});
			}
				//loaddulieu();
				ajax_call;
				var interval = 1000 * 60 * 0.1; // where X is your every X minutes
				console.log(interval);
				setInterval(ajax_call, interval);
});
</script>


</html>
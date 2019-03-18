open( fileHandle, ">perltest.html" ) || die "Failed opening.\n";
print fileHandle <<END_HTML;  # 다를 바가 없지요 ?
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>tab example</title>
	<link rel="stylesheet" href="mystyle.css">
	<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
</head>
<body>
	<div id="container">
		<h2>How to develop a tab menu with jQuery</h2>
		<p>Test script</p>
		<ul class="tab">
			<li class="current" data-tab="tab1"><a href="#">About</a></li>
			<li data-tab="tab2"><a href="#">Portfolio</a></li>
			<li data-tab="tab3"><a href="#">Contact</a></li>
			<li data-tab="tab4"><a href="#">Travel</a></li>
		</ul>

		<div id="tab1" class="tabcontent current">
			<h3>About</h3>
			<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>
		</div>

		<div id="tab2" class="tabcontent">
			<h3>Portfolio</h3>
			<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.</p>
		</div>

		<div id="tab3" class="tabcontent">
			<h3>Contact</h3>
			<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>
		</div>

		<div id="tab4" class="tabcontent">
			<h3>Travel</h3>
			<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>
			<p class="main3">Do you expect me to talk</p>
			<p class="main3">I will never betray planet earth to you.</p>
		</div>
	</div>

	<script type="text/javascript" src="script2.js"></script>
</body>
</html>
END_HTML

close( fileHandle );

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
	<meta charset="UTF-8">
	<title>로그인 창</title>
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
	<style>
		*{padding: 0; margin: 0;}
		html{
			font-family: 'Noto Sans KR', sans-serif;
		}		
		ul{
			padding: 0;
		}
		li{
			list-style: none;
		}
		a{
			text-decoration: none; color: #000; font-weight: bold;
		}
		footer{
			margin-left: 200px;
			margin-top: 200px;
			margin-right: 200px;

		}
		li.menu{
			float: left; margin-right: 20px;
		}
		.login-form{
			width: 500px; margin: 0 auto; text-align: center;
		}
		.fieldset-noline{
			border: 0;
		}
		input.input{
			width: 100%; height: 44px; border: 0; border-bottom: 1px solid #999;
			margin-bottom: 20px;
		}
		.chbox{
			text-align: right;
			margin-top: 20px;
			margin-bottom: 20px;
		}
		.mt-200{
			margin-top: 200px;
		}
		.loginbutton{
						width: 100%; height: 44px; border: 0; color: white; background-color:black; margin-bottom: 10px;
		}
		.joinbutton{
						width: 100%; height: 44px; border: 0; color: white; background-color:#D3C64A;
		}
		.header{
			background-image: url("img/barcablack.png");
			background-size: cover; 
			height: 300px; 
			background-position: center;
			padding-left: 20%;
			display: flex;
			align-items: center;
		}
		.logo{
			font-size: 50px; color: #FFE400;
			text-shadow: 3px 3px black;
		}
		.logo2{
			font-size: 18px; color: #4ABFD3;
			text-shadow: 2px 2px black;
		}
		.head-main{
			padding: 10px 0px;
			display: flex;
			justify-content: space-between;
		}
		.head-login{
			height: 32px; 
			padding: 0 10px; 
			width: 80px; 
			border: 1px solid #000;
			background-color: #B70000;
			border-radius: 6px;
			cursor: pointer;
		}
		.head-join{
			height: 32px; 
			padding: 0 10px; 
			width: 80px; 
			border: 1px solid #000;
			border-radius: 6px;
			background-color: #0000C9;
			color: white;
			cursor: pointer;

		}
		.navi{
			padding: 10px 60px;
		}
		.search-box{
			font-style: oblique;
			font-color: gray;
			height: 20px;
		}
		.search-btn{
			border-color: white;
	        cursor: pointer;
	        color: white;
	        background-color: #000;
	        font-size: 15px;
		}

	</style>

</head>
<body>
	<header class="head-main">
		<a href="main.jsp"><img src="img/mainblack.jpg"></a>
		<div>
			<a href="login.jsp"><button class="head-login">로그인</button></a>
			<a href="join.jsp"><button class="head-join">회원가입</button></a>
		</div>
	</header>
	<nav class="navi">	
		<ul>
				<li class="menu"><a href="">트레이닝 킷</a></li>
			<li class="menu"><a href="">상의 유니폼 </a></li>
			<li class="menu"><a href="">하의 유니폼 </a></li>
			<li class="menu"><a href="">트레이닝</a></li>
			<li class="menu"><a href="">스타킹 </a></li>
			<li class="menu"><a href="">공 </a></li>
			<li class="menu"><a href="">가방</a></li>
			<li class="menu"><a href="">축구화</a></li>
			<li class="menu"><a href="">굿즈</a></li>
				<input class="search-box" type="text" name="" placeholder="검색어를 입력하세요">
				<button class="search-btn">Enter</button>
			</li>
			<br>

		</ul>
	</nav>	
		<section>
		<article class="header">
			<div>
				<a href="##">
					<span class="logo">로그인 </span>
				</a>
				<p class="logo2">Log in</p>
			</div>
		</article>
	</section>
	<section class="mt-200">
		<div class="login-form">
			<h1>로그인</h1>
		<form method="post" >
			<fieldset class="fieldset-noline">
				<ul class="inform">
					<li>
						<input class="input" type="text" name = "Id" id="id" placeholder="아이디">
					</li>
					<li>
						<input class="input" type="password" name = "pwd" id="pwd" placeholder="비밀번호">
					</li>
				</ul>
				<ul>
					<li class="chbox" >
						<input type="checkbox" id="save" name="save">
						<label for="save">아이디 저장</label>
					</li>
				</ul>
				<div>
					<button type="submit" class="loginbutton">
						<span>로그인</span>
					</button>
					<br>
					<a href="join.html">
						<button type="button" class="joinbutton">
							<span>회원 가입</span>
						</button>
					</a>
				</div>
			</fieldset>
		</form>
	</div>
</section>
	<footer>
		<hr>
	</footer>
</body>
</html>
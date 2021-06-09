<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
	<meta charset="UTF-8">
	<title>회원가입 창</title>
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
		ul.buttonbox{
			margin-left: 100px; float: left;
		}
		p.jointxt{
			 font-size: 15px;
		}
		div.btn{
			display: flex; width: 100%; 
		}
		.join-form{
			width: 500px; margin: 0 auto; text-align: center;
		}
		.mt-200{
			margin-top: 200px;
		}
		input.input{
			width: 100%; height: 44px; border: 0; border-bottom: 1px solid #999;
			margin-bottom: 12px;
		}
		.fieldset1{
			border:0;
		}
		.button-left{
			width: 230px; height: 44px; border: 0; color: white; background-color:#D3C64A;
		}
		.button-right{
			width: 230px; height: 44px; border: 0; color: white; background-color:#C4C4C4;
		}
		.header{
			background-image: url("img/heart.png");
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
			font-family: 'Barlow Condensed', sans-serif;
		}
		.logo2{
			font-size: 18px; color: #4ABFD3;
			text-shadow: 2px 2px black;
		}
		.head{
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
			background-color:#0000C9;
			color: white;
			cursor: pointer;

		}
		.navi{
			padding: 10px 60px;
		}
		.search-box{
			font-weight: bold;
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
	<header class="head">
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
					<span class="logo">회원가입 </span>
				</a>
				<p class="logo2">Join our site</p>
			</div>
		</article>
	</section>
	<section class="mt-200">
		<div class="join-form">
			<h1>회원가입</h1>
			<form>
				<fieldset class="fieldset1">
					<ul>
						<li class="join">
							<input class="input" type="text" name="joinid" placeholder="  아이디를 입력하세요">
						</li>
						<li class="join">
							<input class="input" type="password" name="joinpwd" placeholder="  비밀번호를 입력하세요">
						</li>
						<li class="join">
							 <input class="input" type="password" name="joinpwd" placeholder="  비밀번호를 재입력하세요">
						</li>
						<li class="join">
							<input class="input" type="text" name="joinname" placeholder="  이름을 입력하세요">
						</li>
						<li class="join">
							<input class="input" type="text" name="mail" placeholder="  이메일을 입력하세요">
						</li>
						<li class="join">
							<input class="input" type="text" name="phone" placeholder="  휴대폰 번호를 입력하세요">
						</li>
						<li class="join">
							<input class="input" type="text" name="birth" placeholder="  생년월일을 입력하세요(6자리)">
						</li>


					</ul>
				</fieldset>
				<fieldset class="fieldset1">
					<div class="btn">
							<button type="submit" class="button-left">
								<span>가입</span>
							</button>
						<li>
							<a href="login.html">
								<button type="button" class="button-right">
									<span>취소</span>
								</button>
							</a>
						</li>
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
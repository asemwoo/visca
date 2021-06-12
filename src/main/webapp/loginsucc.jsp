<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8");%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <title>index</title>
  <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
  <style>
    @import url('https://fonts.googleapis.com/css2?family=Barlow+Condensed:ital,wght@1,600&display=swap');
    *{padding: 0; margin: 0; }
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
    li.as-menu{
      text-decoration: none; color: #000; font-weight: bold;
      padding: 10px;
      width: 200px;
      border: 1px solid #E0E0E0;
    }
    li.as-menu:hover{
      background-color: #E0E0E0
    }
    .header{
      background-image: url("img/barcared.png");
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
    .head-main {
      padding: 10px 0px;
      text-align: center;
      display: flex;
      background-size: cover;
      justify-content: space-between;
      margin-right: 0px;
    }
    .head-login{
      height: 32px;
      padding: 0 10px;
      margin-right: 0px;
      border: 1px solid #000;
      background-color: #B70000;
      border-radius: 6px;
      cursor: pointer;
      color: black;
    }
    .head-join{
      height: 32px;
      padding: 0 10px;
      border: 1px solid #000;
      border-radius: 6px;
      background-color: #0000C9;
      color: white;
      cursor: pointer;

    }
    .navi{
      padding: 10px 60px;
    }
    .section1{
      display: flex;
      width: 1160px;
      padding-top: 20px;
      margin: 0 auto;
      /*가운데 자동분배*/
    }
    .item{
      width: 100%;
      padding: 0 20px;
    }
    .item1{
      width: 100%;
      padding: 30px 0;
      display: flex;
    }
    .item2{
      width: 270px;
      height: 300px;
      margin-right: 20px;
      border: 1px solid #E0E0E0;
    }
    .item2 .imgbox1{
      width: 100%;
      height: 200px;
      background-image: url("img/barca0506.jpeg");
      background-size: cover;
      background-position: center;
    }
    .item2 .imgbox2{
      width: 100%;
      height: 200px;
      background-image: url("img/barca_trainning.jpeg");
      background-size: cover;
      background-position: center;
    }
    .item2 .imgbox3{
      width: 100%;
      height: 200px;
      background-image: url("img/catalan.png");
      background-size: cover;
      background-position: center;
    }
    .item2 .imgbox4{
      width: 100%;
      height: 200px;
      background-image: url("img/phonecase.png");
      background-size: cover;
      background-position: center;
    }
    .item2 .imgbox5{
      width: 100%;
      height: 200px;
      background-image: url("img/train.png");
      background-size: cover;
      background-position: center;
    }
    .item2 .imgbox6{
      width: 100%;
      height: 200px;
      background-image: url("img/ball.png");
      background-size: cover;
      background-position: center;
    }

    .item2 .contents{
      padding: 10px;

    }
    .item-sale{
      color: red;
    }
    .search-box{
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
  <a href="main.jsp"><img src="img/barca_main.png">
    <div>
      <a href="logout.jsp"> <button class="head-login">로그아웃</button>
        </a>
    </div>
  </a>
</header>
<nav class="navi">
  <ul>
    <li class="menu"><a href="board.jsp">게시판</a></li>
    <li class="menu"><a href="http://www.culecorea.com/">꾸레코리아</a></li>
    <li class="menu"><a href="https://www.fcbarcelona.com/en/">바르셀로나 공식 홈 </a></li>
    <li class="menu"><a href="https://namu.wiki/w/FC%20%EB%B0%94%EB%A5%B4%EC%85%80%EB%A1%9C%EB%82%98">나무위키</a></li>
    <li class="menu"><a href="https://www.youtube.com/user/fcbarcelona">YOUTUBE </a></li>
    <input class="search-box" type="text" name="" placeholder="검색어를 입력하세요">
    <button class="search-btn">검색</button>
    </li>
    <br>

  </ul>
</nav>
<section>
  <article class="header">
    <div>
      <a href="##">
        <span class="logo">Welcome to BARCA STORE</span>
      </a>
      <p class="logo2">Bienvenidos a nuestro sitio web.</p>
    </div>
  </article>
</section>
<section class="section1">
  <aside>
    <ul>
      <a href=""><li class="as-menu">20-21시즌 유니폼</li></a>
      <a href=""><li class="as-menu">19-20시즌 유니폼</li></a>
      <a href=""><li class="as-menu">2010년대 유니폼 </li></a>
      <a href=""><li class="as-menu">2000년대 유니폼 </li></a>
      <a href=""><li class="as-menu">굿즈 </li></a>
      <a href=""><li class="as-menu">축구화 </li></a>
      <a href=""><li class="as-menu">EVENT</li></a>
    </ul>
  </aside>
  <div class="item">
    <div class="item1">
      <a href="">
        <div class="item2">
          <div class="imgbox1"></div>
          <div class="contents">05-06시즌 홈 킷
            <p class="item-sale">Now on SALE</p>
            <p> 50,600</p>
          </div>
        </div>
      </a>
      <a href="">
        <div class="item2">
          <div class="imgbox2"></div>
          <div class="contents">20-21시즌 트레이닝 킷
            <p class="item-sale">Now on SALE</p>
            <p> 51,300</p>
          </div>
        </div>
      </a>
      <a href="">
        <div class="item2">
          <div class="imgbox3"></div>
          <div class="contents">바르셀로나 머플러
            <p class="item-sale">Now on SALE</p>
            <p> 27,600</p>
          </div>
        </div>
      </a>
    </div>
    <div class="item1">
      <a href="">
        <div class="item2">
          <div class="imgbox4"></div>
          <div class="contents">바르셀로나 로고 폰 케이스
            <p class="item-sale">Now on SALE</p>
            <p> 15,000</p>
          </div>
        </div>
      </a>
      <a href="">
        <div class="item2">
          <div class="imgbox5"></div>
          <div class="contents">19-20시즌 트레이닝 킷
            <p class="item-sale">Now on SALE</p>
            <p> 152,000</p>
          </div>
        </div>
        <a href="">
          <div class="item2">
            <div class="imgbox6"></div>
            <div class="contents">바르셀로나 공
              <p class="item-sale"></p>
              <p>50,000 </p>
            </div>
          </div>
        </a>
      </a>
    </div>
  </div>
</section>
<hr>
<footer>
  <hr>
</footer>
</body>
</html>
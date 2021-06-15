# visca

쇼핑몰 + 게시판 기능을 구현하려 하였습니다.
FRONTCONTROLLER에서 각각의 CONTROLLER(EX JoinController, LoginController 등등) 들을 이용하여 .do를 반환
CONTROLLER 패키지 안에 FRONTCONTROLLER와 다른 CONTROLLER들, HTTPUTTIL이 있습니다.
DAO 패키지 안에 DAO.JAVA는 각각의 메소드를 연결 해줍니다.
SERVICE 패키지 안에 SERVICE.JAVA는 외부 접근을 하여 내부객체가 값을 반환하게 합니다.
VO 패키지 안에 ACCOUNT.JAVA는 회원정보 입력할때의 값을 지정합니다.
이외에 JSP파일들로 페이지들을 구현해 놓았습니다

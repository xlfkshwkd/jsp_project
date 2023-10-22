# JSP Project 


# TDD 를 통한 설계
설계 + 테스트 
- servlet-api
- servlet.jsp-api
- jstl-api
- jstl-impl
- lombok
- jstl api
- jstl implementation

- 톰켓10 서버 설정 

- 의존성 추가 
    - junit5
    - mockito
    - maven-sure-fire 
    - pom에 추가 함

- joinservie 회원 가입 설계
  - models/member/JoinService.java
    - 필수 항목 검증(아이디, 비밀번호, 비밀번호 확인,전화번호, 회원명, 이메일)
    - 아이디 중복 여부 체크 - 중복된 경우 가입 불가
    - 아이디 자리수(6자리 이상), 비밀번호 자리수(8자리 이상) 체크
    - 비밀번호, 비밀번호 확인 입력 데이터 일치여부 체크
    - 회원 정보를 저장

      - 로그인 기능 설계(LoginService)
       - models/member/LoginService.java
      - 필수 항목 검증(아이디, 비밀번호)
      - 아이디에 해당하는 회원 정보가 있는지 확인
      - 로그인 처리(세션에 회원 정보를 저장)











package tests;


import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import models.member.JoinService;
import models.member.LoginService;
import models.member.Member;
import models.member.ServiceManager;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;

import static org.junit.jupiter.api.Assertions.assertDoesNotThrow;

@DisplayName("로그인 기능 단위 테스트")
@ExtendWith(MockitoExtension.class)

public class LoginServiceTest {

    private LoginService loginService;
    @Mock
    private HttpServletRequest request;

    private Member member;

    @BeforeEach
    void init(){
        loginService =new LoginService();
        member =getMember();

        JoinService joinService = ServiceManager.getInstance().joinService();;
        joinService.join(member);

    }
    @Test
    @DisplayName("로그인 성공시 예외발생 안함")
    void loginSuccess(){
        assertDoesNotThrow(()->{
            loginService.login(request);
        });
    }

    //아아ㅏㅏ아ㅏㅏㅏㅏㅏ

    private Member getMember() {
        String userPw = "12345678";
        return Member.builder()
                .userId("user" + System.currentTimeMillis())
                .userPw(userPw)
                .confirmUserPw(userPw)
                .userNm("사용자")
                .email("user@test.org")
                .agree(true)
                .build();
    }

}

package tests;
import commons.BadRequestException;
import models.member.*;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;

@DisplayName("회원가입 기능 단위테스트")
public class JoinServiceTest {
    private JoinService joinService;


    @BeforeEach
    void init() {
        //  joinService = new JoinService();
        joinService = new JoinService(new JoinValidator(), new MemberDao());
    }


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

    @Test
    @DisplayName("회원가입 성공시 예외발생하지 않음")
    void joinSuccess() {
        assertDoesNotThrow(() -> {
            joinService.join(getMember());
        });
    }

    @Test
    @DisplayName("필수 항목 검증(아이디, 비밀번호, 비밀번호 확인, 회원명, 이메일, 회원가입약관 동의), 검증 실패시 BadRequestException 발생")
    void requiredFieldCheck() {
     assertAll(
             ()->{
                 //아이디 검증 
                 Member member =getMember();
                 member.setUserId(null);
                 requiredFieldEachCheck(member, "아이디");

                 member.setUserId(" ");
                 requiredFieldEachCheck(member, "아이디");

             },      ()->{
                 //비번 검증 
                 Member member =getMember();
                 member.setUserPw(null);
                 requiredFieldEachCheck(member, "비밀번호");

                 member.setUserPw(" ");
                 requiredFieldEachCheck(member, "비밀번호");

             },      ()->{
                 //비번다시 검증 
                 Member member =getMember();
                 member.setConfirmUserPw(null);
                 requiredFieldEachCheck(member, "비밀번호 확인");

                 member.setConfirmUserPw(" ");
                 requiredFieldEachCheck(member, "비밀번호 확인");

             },      ()->{
                 //회원명 검증 
                 Member member =getMember();
                 member.setUserNm(null);
                 requiredFieldEachCheck(member, "회원명");

                 member.setUserNm(" ");
                 requiredFieldEachCheck(member, "회원명");

             },      ()->{
                 //이메일 검증 
                 Member member =getMember();
                 member.setEmail(null);
                 requiredFieldEachCheck(member, "이메일");

                 member.setEmail(" ");
                 requiredFieldEachCheck(member, "이메일");

             },   ()->{
                 //약관동의 검증
                 Member member =getMember();
                 member.setAgree(false);
                 requiredFieldEachCheck(member, "약관");

             }
             
             

     );
    }

    private void requiredFieldEachCheck(Member member, String word) {
        BadRequestException thrown = assertThrows(BadRequestException.class, () -> {
            joinService.join(member);
        });
        assertTrue(thrown.getMessage().contains(word));

    }
}
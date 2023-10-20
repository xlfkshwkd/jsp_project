package models.member;

import commons.BadRequestException;
import commons.Validator;

public class JoinValidator implements Validator<Member> {

    @Override
    public void check(Member member) {
        String userId = member.getUserId();
        if (userId == null || userId.isBlank()) {
            throw new BadRequestException("아이디를 입력하세요.");
        }
    }

    @Override
    public void check2(Member member) {
        String userPw = member.getUserPw();
        if (userPw == null || userPw.isBlank()) {
            throw new BadRequestException("비밀번호 입력하세요.");
        }
    }



}
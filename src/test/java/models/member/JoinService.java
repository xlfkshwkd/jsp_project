package models.member;

import commons.BadRequestException;
import commons.Validator;

public class JoinService {
    private Validator validator;
    private MemberDao memberDao;//역할의 유연성  나중에 대체하려고

    public JoinService(Validator validator, MemberDao memberDao) {
        this.validator = validator;
        this.memberDao = memberDao;
    }

    public void join(Member member) {
        validator.check(member);

        String userId = member.getUserId();
        if (userId == null || userId.isBlank()) {
            throw new BadRequestException("아이디를 입력하세요.");
        }
    }








}
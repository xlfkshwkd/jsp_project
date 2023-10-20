package models.member;

import commons.BadRequestException;
import commons.RequiredValidator;
import commons.Validator;

public class JoinValidator implements Validator<Member> , RequiredValidator {

    @Override
    public void check(Member member) {
        // 필수 항목 검증 
        requiredCheck(member.getUserId(),new BadRequestException("아이디를 입력하시오"));
        requiredCheck(member.getUserPw(),new BadRequestException("비밀번호 입력하시오"));
        requiredCheck(member.getConfirmUserPw(),new BadRequestException("비밀번호 확인하시오"));
        requiredCheck(member.getUserNm(),new BadRequestException("회원명을 입력하시오"));
        requiredCheck(member.getEmail(),new BadRequestException("이메일을 입력하시오"));


        requiredTrue(member.isAgree(),new BadRequestException("회원가입; 약관에 동의 하시오 "));
        //필수 항목 검증

    }




}
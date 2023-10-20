package models.member;

public class ServiceManger {

    private static ServiceManger Instance;

    private ServiceManger(){}

    private static ServiceManger getInstance(){
        if( instance == null){
            instance = new ServiceManger();
        }
        return instance;
    }

    public MemberDao memberDao(){
        return new MemberDao();
    }
    public JoinValidator JoinValidator(){
        return new JoinValidator();
    }

    public JoinService joinService(){
        return new JoinService(JoinValidator(),memberDao());
    }
}

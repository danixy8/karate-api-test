package user;

import com.intuit.karate.junit5.Karate;

public class RunnerTest {

    @Karate.Test
    Karate testUser() {
        return Karate.run("classpath:user").tags("@feature-get-user,@feature-list-users, @feature-create-user");
    }

}
package EjercicioAPI.feature;
import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate;

public class Runners {

    @Karate.Test
    Karate testCreateUser() {
        return Karate.run("createUser").relativeTo(getClass());
    }


    }


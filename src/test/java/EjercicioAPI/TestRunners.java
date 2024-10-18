package EjercicioAPI;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.*;

public class TestRunners {

    @Test
    void testParallel() {
        Results results = Runner.path("classpath:EjercicioAPI")
                .parallel(2); // Ejecuta las pruebas en paralelo con 2 hilos
        assertEquals(0, results.getFailCount(), results.getErrorMessages()); // Verifica que no haya fallas
    }
}

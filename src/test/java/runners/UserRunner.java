package runners;
import com.intuit.karate.junit5.Karate;

public class UserRunner {
    @Karate.Test
    Karate testSelectedFeatures() {
        return Karate.run(
                "listarUsuarios",
                "registrarUsuario",
                "buscarUsuarioPorId",
                "ActualizarUsuario",
                "eliminarUsuario"
        ).relativeTo(getClass());
    }

}

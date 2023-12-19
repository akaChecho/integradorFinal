package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import modelo.Mascota;
import util.ConexionDB;

public class MascotasDAO {
    public Mascota obtenerPorId(int id) {
        String sql = "SELECT * FROM mascotas WHERE idMascota = ?";
        try (Connection conn = ConexionDB.conectar();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {

            pstmt.setInt(1, id);
            ResultSet rs = pstmt.executeQuery();

            if (rs.next()) {
                Mascota mascota = new Mascota();
                mascota.setIdMascota(rs.getInt("idMascota"));
                mascota.setNombre(rs.getString("nombre"));
                mascota.setRaza(rs.getString("raza"));
                mascota.setSexo(rs.getString("sexo"));
                mascota.setColor(rs.getString("color"));
                mascota.setFechaPublicacion(rs.getDate("fechaPublicacion"));
                return mascota;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        
        return null;
    }
       public List<Mascota> obtenerTodos() {
        List<Mascota> mascotas = new ArrayList<>();
        String sql = "SELECT * FROM mascotas";
        try (Connection conn = ConexionDB.conectar();
             PreparedStatement pstmt = conn.prepareStatement(sql);
             ResultSet rs = pstmt.executeQuery()) {

            while (rs.next()) {
                Mascota mascota = new Mascota();
                mascota.setIdMascota(rs.getInt("idMascota"));
                mascota.setNombre(rs.getString("nombre"));
                mascota.setRaza(rs.getString("raza"));
                mascota.setSexo(rs.getString("sexo"));
                mascota.setColor(rs.getString("color"));
                mascota.setFechaPublicacion(rs.getDate("fechaPublicacion"));
                mascotas.add(mascota);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return mascotas;
    }
   public void agregarMascota(Mascota mascota) {
        String sql = "INSERT INTO mascotas (nombre, raza, sexo, color, fechaPublicacion) VALUES (?, ?, ?, ?,?)";
        //bloque try-with-resources
        //asegura que los recursos abiertos en su declaración (dentro de los paréntesis) se cierren automáticamente al final del bloque try 
        try (Connection conn = ConexionDB.conectar();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setString(1, mascota.getNombre());
            pstmt.setString(2, mascota.getRaza());
            pstmt.setString(3, mascota.getSexo());
            pstmt.setString(4, mascota.getColor());
            pstmt.setDate(5, mascota.getFechaPublicacion());
            pstmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

   

    public void actualizarMascota(Mascota mascota) {
        String sql = "UPDATE mascotas SET nombre = ?, raza = ?, sexo = ?, color  = ? WHERE idMascota = ?";
        try (Connection conn = ConexionDB.conectar();
            PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setString(1, mascota.getNombre());
            pstmt.setString(2, mascota.getRaza());
            pstmt.setString(3, mascota.getSexo());
            pstmt.setString(4, mascota.getColor());
            pstmt.setInt(5, mascota.getIdMascota());  
            //pstmt.setDate(5, mascota.getFechaPublicacion());
            pstmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
   
    public void eliminarMascota(int id) {
        String sql = "DELETE FROM mascotas WHERE idMascota = ?";
        try (Connection conn = ConexionDB.conectar();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {

            pstmt.setInt(1, id);
            pstmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }    
     
}

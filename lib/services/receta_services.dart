import 'dart:async'; // import de futuro
import '../models/receta.dart';

class RecetaService {
  static Future<List<Receta>> fetchRecetas() async { // fetchReceta funcion se comporta como si llamara a una API 
    await Future.delayed(Duration(seconds: 2)); // espera 2 segundos

    final data = [ // simulacion de un JSON que vendria de una API
      {
        "id": "1",
        "medicacion": "Paracetamol 500mg",
        "fecha_emision": "2023-06-01",
        "doctor": "Dra. María Pérez",
        "notas": "Tomar 1 cada 8 horas"
      },
      {
        "id": "2",
        "medicacion": "Ibuprofeno 400mg",
        "fecha_emision": "2023-06-10",
        "doctor": "Dr. Juan López",
        "notas": "Después de las comidas"
      },
      {
        "id": "3",
        "medicacion": "lamotrigina 100mg",
        "fecha_emision": "2023-06-10",
        "doctor": "Dr. Gonzalo Bustamante",
        "notas": "Cada mañana"
      },
      {
        "id": "4",
        "medicacion": "Pregabalina 75mg",
        "fecha_emision": "2023-06-10",
        "doctor": "Dr. Simi Similar",
        "notas": "Antes de dormir"
      },
    ];
  

    return data.map((json) => Receta.fromJson(json)).toList(); //convierte la lista de Map en objetos ECETA USANDO EL METODO fromJson
  }
}
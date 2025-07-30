import 'package:flutter_test/flutter_test.dart';
import 'package:historial_recetas_nuevo/models/receta.dart';
import 'package:historial_recetas_nuevo/services/receta_services.dart';

void main() {
  test('fetchRecetas devuelve una lista de recetas', () async {
    final recetas = await RecetaService.fetchRecetas();

    // Verifica que se obtiene una lista
    print('Recetas obtenidas:');
    for (var receta in recetas) {
      print(
        'Medicacion: ${receta.medicacion}, Doctor: ${receta.doctor}, Fecha: ${receta.fecha_emision}, Notas: ${receta.notas}'
      );
    }
    expect(recetas, isA<List<Receta>>());

    // Verifica que lista no esté vacía
    expect(recetas.isNotEmpty, true);
  
  });
}

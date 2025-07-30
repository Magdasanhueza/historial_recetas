class Receta { // cada Receta representa una receta medica
  final String id;
  final String medicacion;
  final String fecha_emision;
  final String doctor;
  final String notas; //final se declara asi porque no va a cambiar

  Receta({ // este constructor permite crear objetos Receta
    required this.id,
    required this.medicacion,
    required this.fecha_emision,
    required this.doctor, // require indica que estos campos son obligatorios al consstruir uan receta
    required this.notas,
  });

  factory Receta.fromJson(Map<String, dynamic> json) { // fromJson convierte un mapa (JSON) en un objeto Receta
    return Receta(
      id: json['id'],
      medicacion: json['medicacion'],
      fecha_emision: json['fecha_emision'],
      doctor: json['doctor'],
      notas: json['notas'],
    );
  }
}

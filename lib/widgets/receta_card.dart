import 'package:flutter/material.dart';
import '../models/receta.dart'; 

class RecetaCard extends StatelessWidget { // widget reutilizable que representa 1 receta 
  final Receta receta;

  const RecetaCard({required this.receta}); //recibe como parametro una Receta

  @override
  Widget build(BuildContext context) {
    return Card( //muestra los datos de una receta en una tarjeta visual 8card)
      margin: EdgeInsets.all(10),
      child: ListTile( //para estructura limpia
        title: Text(receta.medicacion),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Fecha de emisión: ${receta.fecha_emision}'),
            Text('Médico: ${receta.doctor}'),
            Text('Notas: ${receta.notas}'),
          ],
        ),
      ),
    );
  }
}

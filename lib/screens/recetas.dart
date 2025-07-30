import 'package:flutter/material.dart';
import '../models/receta.dart';
import '../services/receta_services.dart';
import '../widgets/receta_card.dart';

class RecetasScreen extends StatefulWidget { // tambien es StatefulWidget porque debe refrescarse
  @override
  State<RecetasScreen> createState() => _RecetasScreenState();
}

class _RecetasScreenState extends State<RecetasScreen> {
  late Future<List<Receta>> _futureRecetas; //variable que va a guardar el futuro de recetas (simulando una llamada ala API)

  @override // al iniciar la pantalla se llama a la funcion que carga las recetas
  void initState() {
    super.initState();
    _futureRecetas = RecetaService.fetchRecetas();
  }

  Future<void> _refresh() async {
    setState(() {
      _futureRecetas = RecetaService.fetchRecetas();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Historial de Recetas')),
      body: RefreshIndicator(
        onRefresh: _refresh,
        child: FutureBuilder<List<Receta>>( //futurebuilder permite esperar los datos
          future: _futureRecetas, 
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) { //muestra un loading
              return Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) { //muestra error
              WidgetsBinding.instance.addPostFrameCallback((_) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Error al cargar las recetas')),
                );
              });
              return Center(child: Text('Error al cargar')); 
            } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
              return Center(child: Text('No hay recetas disponibles'));
            } else {
              return ListView.builder( // cuando llegan los datos, se muestra la lista de recetas en tarjetas
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) =>
                    RecetaCard(receta: snapshot.data![index]),
              );
            }
          },
        ),
      ),
    );
  }
}

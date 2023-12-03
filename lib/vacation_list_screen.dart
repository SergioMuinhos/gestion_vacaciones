import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'vacation_provider.dart';

class VacationListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final vacationProvider = Provider.of<VacationProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de vacaciones'),
      ),
      body: StreamBuilder(
        stream: vacationProvider.getVacations(
            'userId'), // Reemplaza 'userId' con el ID real del usuario
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return CircularProgressIndicator();
          }

          // Mostrar la lista de vacaciones aquí
          // Puedes personalizar esto según tus necesidades
          final vacations = snapshot.data!.docs;

          return ListView.builder(
            itemCount: vacations.length,
            itemBuilder: (context, index) {
              // Construir y mostrar elementos de la lista
              return ListTile(
                title:
                    Text('Fecha de inicio: ${vacations[index]['startDate']}'),
                subtitle: Text('Fecha de fin: ${vacations[index]['endDate']}'),
                // Puedes agregar más detalles según tus necesidades
              );
            },
          );
        },
      ),
    );
  }
}

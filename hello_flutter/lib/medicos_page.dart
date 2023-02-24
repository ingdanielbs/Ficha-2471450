import 'package:flutter/material.dart';
import 'package:hello_flutter/medicos_list.dart';

import 'appbar_nav.dart';

class MedicosPage extends StatelessWidget {
  const MedicosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(70),
          child: AppBarNav(title: 'Medical Help')),
      body: ListView.separated(
        itemCount: listaMedicos.length,
        separatorBuilder: (BuildContext context, int index) => const Divider(),
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundImage: NetworkImage(listaMedicos[index]['imagen']),
                ), 
                Text("${listaMedicos[index]['nombre']} ${listaMedicos[index]['apellido']}"),
                IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_forward))
              ],
            ),
          );
        },
      ),      
    );
  }
}


/* ElevatedButton(
        child: Text('Regresar'),
        onPressed: () {
          Navigator.pop(context);
      },) */
      /* IconButton(icon: Icon(Icons.arrow_back), onPressed: (){
        Navigator.pop(context);
      },), */
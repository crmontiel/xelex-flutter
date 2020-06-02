import 'package:flutter/material.dart';
import 'package:xelex/providers/facts_provider.dart';


class HomePage extends StatelessWidget {

final factsProvider= new FactsProvider();
  @override
  Widget build(BuildContext context) {

     return Scaffold(
      appBar: AppBar(
        title: Text('Home')
      ),
      body: Container(),
      );
  }

Widget _listarFacts(){
  return FutureBuilder(
    future: factsProvider.listar(),
    builder: (BuildContext context, AsyncSnapshot<List> snapshot){
      if ( snapshot.hasData ) {

          final productos = snapshot.data;

          return ListView.builder(
            itemCount: productos.length,
            itemBuilder: (context, i) => _crearItem(context, productos[i] ),
          );

        } else {
          return Center( child: CircularProgressIndicator());
        }
    },
  );

}

Widget _crearItem(BuildContext context,  data ) {

    return Dismissible();    

  }



}


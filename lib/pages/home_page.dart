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
      body: _listarFacts(),
      );
  }

Widget _listarFacts() {

    return FutureBuilder(
      future: factsProvider.listar(),
      builder: (BuildContext context, snapshot)  {
        if ( snapshot.hasData ) {

          final elemento = snapshot.data;
      
          return ListView.builder(
            itemCount: elemento.length,
            itemBuilder: (context, i) => _crearItem(context, elemento[i] ),
          );

        } else {
          return Center( child: CircularProgressIndicator());
        }
      },
    );
  }

  Widget _crearItem(BuildContext context, elemento){


    return Dismissible(
      key: UniqueKey(),
      background: Container(
        color: Colors.red,
      ),
      onDismissed: ( direccion ){},
      child: Card(
        child: Column(
          children: <Widget>[
            ListTile(
              title: Text('${ elemento.text } - ${ elemento.upvotes }'),
              subtitle: Text( elemento.id ),
            ),

          ],
        ),
      )
    );



  }


}


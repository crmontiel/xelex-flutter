import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:xelex/models/item_model.dart';

class FactsProvider{

  final String _url='https://cat-fact.herokuapp.com/facts';

 Future<List> listar(  ) async {
    
 
    final resp = await http.get(_url);

    final List<String, dynamic> decodedData = json.decode(resp.body)['all'];

    final List<ItemModel> productos = new List();


    if ( decodedData == null ) {
    return [];
    }

    decodedData.forEach( (item){
      final prodTemp = ItemModel.fromJson(item);

    //  print(item['_id']);
     productos.add( prodTemp );

   
    });

    return productos;
  }
  
}
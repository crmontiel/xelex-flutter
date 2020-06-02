import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:xelex/models/item_model.dart';

class FactsProvider{

  final String _url='https://cat-fact.herokuapp.com/facts';

 Future<List> listar(  ) async {
    
 
    final resp = await http.get(_url);

    final Map<String, dynamic> decodedData = json.decode(resp.body);

    final List<ItemModel> productos = new List();


    if ( decodedData == null ) {
    return [];
    }

    decodedData.forEach( ( id, prod ){

   
    });

    return productos;
  }
  
}
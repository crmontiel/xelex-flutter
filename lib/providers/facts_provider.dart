import 'dart:convert';

import 'package:http/http.dart' as http;
class ProductosHttp{

  final String _url='https://cat-fact.herokuapp.com/facts';

 Future<bool> crearProducto(data)async {

  final resp=await http.get(_url);

   final decodeData=await json.decode(resp.body);
  
  print(decodeData);
  
  return true;


  }
  
}
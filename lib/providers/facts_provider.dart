import 'dart:convert';

import 'package:http/http.dart' as http;

class FactsProvider{

  final String _url='https://cat-fact.herokuapp.com/facts';

 Future<bool> listar(  ) async {
    
    
    final resp = await http.get( _url) ;

    final decodedData = json.decode(resp.body)['all'].map((data) => data.toList());

    print( decodedData );

    return true;

  }
  
}
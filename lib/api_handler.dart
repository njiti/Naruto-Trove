import 'dart:convert';
import 'dart:core';
import 'dart:io';
import 'model.dart';
import 'package:http/http.dart' as http;

class ApiHandler {
  final String baseUri = "https://dattebayo-api.onrender.com";
  final String access_token = "";
  final String characters = "/characters";
  final String clans = "/clans";
  final String villages = "/villages";
  final String kekei_genkai = "/kekkei-genkai";
  final String tailed_beasts = "/tailed-beasts";
  final String teams = "/teams";
  final String akatsuki = "/akatsuki";
  final String kara = "/kara";

  Future<List<Character>> getCharacterData() async{
    List<Character> data = [];

    final uri = Uri.parse(baseUri+characters);
    try{
      final response = await http.get(
          uri,
          headers: <String, String>{
            'Content-type' : 'application/json; charset=UTF-8',
            HttpHeaders.authorizationHeader: access_token,
          }
      );
      print('uri: $uri');
      print(response.statusCode);
      print(response.body);

      if(response.statusCode >= 200 && response.statusCode <= 299){
        final jsonResponse = json.decode(response.body);
        print('jsonResponse: $jsonResponse');
        final characterList = jsonResponse['characters'] as List;

        print('characterList: $characterList');
        print('just checking data');

        // Map json list to character list
        data = characterList.map((json) => Character.fromJson(json)).toList();

        print('data: $data');
      }
    }catch(e){
      print('error: $e');
      return data;
    }
    print('Here\'s the data: $data');
    return data;
  }

}
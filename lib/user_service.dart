import 'dart:convert';

import 'user.dart';
import 'package:http/http.dart' as http;

class UserService {
  UserRepository repository;

  UserService({required this.repository});

  Future<void> createUser(User user) async {
    return await repository.createUser(user);
  }
}

class UserRepository {
  Future<void> createUser(User user) async {
    var url = Uri.parse(
        "http://9708-2a01-cb09-b076-9d5e-214b-b578-c2c7-d268.ngrok.io/user");
    var body2 = {
        'nom': user.nom,
        'prenom': user.prenom,
        'polygramme': user.polygramme
      };
    await http.post(
      url,
      body: jsonEncode(body2),
      headers: {
        "Content-Type": "application/json"
      },
    );
  }
}

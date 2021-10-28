import 'user.dart';
import 'package:http/http.dart' as http;

class UserService {
  UserRepository repository;


  UserService({required this.repository});

  createUser(User user) {
    repository.createUser(user);
  }
}

class UserRepository {
  Future<void> createUser(User user) async {
    var url = Uri.parse("TODO");
    await http.post(url, body: {'nom': user.nom, 'prenom': user.prenom, 'polygramme': user.polygramme});
  }
}
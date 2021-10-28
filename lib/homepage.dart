import 'package:flutter/material.dart';
import 'package:octo_meet/user.dart';
import 'package:octo_meet/user_service.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  late TextEditingController polygrammeController;
  late TextEditingController nomController;
  late TextEditingController prenomController;
  GlobalKey<FormState> globalKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    polygrammeController = TextEditingController();
    nomController = TextEditingController();
    prenomController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Card(
            color: Colors.white54,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Form(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextFormField(
                      controller: nomController,
                      decoration: const InputDecoration(
                          border: UnderlineInputBorder(), labelText: 'Ton nom'),
                    ),
                    TextFormField(
                      controller: prenomController,
                      decoration: const InputDecoration(
                          border: UnderlineInputBorder(),
                          labelText: 'Ton prénom'),
                    ),
                    TextFormField(
                      controller: polygrammeController,
                      decoration: const InputDecoration(
                          border: UnderlineInputBorder(),
                          labelText: 'Ton polygramme *'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: ElevatedButton(
                          onPressed: () {
                            UserService(repository: UserRepository()).createUser(User(
                                nom: nomController.text,
                                prenom: prenomController.text,
                                polygramme: polygrammeController.text));
                          }, child: const Text("Valider")),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

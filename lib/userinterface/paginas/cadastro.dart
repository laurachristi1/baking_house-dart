import 'package:baking_house/controller/user_controller.dart';
import 'package:flutter/material.dart';

class TelaCadastro extends StatefulWidget {
  const TelaCadastro({Key? key}) : super(key: key);

  @override
  State<TelaCadastro> createState() => _TelaCadastroState();
}

class _TelaCadastroState extends State<TelaCadastro> {
  bool _isChecked = false;
  UserController userController = UserController();
  var serController = UserController();

  final nomeController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
         leading: IconButton(
          icon: Icon(Icons.arrow_back),
            onPressed: () {
            Navigator.of(context).pop();
            },
          ),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(32.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 32),
                  Image.asset('/logo.png', width: 225),
                  const SizedBox(height: 32),
                  TextFormField(
                    controller: nomeController,
                    decoration: const InputDecoration(
                      hintText: 'Usuário',
                      prefixIcon: Icon(Icons.person),
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.pinkAccent),
                    )
                    ),
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    controller: passwordController,
                    obscureText: true,
                    decoration: const InputDecoration(
                      hintText: 'Senha',
                      prefixIcon: Icon(Icons.lock),
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.pinkAccent),
                    )
                    ),
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                      hintText: 'Repita sua senha',
                      prefixIcon: Icon(Icons.lock),
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.pinkAccent),
                    )
                    ),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      Checkbox(
                        value: _isChecked,
                        onChanged: (bool? value) {
                          setState(() {
                            _isChecked = value!;
                          });
                        },
                        activeColor: Colors.pinkAccent,
                      ),
                      const Text('Aceito os termos e condições.'),
                    
                    ],
                  ),
                  const SizedBox(height: 32),
                  ElevatedButton(
                    onPressed: () {
                      serController.cadastro(context, nomeController.text,
                          passwordController.text);
                      Navigator.pop(context);
                    },
                    child: const Text('Finalize seu cadastro'),
                    style: ElevatedButton.styleFrom(
                     foregroundColor: Colors.white,
                     backgroundColor: const Color.fromARGB(255, 255, 124, 168), 
                      minimumSize: const Size(double.infinity, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

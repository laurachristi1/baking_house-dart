import 'package:baking_house/controller/user_controller.dart';
import 'package:baking_house/userinterface/paginas/cadastro.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  UserController userController = UserController();

  final nomeController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(32.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 25),
                Image.asset('/logo.png', width: 300),
                const SizedBox(height: 25),
                TextFormField(
                  controller: nomeController,
                  decoration: const InputDecoration(
                    hintText: 'Usuário',
                    prefixIcon: Icon(Icons.person),
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.pinkAccent),
                    ),
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
                const SizedBox(height: 32),
                ElevatedButton(
                  onPressed: () {
                    userController.login(
                      context,
                      nomeController.text,
                      passwordController.text,
                    );
                  },
                  child: const Text('Login'),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: const Color.fromARGB(255, 255, 124, 168), 
                    minimumSize: const Size(double.infinity, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const TelaCadastro()),
                    );
                  },                  child: const Text(
                    'Não tem conta? Cadastre-se',
                    style: TextStyle(decoration: TextDecoration.underline, color: Colors.pinkAccent,),
                  ),
                  
                ),
                const SizedBox(height: 32),
                const Text('Ou entre com'),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: Image.asset('/apple_logo.png', width: 38),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Image.asset('/gmail-icon.png', width: 30),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Image.asset('/outlook-icon.png', width: 30),
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

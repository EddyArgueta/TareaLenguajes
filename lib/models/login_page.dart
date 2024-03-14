import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Log-In'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
        child: Column(
          children: [
            const FlutterLogo(
              size: 250,
              ),
              const SizedBox(height: 10.0,),

            
            TextField(
              controller: emailController, 
              maxLength: 30,
              keyboardType: TextInputType.emailAddress,

              decoration: const InputDecoration(
                label: Text('Email'),
                prefixIcon: Icon(Icons.email),
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 20),
                CustomInput(
                  controller: passwordController,
                  obscureText: true,
                ),
                ],
              ),
             ),
        ),

      floatingActionButton: FloatingActionButton(
          onPressed: () {
            //acceder al valor del email
            print(emailController.text);

            if (formKey.currentState!.validate()) {
              print('formulario valido');
              //TODO: LOGICA PARA GUARDAR LOS DATOS
            }
          },
          child: const Icon(Icons.clear),
        ));
  }
}

class CustomInput extends StatefulWidget {
  CustomInput({
    super.key,
    required this.controller,
    this.obscureText = false,
  });

  final TextEditingController controller;
  bool obscureText;

  @override
  State<CustomInput> createState() => _CustomInputState();
}

class _CustomInputState extends State<CustomInput> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      keyboardType: TextInputType.text,
      obscureText: widget.obscureText,
      decoration: InputDecoration(
        label: const Text('Password'),
        prefixIcon: const Icon(Icons.lock),
        suffixIcon: IconButton(
            onPressed: () {
              // TODO: logica para mostrar u ocultar el password
            },
            icon: const Icon(Icons.remove_red_eye_rounded)),
        border: const OutlineInputBorder(),
      ),
    );
  }
}
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

            Form(
              key: formKey,
              child: Column(
                children: [
                  TextFormField(
                  controller: emailController, 
                  maxLength: 30,
                  validator: (value)
                  {
                    if (value!.isEmpty) {
                      return 'El Correo es Obligatorio';
                    }

                    if (!value.contains('@unah.hn')) 
                    {
                    return 'Por favor ingresa un correo electrónico válido de la UNAH';
                    }

                    if (value.length < 3)
                    {
                      return 'El Correo debe de tener mas de 3 Caracteres';
                    }
                    return null;

                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                  label: Text('Correo Institucional'),
                  prefixIcon: Icon(Icons.email),
                  border: OutlineInputBorder(),
                  ),
                  ),

            const SizedBox(height: 20),
                CustomInput(
                  controller: passwordController,
                ),
                ],
              ),
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
  });

  final TextEditingController controller;
  bool _obscureText = true;

  @override
  State<CustomInput> createState() => _CustomInputState();
}

class _CustomInputState extends State<CustomInput> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      validator: (value)
                  {
                    if (value!.isEmpty) {
                      return 'La Contraseña es Obligatoria';
                    }

                    if (value.length < 10)
                    {
                      return 'La Contraseña debe de tener 11 Caracteres';
                    }

                    if (value.length > 12 )
                    {
                      return 'La Contraseña debe de tener 11 Caracteres';
                    }

                    return null;
                  },
      keyboardType: TextInputType.text,
      obscureText: widget._obscureText,
      decoration: InputDecoration(
        label: const Text('Password'),
        prefixIcon: const Icon(Icons.lock),
        suffixIcon: IconButton(
            icon: Icon(
            widget._obscureText ? Icons.visibility_off : (Icons.visibility),
            color: widget._obscureText ? Colors.grey : Colors.blue,
          ),
          onPressed: () {
            setState(() {
              widget._obscureText = !widget._obscureText;
            });
          },
        ),
      ),
    );
  }
}
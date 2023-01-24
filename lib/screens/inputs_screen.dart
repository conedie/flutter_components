import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first_name': 'Diego',
      'last_name': 'Beltrán',
      'email': 'conedie@gmail.com',
      'pass': '1234',
      'role': '1234',
    };
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs y Forms'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
            key: myFormKey,
            child: Column(
              children: [
                CustomInputField(
                  helperText: 'Nombre Usuario',
                  labelText: 'Nombre usuario',
                  hintText: 'usuario',
                  icon: Icons.abc_sharp,
                  keyboardType: TextInputType.text,
                  formValues: formValues,
                  formProperty: 'first_name',
                ),
                const SizedBox(height: 30),
                CustomInputField(
                    helperText: 'Apellido Usuario',
                    labelText: 'Apellido usuario',
                    hintText: 'usuario',
                    icon: Icons.abc_sharp,
                    keyboardType: TextInputType.text,
                    formValues: formValues,
                    formProperty: 'last_name'),
                const SizedBox(height: 30),
                CustomInputField(
                    helperText: 'Email Usuario',
                    labelText: 'Email usuario',
                    hintText: 'usuario',
                    icon: Icons.abc_sharp,
                    keyboardType: TextInputType.emailAddress,
                    formValues: formValues,
                    formProperty: 'email'),
                const SizedBox(height: 30),
                CustomInputField(
                    helperText: 'Pass Usuario',
                    labelText: 'Pass usuario',
                    hintText: 'usuario',
                    icon: Icons.email,
                    keyboardType: TextInputType.emailAddress,
                    obscureText: true,
                    formValues: formValues,
                    formProperty: 'pass'),
                const SizedBox(height: 30),
                DropdownButtonFormField(
                  items: const [
                    DropdownMenuItem(value: 'admin', child: Text('admin')),
                    DropdownMenuItem(
                        value: 'superuser', child: Text('superuser')),
                    DropdownMenuItem(
                        value: 'developer', child: Text('developer')),
                    DropdownMenuItem(
                        value: 'jrdeveloper', child: Text('jrdeveloper')),
                  ],
                  onChanged: (value) {
                    formValues['role'] = value ?? 'Admin';
                  },
                ),
                ElevatedButton(
                  onPressed: () {
                    FocusScope.of(context).requestFocus(FocusNode());

                    if (!myFormKey.currentState!.validate()) {
                      print('formulario no valido');
                      return;
                    }

                    print(formValues);
                  },
                  child: const SizedBox(
                    child: Center(
                      child: Text('Guardar'),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
   
  const InputsScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();
    final Map<String,String> formValues = {
      'first_name' : 'Pablo',
      'last_name': 'Rodriguez',
      'email': 'xxxx"gmail.com',
      'password': 'xxxxxx',
      'role': 'ROLE_ADMIN'
    };
    return Scaffold(
      appBar: AppBar(
        title: Text('Inputs y forms')
      ),
      body: SingleChildScrollView(
         child: Padding(
          padding:  const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
          key: myFormKey,
          child: Form(
            child: Column(children: [
              CustomInputField(labelText: 'Nombre', helperText: 'Nombre del usuario', formProperty: 'first_name', formValues: formValues, ),
              SizedBox(height: 30),
          
              CustomInputField(labelText: 'Apellido', helperText: 'Apellido del usuario', formValues: formValues, formProperty: 'last_name', ),
              SizedBox(height: 30),
          
              CustomInputField(labelText: 'Email', helperText: 'Email del usuario', textInputType: TextInputType.emailAddress, formProperty: 'email', formValues: formValues, ),
              SizedBox(height: 30),
          
              CustomInputField(labelText: 'Contraseña', helperText: 'Contraseña del usuario', textInputType: TextInputType.text, obscureText: true, formProperty: 'password', formValues: formValues ),
              SizedBox(height: 30),


              DropdownButtonFormField(
                value: 'ROLE_ADMIN',
                items: const[
                  DropdownMenuItem( value: 'ROLE_ADMIN', child: Text('Admin')),
                  DropdownMenuItem( value: 'ROLE_SUPER_USER', child: Text('Superuser')),
                  DropdownMenuItem( value: 'ROLE_DEV', child: Text('Developer')),
                  DropdownMenuItem( value: 'ROLE_JR_DEV', child: Text('Jr. Developer')),
                ], 
                onChanged: (value) {
                  print(value);
                  formValues['role'] = 'ROLE_ADMIN';
                }
              ),

              ElevatedButton(
                onPressed: () {
                  FocusScope.of(context).requestFocus(FocusNode());
                  if(!myFormKey.currentState!.validate()){
                    return;
                  }
                }, 
                child: const SizedBox(
                  width: double.infinity,
                  child : Center (child: Text('Guarda'))
                )
              ),
            ]),
          ),
        ),
      )
    );
  }
}


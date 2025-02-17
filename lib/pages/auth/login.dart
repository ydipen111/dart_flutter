import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:garrage_nepal/shared/validators.dart'; // Import for ConsumerStatefulWidget

class Login extends ConsumerStatefulWidget {
  const Login({super.key});

  @override
  ConsumerState<Login> createState() => _LoginState();
}

class _LoginState extends ConsumerState<Login> {
  final _form = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    final pass = ref.watch(passShowProvider(id: 1));
    return Scaffold(
      appBar: AppBar(
        title: Text("login page"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FormBuilder(
          autovalidateMode: AutoValidateMode.onUserInteraction,
          child: ListView(
            children: [
              FormBuilderTextField(
                name: 'email',
                decoration: InputDecoration(
                  hintText: "Email",
                ),

                validator: FormBuilderValidators.compose([
                  FormBuilderValidators.required(),
                  FormBuilderValidators.email(),
                ]),


              ),
              const SizedBox(height: 20,),
              FormBuilderTextField(
                name: 'password',
                  obscureText: pass,
                  // Changed from 'email' to 'password' to differentiate
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    onPressed: (){
                      ref.read(passShowProvider(id:1).notifier).toggle();

                    },
                    icon: Icon(Icons.lock),
                  )
                ),
                validator: FormBuilderValidators.compose([
                  FormBuilderValidators.required(),
                  FormBuilderValidators.email(),
                ]),
              ),

              const SizedBox(height: 20,),

              ElevatedButton(
                  onPressed: () {
                    if(_form.currentState!.saveAndValidate(focusOnInvalid: false)){
                      print(_form.currentState!.value);


                    }else{

                    }
                  },
                  child: Text('submit')
              )
            ],
          ),
        ),
      ),
    );
  }
}
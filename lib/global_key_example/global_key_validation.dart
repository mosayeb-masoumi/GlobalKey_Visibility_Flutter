import 'package:flutter/material.dart';

class GlobalKeyValidation extends StatefulWidget {
  const GlobalKeyValidation({Key? key}) : super(key: key);

  @override
  _GlobalKeyValidationState createState() => _GlobalKeyValidationState();
}

class _GlobalKeyValidationState extends State<GlobalKeyValidation> {


  final formKey = GlobalKey<FormState>();
  String email = "";
  String username = "";
  String password = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("global key validation"),
      ),
      body: Container(
        margin: EdgeInsets.all(10),

        child: Form(  // so important
          key: formKey,

          child: Column(
            children: [
              const SizedBox(
                height: 24,
              ),
              TextFormField(
                decoration:const InputDecoration(
                    labelText: "user name", border: OutlineInputBorder()),
                validator: (value) => value != null && !value.contains("@")
                    ? "Not a valid email"
                    : null,

                onSaved: (value) => email = value! ,

              ),
              const SizedBox(
                height: 24,
              ),
              TextFormField(
                decoration: const InputDecoration(
                    labelText: "user name", border: OutlineInputBorder()),
              ),
              const SizedBox(
                height: 24,
              ),
              TextFormField(
                decoration:const InputDecoration(
                    labelText: "password", border: OutlineInputBorder()),
              ),
              const SizedBox(
                height: 24,
              ),
              RaisedButton(child: Text("submit"), onPressed:(){
                submit();
              })
            ],
          ),
        ),
      ),
    );
  }

  submit() {

    final form = formKey.currentState!;
    if(form.validate()){

      form.save();
      String gg = email;
    }

  }
}

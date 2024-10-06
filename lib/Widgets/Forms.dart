import 'package:flutter/material.dart';
import 'package:flutter_application_2/Widgets/Drawer.dart';

class FormWidget extends StatefulWidget {
  FormWidget({super.key});

  @override
  State<FormWidget> createState() => _Form_WidgetState();
}

class _Form_WidgetState extends State<FormWidget> {
  final _formKey = GlobalKey<FormState>();

  

final TextEditingController _emailController = TextEditingController();
final TextEditingController _nameController = TextEditingController();
final TextEditingController _passwordController = TextEditingController();

 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Forms'),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: TextFormField(
                  validator: (value) {
                    if (value.toString().isEmpty) {
                      return 'Pls Enter Name';
                    } else {
                      return null;
                    }
                  },
                  controller: _nameController,
                  decoration: InputDecoration(
                      labelText: 'Name',
                      hintText: 'Ex: Pranov',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12))),
                ),
              ),

              SizedBox(
                height: 50
                ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: TextFormField(
                  validator: (value) {
                    if (!value.toString().contains('@gmail.com')) {
                      return 'Enter Gmail';
                    } else {
                      return null;
                    }
                  },
                  controller: _emailController,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email),
                      labelText: 'Email',
                      hintText: 'Ex: abc@gmail.com',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12))),
                ),
              ),

              SizedBox(
                height: 60
                ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: TextFormField(
                  validator: (value) {
                    if (value!.length <= 6) {
                      return 'Password should be greater than 6';
                    } else {
                      return null;
                    }
                  },
                  controller: _passwordController,
                  decoration: InputDecoration(
                      labelText: 'Password',
                      hintText: 'Ex: 123456',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12))),
                ),
              ),

              SizedBox(height: 20),

              
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => DrawerWidget()));
                    if (_formKey.currentState!.validate()) {}
                  },
                  child: Text('Login'))
            ],
          ),
        ),
      ),
    );
  }
}
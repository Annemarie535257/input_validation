import 'package:flutter/material.dart';
import '../screens/form_screen2.dart';
import '../utils/validators.dart';

class FormScreen1 extends StatefulWidget {
  @override
  _FormScreen1State createState() => _FormScreen1State();
}

class _FormScreen1State extends State<FormScreen1> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();

  void _validateAndProceed() {
    if (_formKey.currentState!.validate()) {
      if (_emailController.text.contains("@") && _emailController.text.contains(".")) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => FormScreen2()),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Invalid Email: Ensure it contains '@' and '.'")),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Personal Information")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _nameController,
                decoration: InputDecoration(labelText: "Name"),
                validator: validateName,
              ),
              TextFormField(
                controller: _addressController,
                decoration: InputDecoration(labelText: "Address"),
              ),
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(labelText: "Email"),
                validator: validateEmail,
              ),
              TextFormField(
                controller: _phoneController,
                decoration: InputDecoration(labelText: "Phone Number"),
                validator: validatePhone,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: _validateAndProceed,
                child: Text("Next"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
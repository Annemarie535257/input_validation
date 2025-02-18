import 'package:flutter/material.dart';

class FormScreen2 extends StatefulWidget {
  @override
  _FormScreen2State createState() => _FormScreen2State();
}

class _FormScreen2State extends State<FormScreen2> {
  final _formKey = GlobalKey<FormState>();
  String _occupation = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Employment/Student Details")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Text("Are you an Employer or a Student?", style: TextStyle(fontSize: 18)),
              ListTile(
                title: Text("Employer"),
                leading: Radio(
                  value: "Employer",
                  groupValue: _occupation,
                  onChanged: (value) {
                    setState(() {
                      _occupation = value.toString();
                    });
                  },
                ),
              ),
              ListTile(
                title: Text("Student"),
                leading: Radio(
                  value: "Student",
                  groupValue: _occupation,
                  onChanged: (value) {
                    setState(() {
                      _occupation = value.toString();
                    });
                  },
                ),
              ),
              TextFormField(
                decoration: InputDecoration(labelText: "Institution/Company Name"),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'This field cannot be empty';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: "Position (if Employer) or Course (if Student)"),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Form Submitted Successfully")),
                    );
                  }
                },
                child: Text("Submit"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

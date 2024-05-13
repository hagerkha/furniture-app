import 'package:flutter/material.dart';
import 'clothes.dart';

class Login extends StatelessWidget {

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        shadowColor: Colors.teal,
        elevation: 200,
        title: Text('Log In'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: email,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  labelText: "Email",
                  hintText: "Enter The Email",
                  suffixIcon: Icon(Icons.email),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: password,
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  labelText: "Password",
                  hintText: "Enter Password",
                  suffixIcon: Icon(Icons.remove_red_eye_rounded),
                ),
              ),
            ),

            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return Clothes();
                  }),
                );
              },
              child: Text('Log In'),
            ),

          ],
        ),
      ),
    );
  }
}
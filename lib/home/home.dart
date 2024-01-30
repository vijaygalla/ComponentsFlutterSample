import 'package:components_sample_app/components/components_page.dart';
import 'package:components_sample_app/constants/constants.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _formKey = GlobalKey<FormState>();

  String username = userName;
  String password = pwd;
  String error = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Login',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: Colors.deepPurple,
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Image(
                image: NetworkImage(
                    'https://img.freepik.com/free-vector/access-control-system-abstract-concept_335657-3180.jpg'),
                fit: BoxFit.fill,
                height: 200,
                width: 200,
              ),
              const SizedBox(
                height: 30,
              ),
              TextFormField(
                initialValue: username,
                onChanged: (value) {
                  setState(() {
                    username = value;
                  });
                },
                validator: (value) =>
                    value?.isEmpty == true ? 'Enter username' : null,
                decoration: textInputDecoration.copyWith(hintText: "Username"),
              ),
              const SizedBox(
                height: 12,
              ),
              TextFormField(
                initialValue: password,
                validator: (value) => (value?.length ?? 0) > 8
                    ? 'Password must be 8 characters length'
                    : null,
                onChanged: (value) {
                  setState(() {
                    password = value;
                  });
                },
                obscureText: true,
                decoration: textInputDecoration.copyWith(hintText: "Password"),
              ),
              const SizedBox(
                height: 20,
              ),
              FilledButton.icon(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      if (username == userName && password == pwd) {
                        setState(() {
                          error = '';
                        });

                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ComponentsPage()),
                        );
                      } else {
                        setState(() {
                          error =
                              'Login failed due to wrong username or password';
                        });
                      }
                    }
                  },
                  icon: const Icon(Icons.login_outlined),
                  label: const Text('Submit')),
              const SizedBox(
                height: 30,
              ),
              Text(
                error,
                style: const TextStyle(
                  color: Colors.red,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}
class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    var name = TextEditingController();
    var email = TextEditingController();
    return SafeArea(child: Scaffold(
      body: Center(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                TextFormField(
                  keyboardType: TextInputType.number,
                  controller: name,
                  validator: (value){
                    if (value?.isEmpty ?? true) {
                      return 'This field is required';
                    }
                    return null;
                  },
                  style: const TextStyle(color: Colors.black),
                  //obscureText: true, // It's for password
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.person,
                        color: Colors.black,
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide:
                          const BorderSide(color: Colors.black)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide:
                          const BorderSide(color: Colors.grey)),
                      labelText: 'Hint',
                      labelStyle:
                      const TextStyle(color: Colors.green)),
                  cursorColor: Colors.black,
                ),
                SizedBox(height: 20,),
                TextFormField(
                  controller: email,
                  validator: (value){
                    if (value?.isEmpty ?? true) {
                      return 'This field is required';
                    }
                    return null;
                  },
                  style: const TextStyle(color: Colors.black),
                  //obscureText: true, // It's for password
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.person,
                        color: Colors.black,
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide:
                          const BorderSide(color: Colors.black)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide:
                          const BorderSide(color: Colors.grey)),
                      labelText: 'Hint',
                      labelStyle:
                      const TextStyle(color: Colors.green)),
                  cursorColor: Colors.black,
                ),
                SizedBox(height: 20,),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blueAccent.shade200,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      onPressed: () async {
                        if (_formKey.currentState != null && _formKey.currentState!.validate()) {
                          print('All Ok');
                        }
                      },
                      child: const Text('Click',style: TextStyle(color: Colors.white),)),
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}

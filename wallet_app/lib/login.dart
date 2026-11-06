import 'package:flutter/material.dart';
import 'package:wallet_app/register.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  TextEditingController controller = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Color(0xFFFEF7FF),
          appBar: AppBar(
            backgroundColor: Color(0xFF0B6B57),
            toolbarHeight: 60,
            leading: Padding(
              padding: EdgeInsets.only(left: 10),
              child: Image.asset('images/image.png', height: 50, width: 50),
            ),
            title: Text(
              "My Wallet",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ),
          body: Center(
            child: Container(
              padding: EdgeInsets.all(50),
              height: 700,
              width: 700,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Welcome back",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
                  ),
                  Text("Log in to see where your money goes."),
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        SizedBox(height: 50),
                        TextFormField(
                          controller: controller,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            labelText: "Email",
                            hintText: "Enter Your Email",
                            prefixIcon: Icon(Icons.email),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Field is Empty";
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: 20),
                        TextFormField(
                          obscureText: true,
                          controller: controller2,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            labelText: "Password",
                            hintText: "Enter Your Password",
                            prefixIcon: Icon(Icons.lock),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Field is Empty";
                            }

                            return null;
                          },
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text("Forgot password?"),
                        ),
                        SizedBox(height: 40),
                        ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {}
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFF0B6B57),
                            minimumSize: Size(400, 55),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadiusGeometry.circular(10),
                            ),
                          ),
                          child: Text(
                            "Log in",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: const Color.fromARGB(255, 251, 251, 251),
                            ),
                          ),
                        ),

                        SizedBox(height: 40),
                        Text("or"),
                        SizedBox(height: 40),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => register(),
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            minimumSize: Size(400, 55),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadiusGeometry.circular(10),
                              side: BorderSide(color: Colors.black, width: 0.5),
                            ),
                          ),
                          child: Text(
                            "Register",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

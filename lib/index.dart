import 'package:flutter/material.dart';

class IndexScreen extends StatefulWidget {
  const IndexScreen({super.key});

  @override
  State<IndexScreen> createState() => _IndexScreenState();
}

class _IndexScreenState extends State<IndexScreen> {
  bool _rememberMe = false; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            colors: [
              Color.fromARGB(255, 141, 125, 131),
              Color.fromARGB(255, 186, 170, 170),
            ],
          ),
        ),
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Card(
            elevation: 10,
            color: Colors.white,
            child: SizedBox(
              height: 750,
              width: 600,
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.asset(
                          "assets/images/logo.png",
                          width: 90,
                          height: 90,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Log in to #6 Juarbal",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  socialLoginButton(Icons.email, "Continue with Google"),
                  socialLoginButton(Icons.facebook, "Continue with Facebook"),
                  socialLoginButton(Icons.apple, "Continue with Apple"),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: Divider(
                      color: Color.fromARGB(255, 172, 156, 156),
                      thickness: 0.5,
                      indent: 50,
                      endIndent: 50,
                    ),
                  ),
                  inputField("Email or username", "Email or Username"),
                  const SizedBox(height: 10),
                  inputField("Password", "Password", isPassword: true),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Switch(
                          value: _rememberMe,
                          onChanged: (bool value) {
                            setState(() {
                              _rememberMe = value;
                            });
                          },
                          inactiveTrackColor: const Color.fromARGB(255, 197, 192, 192),
                          activeColor: const Color.fromARGB(255, 137, 104, 117), // Green color when active
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "Remember me",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ),
                  loginButton(),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Forgot your password?",
                      style: TextStyle(
                        color: Colors.black,
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.black,
                      ),
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

  Widget socialLoginButton(IconData icon, String text) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: 300,
        child: OutlinedButton(
          onPressed: () {},
          style: OutlinedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 255, 255, 255),
            side: const BorderSide(color: Color.fromARGB(255, 0, 0, 0), width: 2),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            padding: const EdgeInsets.symmetric(vertical: 12),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, color: Colors.black),
              const SizedBox(width: 10),
              Text(text, style: const TextStyle(color: Colors.black)),
            ],
          ),
        ),
      ),
    );
  }

  Widget inputField(String label, String hint, {bool isPassword = false}) {
    return SizedBox(
      width: 350,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label, style: const TextStyle(color: Colors.black)),
          const SizedBox(height: 10),
          TextFormField(
            obscureText: isPassword,
            style: const TextStyle(color: Colors.black),
            decoration: InputDecoration(
              labelText: hint,
              border: const OutlineInputBorder(),
              labelStyle: const TextStyle(color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }

  Widget loginButton() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: 250,
        height: 50,
        child: OutlinedButton(
          onPressed: () {},
          style: OutlinedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 177, 161, 167),
            side: const BorderSide(
                color: Color.fromARGB(255, 0, 0, 0), width: 2),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            padding: const EdgeInsets.symmetric(vertical: 12),
          ),
          child: const Text(
            "Log In",
            style: TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}

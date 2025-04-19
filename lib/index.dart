import 'package:flutter/material.dart';
import 'package:flutter_univents/forgot-password.dart';

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
          color: Colors.white,
        ),
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SizedBox(
            height: 850,
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
              
                
                Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Text(
                    "UniVents",
                    style: 
                    TextStyle(color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,),
                    
                  ),
                ),
          
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Text(
                        "Sign In",
                        style: 
                        TextStyle(color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,),
                        
                      ),
                    ),
                  ],
                ),                  
          
                inputField("abc@email.com", icon: Icons.email),
                const SizedBox(height: 10),
                inputField("Password", isPassword: true, icon: Icons.lock),
          
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Switch.adaptive(
                            applyCupertinoTheme: false, 
                            value: _rememberMe,
                            onChanged: (bool value) {
                              setState(() {
                                _rememberMe = value;
                              });
                            },
                            activeColor: const Color.fromARGB(255, 6, 83, 178), 
                            inactiveThumbColor: const Color.fromARGB(255, 255, 255, 255), // thumb when off
                            inactiveTrackColor: const Color.fromARGB(255, 132, 127, 127), // track when off
                          ),
                           Padding(
                            padding: EdgeInsets.all(20.0),
                            child: Text(
                              "Remember me",
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const ForgotPassword()),
                            );
                          },
                          child: const Text(
                            "Forgot password?",
                            style: TextStyle(
                              color: Colors.black,
                              
                            ),
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
                loginButton(),
                const Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Text(
                    "OR",
                    style: TextStyle(color: Color.fromARGB(255, 148, 145, 145), fontSize: 18),
                  ),
                ),
          
                socialLoginButton('assets/images/google-logo.png', "Log in with Google"),
                socialLoginButton('assets/images/facebook-logo.png', "Log in with Facebook"),
          
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(2.0),
                        child: Text(
                          "Don't have an account?",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "Sign up",
                          style: TextStyle(color: Color.fromARGB(255, 2, 74, 134)),
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
    );
  }

Widget socialLoginButton(String assetPath, String text) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: SizedBox(
      width: 300,
      height: 50,
      child: OutlinedButton(
        onPressed: () {},
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.white,
          side: const BorderSide(color: Colors.transparent),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 12),
          elevation: 2,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              assetPath,
              height: 30,
              width: 30,
            ),
            const SizedBox(width: 12),
            Text(
              text,
              style: const TextStyle(
                color: Color(0xFF1F1F1F),
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}


  Widget inputField(String hint, {bool isPassword = false, IconData? icon}) {
    return SizedBox(
      width: 350,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            obscureText: isPassword,
            style: const TextStyle(color: Colors.black),
            decoration: InputDecoration(
              labelText: hint,
              prefixIcon: icon != null ? Icon(icon, color: Colors.grey) : null,
              border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12), 
              borderSide: const BorderSide(color: Color.fromARGB(255, 178, 176, 176)),
            ),
            labelStyle: const TextStyle(color: Colors.black),
            filled: true,
            fillColor: Colors.white,
            hintStyle: const TextStyle(color: Colors.grey),
            contentPadding: const EdgeInsets.symmetric(vertical: 20.0),
            ),
          ),
        ],
      ),
    );
  }

Widget loginButton() {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: SizedBox(
      width: 300,
      height: 60,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF1D2F96), 
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          elevation: 4,
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            const Center(
              child: Text(
                "SIGN IN",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                  fontSize: 18,
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                // margin: const EdgeInsets.only(right: 2),
                decoration: const BoxDecoration(
                  color: Color(0xFF4D5DFB),
                  shape: BoxShape.circle,
                ),
                padding: const EdgeInsets.all(8),
                child: const Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                  size: 18,
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}


}

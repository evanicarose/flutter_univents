import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        color: Colors.white,
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // Aligns the text to the left
          children: [
            const SizedBox(height: 5),
            const Text(
              "Reset Password",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            const Text(
              "Please enter your email address to request a password reset.",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 30),

            
            Center(child: inputField("abc@email.com", icon: Icons.email)),
            const SizedBox(height: 30),
            Center(child: sendButton()),
          ],
        ),
      ),
    );
  }




  Widget inputField(String hint, {bool isPassword = false, IconData? icon}) {
    return SizedBox(
      width: 400,
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


  Widget sendButton() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: SizedBox(
        width: 320,
        height: 70,
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
                  "SEND",
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
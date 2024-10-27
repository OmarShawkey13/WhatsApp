import 'package:flutter/material.dart';
import 'package:mentoracademy/features/auth/presentation/views/register.dart';
import 'package:mentoracademy/features/home/presentation/views/home.dart';

class Login extends StatelessWidget {
  Login({super.key});

  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff8fbf2),
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Image(
                  image: AssetImage('assets/images/app_icon.png'),
                  height: 120.0,
                  width: 120.0,
                ),
                const SizedBox(
                  height: 30.0,
                ),
                const Text(
                  'Login in to your account',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22.0,
                      color: Colors.black),
                ),
                const SizedBox(
                  height: 15.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: TextFormField(
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    validator: (value) {
                      if (value!.isNotEmpty) {
                        return 'Please enter your email';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      labelText: 'enter your email',
                      hintText: 'your email',
                      prefixIcon: const Icon(Icons.email_outlined, color: Colors.grey),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100.0)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0)),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: TextFormField(
                    controller: passwordController,
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                    validator: (value) {
                      if (value!.isNotEmpty) {
                        return 'Password is too short';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        labelText: 'enter your password',
                        hintText: 'your password',
                        prefixIcon:
                            const Icon(Icons.lock_outline, color: Colors.grey),
                        suffixIcon: const Icon(Icons.visibility_off_outlined),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(100.0)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0))),
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff128C7E),
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100.0),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => const Home(),
                          ),
                        );
                      },
                      child: const Text(
                        'Login',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Don\'t have an account?',
                      style: TextStyle(
                        color: Colors.black
                      ),
                    ),
                    MaterialButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => Register(),
                          ),
                        );
                      },
                      child: const Text(
                        'Register here',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xff128C7E),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

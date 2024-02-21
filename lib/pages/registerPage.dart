import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:medicine_app/pages/Bottom%20navigaton/home_page.dart';
import 'package:medicine_app/pages/loginpage.dart';

class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  final _formKey = GlobalKey<FormState>();
  final _username = TextEditingController();
  final _email = TextEditingController();
  final _password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xff04516f),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const Gap(50),
                  CircleAvatar(
                    radius: screenSize.width * 0.25,
                    backgroundColor: Colors.white60,
                    child: Image.asset(
                      "assets/images/pillspng.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                  const Gap(50),
                  TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return " please enter your name";
                      } else if (value.isNotEmpty) {
                        String exp = r'';
                        RegExp regex = RegExp(exp);
                        String userId = _username.text;
                        if (!regex.hasMatch(userId)) {
                          return " please enter a valid name";
                        } else {
                          return null;
                        }
                      }
                      return null;
                    },
                    obscureText: false,
                    controller: _username,
                    style: const TextStyle(
                      color: Color(0xffffffff),
                    ),
                    decoration: InputDecoration(
                      fillColor: Colors.white24,
                      filled: true,
                      hintText: "username",
                      hintStyle: const TextStyle(
                        color: Color(0xffffffff),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.white24,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0xff15c79a),
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Enter your email";
                      } else if (value.isNotEmpty) {
                        String exp = r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$';
                        RegExp regex = RegExp(exp);
                        String emailId = _email.text;
                        if (!regex.hasMatch(emailId)) {
                          return " please enter a valid email";
                        } else {
                          return null;
                        }
                      }
                      return null;
                    },
                    obscureText: false,
                    controller: _email,
                    style: const TextStyle(
                      color: Color(0xffffffff),
                    ),
                    decoration: InputDecoration(
                      fillColor: Colors.white24,
                      filled: true,
                      hintText: "Email",
                      hintStyle: const TextStyle(
                        color: Color(0xffffffff),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.white24,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0xff15c79a),
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Enter a password";
                      } else if (value.isNotEmpty) {
                        String pattern =
                            r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$';
                        RegExp regex = RegExp(pattern);
                        String password = _password.text;
                        if (!regex.hasMatch(password)) {
                          return "Minimum eight characters, at least one uppercase letter, one lowercase letter, one number and one special character";
                        } else {
                          return null;
                        }
                      }
                      return null;
                    },
                    obscureText: false,
                    controller: _password,
                    style: const TextStyle(
                      color: Color(0xffffffff),
                    ),
                    decoration: InputDecoration(
                      fillColor: Colors.white24,
                      filled: true,
                      hintText: "password",
                      hintStyle: const TextStyle(
                        color: Color(0xffffffff),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.white24,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0xff15c79a),
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    height: 45,
                    width: 200,
                    child: ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          // route
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                              builder: (context) {
                                return const Home();
                              },
                            ),
                          );
                        } else {}
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff15c79a),
                      ),
                      child: const Text(
                        "Sign Up",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  const Gap(15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          height: 2,
                          width: screenSize.width * 0.35,
                          color: Colors.white),
                      const SizedBox(
                        width: 5,
                      ),
                      const Text(
                        "or",
                        style: TextStyle(
                            fontSize: 17,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Container(
                          height: 2,
                          width: screenSize.width * 0.35,
                          color: Colors.white),
                    ],
                  ),
                  const Gap(10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "I already have an account?",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 17,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop(
                            MaterialPageRoute(
                              builder: (cotext) {
                                return LoginPage();
                              },
                            ),
                          );
                        },
                        child: const Text(
                          "SignIn",
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      )
                    ],
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

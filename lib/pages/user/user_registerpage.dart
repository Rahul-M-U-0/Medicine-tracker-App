import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:medicine_app/pages/user/user%20bnb/user_bottomnavi.dart';

class UserRegistration extends StatefulWidget {
  const UserRegistration({super.key});

  @override
  State<UserRegistration> createState() => _UserRegistrationState();
}

class _UserRegistrationState extends State<UserRegistration> {
  final _formKey = GlobalKey<FormState>();
  final _username = TextEditingController();
  final _email = TextEditingController();
  final _password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff04516f),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back_ios),
            color: Colors.white,
          ),
          title: const Text(
            'Register',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: const Color(0xff04516f),
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Form(
              key: _formKey,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 150,
                      width: 150,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(100),
                        ),
                        color: Colors.white10,
                      ),
                      child: const Icon(
                        Icons.person,
                        size: 80,
                        color: Colors.white,
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
                                  return const UserBottomNavi();
                                },
                              ),
                            );
                          }
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
                            Navigator.of(context).pop();
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
      ),
    );
  }
}

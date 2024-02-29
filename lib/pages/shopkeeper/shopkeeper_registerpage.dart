import 'package:flutter/material.dart';

class ShopKeeperRegisterPage extends StatefulWidget {
  const ShopKeeperRegisterPage({super.key});

  @override
  State<ShopKeeperRegisterPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<ShopKeeperRegisterPage> {
  final _formKey = GlobalKey<FormState>();

  final _username = TextEditingController();
  final _email = TextEditingController();
  final _password = TextEditingController();
  final _license = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xff04516f),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.white,
          ),
        ),
        title: const Text(
          "Shopkeeper Registeration",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xff04516f),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
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
                      Icons.shopping_cart,
                      size: 80,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return " please enter your user name";
                      } else if (value.isNotEmpty) {
                        String exp = r'';
                        RegExp regex = RegExp(exp);
                        String userId = _username.text;
                        if (!regex.hasMatch(userId)) {
                          return " please enter a valid user name";
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
                      hintText: "Username",
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
                          return "Minimum  8 characters, at least 1 uppercase letter, 1 lowercase letter, 1 number and 1 special character";
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
                      hintText: "Password",
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
                        return " please enter your register id";
                      } else if (value.isNotEmpty) {
                        String exp = r'';
                        RegExp regex = RegExp(exp);
                        String userId = _username.text;
                        if (!regex.hasMatch(userId)) {
                          return " please enter a valid register id";
                        } else {
                          return null;
                        }
                      }
                      return null;
                    },
                    obscureText: false,
                    controller: _license,
                    style: const TextStyle(
                      color: Color(0xffffffff),
                    ),
                    decoration: InputDecoration(
                      fillColor: Colors.white24,
                      filled: true,
                      hintText: "License Id",
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
                  SizedBox(
                    height: 40,
                    width: 150,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff15c79a),
                      ),
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          // route
                          // Navigator.of(context).pushReplacement(
                          //   MaterialPageRoute(
                          //     builder: (context) {
                          //       return const AddMedicine(
                          //           decription: "New Medication");
                          //     },
                          //   ),
                          // );
                        } else {}
                      },
                      child: const Text(
                        "SignUp",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
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
                  const SizedBox(
                    height: 10,
                  ),
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
    );
  }
}

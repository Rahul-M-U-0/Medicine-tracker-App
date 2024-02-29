import 'package:flutter/material.dart';
import 'package:medicine_app/pages/admin/admin_bottomnavi.dart';
import 'package:medicine_app/pages/user/get_started_page.dart';

class AdminLoginPage extends StatelessWidget {
  final _formkey = GlobalKey<FormState>();

  final _usercontroller = TextEditingController();
  final _passcontroller = TextEditingController();

  AdminLoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xff04516f),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (context) => const GetStartedPage(),
              ),
            );
          },
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.white,
          ),
        ),
        title: const Text(
          "Admin Login",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xff04516f),
      ),
      body: Form(
        key: _formkey,
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 50,
                ),
                CircleAvatar(
                  radius: screenSize.width * 0.25,
                  backgroundImage: const AssetImage('assets/images/admin.webp'),
                  backgroundColor: const Color(0xff04516f),
                ),
                const SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: TextFormField(
                    obscureText: false,
                    controller: _usercontroller,
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
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: TextFormField(
                    obscureText: false,
                    controller: _passcontroller,
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
                ),
                const SizedBox(
                  height: 40,
                ),
                SizedBox(
                  height: 45,
                  width: 200,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff15c79a),
                    ),
                    onPressed: () {
                      if (_formkey.currentState!.validate()) {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (cotext) {
                              return const AdminBottomNavi();
                            },
                          ),
                        );
                      }
                    },
                    child: const Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

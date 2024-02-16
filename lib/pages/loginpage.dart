import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:medicine_app/components/input-fields.dart';
import 'package:medicine_app/pages/Bottom%20navigaton/bnb.dart';
import 'package:medicine_app/pages/registerPage.dart';

class LoginPage extends StatelessWidget {
  final _formkey = GlobalKey<FormState>();

  final usercontroller = TextEditingController();
  final passcontroller = TextEditingController();

  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff04516f),
      body: Form(
        key: _formkey,
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Gap(50),
                CircleAvatar(
                  radius: 100,
                  // color: Colors.blue,
                  backgroundColor: Colors.white60,
                  child: Image.asset(
                    "assets/images/pillspng.png",
                    fit: BoxFit.cover,
                  ),
                ),
                const Gap(50),
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: InputFields(
                        inputController: usercontroller, hintTxt: 'user name')),
                const Gap(20),
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: InputFields(
                        inputController: passcontroller, hintTxt: 'password')),
                Padding(
                  padding: const EdgeInsets.only(left: 210),
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Forget Password?",
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                const Gap(30),
                SizedBox(
                  height: 45,
                  width: 200,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff15c79a),
                    ),
                    onPressed: () {
                      if (_formkey.currentState!.validate()) {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (cotext) {
                              return const BottomNavi();
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
                const Gap(15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(height: 2, width: 150, color: Colors.white),
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
                    Container(height: 2, width: 150, color: Colors.white),
                  ],
                ),
                const Gap(10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "I don't have an account?",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 17,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (cotext) {
                              return const Registration();
                            },
                          ),
                        );
                      },
                      child: const Text(
                        "SignUp",
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
    );
  }
}

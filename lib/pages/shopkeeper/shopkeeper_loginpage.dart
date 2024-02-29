import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:medicine_app/components/input-fields.dart';
import 'package:medicine_app/pages/shopkeeper/shop_bottomnavi.dart';
import 'package:medicine_app/pages/shopkeeper/shopkeeper_registerpage.dart';
import 'package:medicine_app/pages/user/get_started_page.dart';
import 'package:medicine_app/pages/user/forgotpassword.dart';

class ShopkeeperLoginPage extends StatelessWidget {
  final _formkey = GlobalKey<FormState>();

  final usercontroller = TextEditingController();
  final passcontroller = TextEditingController();

  ShopkeeperLoginPage({
    super.key,
  });

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
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => const GetStartedPage(),
                ),
              );
            },
            icon: const Icon(Icons.arrow_back_ios),
            color: Colors.white,
          ),
          title: const Text(
            'LogIn As Shopkeeper',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: const Color(0xff04516f),
        ),
        body: Form(
          key: _formkey,
          child: SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: screenSize.width * 0.25,
                      backgroundImage:
                          const AssetImage('assets/images/shop.webp'),
                      backgroundColor: const Color(0xff04516f),
                    ),
                    const Gap(50),
                    InputFields(
                        inputController: usercontroller, hintTxt: 'Email'),
                    const Gap(20),
                    InputFields(
                        inputController: passcontroller, hintTxt: 'password'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => const ForgotPassword(),
                              ),
                            );
                          },
                          child: const Text(
                            "Forget Password?",
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
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
                            Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                builder: (cotext) {
                                  return const ShopBottomNavi();
                                },
                              ),
                            );
                          }
                        },
                        child: const Text(
                          'LogIn',
                          style: TextStyle(
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
                                  return const ShopKeeperRegisterPage();
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
        ),
      ),
    );
  }
}

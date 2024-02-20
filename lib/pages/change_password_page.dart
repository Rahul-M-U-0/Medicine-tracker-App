import 'package:flutter/material.dart';
import 'package:medicine_app/components/input-fields.dart';
import 'package:medicine_app/pages/Bottom%20navigaton/profile_page.dart';

class ChangePasswordPage extends StatelessWidget {
  ChangePasswordPage({super.key});

  final newPasswordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  void submitPassword(BuildContext context) {
    Navigator.of(context).pop(
      MaterialPageRoute(
        builder: (context) => const ProfilePage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xff04516f),
      appBar: AppBar(
        backgroundColor: const Color(0xff04516f),
        title: const Text(
          'Change Password',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            color: Color(0xffffffff),
          ),
        ),
        centerTitle: true,
        // automaticallyImplyLeading: false,
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            CircleAvatar(
              radius: screenSize.width * 0.25,
              backgroundColor: Colors.white60,
              backgroundImage: const AssetImage('assets/images/pillspng.png'),
            ),
            const SizedBox(
              height: 40,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      InputFields(
                        inputController: newPasswordController,
                        hintTxt: 'New Password',
                        flag: true,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      InputFields(
                        inputController: confirmPasswordController,
                        hintTxt: 'Confirm Password',
                        flag: true,
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      SizedBox(
                        height: 45,
                        width: 200,
                        child: ElevatedButton(
                          onPressed: () {
                            submitPassword(context);
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xff15c79a),
                          ),
                          child: const Text(
                            'Submit',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xffffffff),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

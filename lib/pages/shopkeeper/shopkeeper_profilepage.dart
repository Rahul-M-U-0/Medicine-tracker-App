import 'package:flutter/material.dart';
import 'package:medicine_app/pages/user/change_password_page.dart';
import 'package:medicine_app/pages/user/edit_profile.dart';
import 'package:medicine_app/pages/user/get_started_page.dart';

class ShopProfilePage extends StatelessWidget {
  ShopProfilePage({super.key});

  final String name = 'ABC MEDICALS';
  final String licenseid = 'hgdg167672';
  final String email = 'abcmed@gmail.com';
  final String phoneno = '9865327410';
  final String address = 'Kochi, Kerala';
  final String profileImage = 'assets/images/shop.webp';

  void changePassword(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => ChangePasswordPage(),
      ),
    );
  }

  void editProfile(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => EditProfilePage(profileImage: profileImage),
      ),
    );
  }

  final nameController = TextEditingController();
  final licensecontroller = TextEditingController();
  final phoneNumberController = TextEditingController();
  final emailIDController = TextEditingController();

  void submitProfile(BuildContext context) {
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff04516f),
        appBar: AppBar(
          backgroundColor: const Color(0xff04516f),
          title: const Text(
            'ShopKeeper Profile',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              color: Color(0xffffffff),
            ),
          ),
          centerTitle: true,
          automaticallyImplyLeading: false,
        ),
        body: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              CircleAvatar(
                radius: screenSize.width * 0.20,
                backgroundColor: const Color(0xff15c79a),
                child: CircleAvatar(
                  radius: screenSize.width * 0.25 - 2,
                  backgroundImage: AssetImage(profileImage),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                name,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Color(0xffffffff),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    licenseid,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Color(0xffffffff),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        email,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Color(0xffffffff),
                        ),
                      ),
                      const Text('   |   '),
                      Text(
                        phoneno,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    address,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Color(0xffffffff),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 180,
                height: 55,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      elevation: 1,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      backgroundColor: Colors.transparent),
                  onPressed: () {
                    editProfile(context);
                  },
                  child: const Text(
                    "Edit profile",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30,
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                          width: 320,
                          height: 55,
                          child: ElevatedButton.icon(
                              style: ElevatedButton.styleFrom(
                                  elevation: 1,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  backgroundColor: Colors.transparent),
                              onPressed: () {
                                changePassword(context);
                              },
                              icon: const Icon(
                                Icons.key,
                                size: 30,
                                color: Colors.white,
                              ),
                              label: const Row(
                                children: [
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Text(
                                    "Change Password",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: 16),
                                  ),
                                  SizedBox(width: 70),
                                  Icon(
                                    Icons.arrow_forward,
                                    size: 30,
                                    color: Colors.white,
                                  )
                                ],
                              ))),

                      const SizedBox(
                        height: 20,
                      ),

                      SizedBox(
                          width: 320,
                          height: 55,
                          child: ElevatedButton.icon(
                              style: ElevatedButton.styleFrom(
                                  elevation: 1,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  backgroundColor: Colors.transparent),
                              onPressed: () {
                                Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const GetStartedPage(),
                                  ),
                                );
                              },
                              icon: const Icon(
                                Icons.logout,
                                size: 30,
                                color: Colors.white,
                              ),
                              label: const Row(
                                children: [
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Text(
                                    "Log Out",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: 16),
                                  ),
                                  SizedBox(width: 140),
                                  Icon(
                                    Icons.arrow_forward,
                                    size: 30,
                                    color: Colors.white,
                                  )
                                ],
                              ))),
                      const SizedBox(
                        height: 20,
                      ),
                      // InkWell(
                      //   onTap: () {
                      //     Navigator.of(context).pushReplacement(
                      //       MaterialPageRoute(
                      //         builder: (context) => LoginPage(),
                      //       ),
                      //     );
                      //   },
                      //   child: const ListTile(
                      //     leading: Icon(
                      //       Icons.delete_outline,
                      //       size: 40,
                      //       color: Color(0xff15c79a),
                      //     ),
                      //     title: Text(
                      //       'Delete Account',
                      //       style: TextStyle(
                      //         fontSize: 20,
                      //         fontWeight: FontWeight.w500,
                      //         color: Colors.red,
                      //       ),
                      //     ),
                      //   ),
                      // ),
                      SizedBox(
                          width: 320,
                          height: 55,
                          child: ElevatedButton.icon(
                              style: ElevatedButton.styleFrom(
                                  elevation: 1,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  backgroundColor: Colors.transparent),
                              onPressed: () {},
                              icon: const Icon(
                                Icons.delete,
                                size: 30,
                                color: Colors.red,
                              ),
                              label: const Row(
                                children: [
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Text(
                                    "Delete Account",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.red,
                                        fontSize: 16),
                                  ),
                                  SizedBox(width: 85),
                                  Icon(
                                    Icons.arrow_forward,
                                    size: 30,
                                    color: Colors.red,
                                  )
                                ],
                              ))),
                    ],
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

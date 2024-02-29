import 'package:flutter/material.dart';
import 'package:medicine_app/pages/user/change_password_page.dart';
import 'package:medicine_app/pages/user/edit_profile.dart';
import 'package:medicine_app/pages/user/get_started_page.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({super.key});

  final String name = 'John Winston';
  final String email = 'john@gmail.com';
  final String phoneno = '9865327410';
  final String address = 'Kochi, Kerala';
  final String profileImage = 'assets/images/profile_image.jpg';

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
  final phoneNumberController = TextEditingController();
  final emailIDController = TextEditingController();

  void submitProfile(BuildContext context) {
    Navigator.of(context).pop(
      MaterialPageRoute(
        builder: (context) => ProfilePage(),
      ),
    );
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
            'User Profile',
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
              // SizedBox(
              //   height: 45,
              //   width: 150,
              //   child: ElevatedButton(
              //     onPressed: () {
              //       editProfile(context);
              //     },
              //     style: ElevatedButton.styleFrom(
              //       backgroundColor: const Color(0xff15c79a),
              //     ),
              //     child: const Text(
              //       'Edit Profile',
              //       style: TextStyle(
              //         fontSize: 16,
              //         fontWeight: FontWeight.bold,
              //         color: Color(0xffffffff),
              //       ),
              //     ),
              //   ),
              // ),
              // Padding(
              //   padding: const EdgeInsets.symmetric(
              //     horizontal: 30,
              //   ),
              //   child: SingleChildScrollView(
              //     child: Column(
              //       children: [
              //         InputFields(
              //           inputController: nameController,
              //           hintTxt: 'Full Name',
              //         ),
              //         const SizedBox(
              //           height: 10,
              //         ),
              //         InputFields(

              //           inputController: phoneNumberController,
              //           hintTxt: 'Phone Number',
              //         ),
              //         const SizedBox(
              //           height: 10,
              //         ),
              //         InputFields(
              //           inputController: emailIDController,
              //           hintTxt: 'Email ID',
              //         ),
              //         const SizedBox(
              //           height: 20,
              //         ),
              //         SizedBox(
              //           height: 40,
              //           width: 200,
              //           child: ElevatedButton(
              //             onPressed: () {
              //               submitProfile(context);
              //             },
              //             style: ElevatedButton.styleFrom(
              //               backgroundColor: const Color(0xff15c79a),
              //             ),
              //             child: const Text(
              //               'Submit',
              //               style: TextStyle(
              //                 fontSize: 16,
              //                 fontWeight: FontWeight.bold,
              //                 color: Color(0xffffffff),
              //               ),
              //             ),
              //           ),
              //         ),
              //       ],
              //     ),
              //   ),
              // ),
              const SizedBox(
                height: 40,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30,
                  ),
                  child: Column(
                    children: [
                      // InkWell(
                      //   onTap: () {
                      //     changePassword(context);
                      //   },
                      //   child: const ListTile(
                      //     leading: Icon(
                      //       Icons.key,
                      //       size: 40,
                      //       color: Color(0xff15c79a),
                      //     ),
                      //     title: Text(
                      //       'Change Password',
                      //       style: TextStyle(
                      //         fontSize: 20,
                      //         fontWeight: FontWeight.w500,
                      //         color: Color(0xffffffff),
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
                      //       Icons.logout_outlined,
                      //       size: 40,
                      //       color: Color(0xff15c79a),
                      //     ),
                      //     title: Text(
                      //       'LogOut',
                      //       style: TextStyle(
                      //         fontSize: 20,
                      //         fontWeight: FontWeight.w500,
                      //         color: Colors.white,
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

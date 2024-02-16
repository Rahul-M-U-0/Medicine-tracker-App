import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:medicine_app/constants/Colorcode.dart';
import 'package:dropdown_search/dropdown_search.dart';

import 'package:medicine_app/pages/Bottom%20navigaton/Medication/AddDosage.dart';
import 'package:medicine_app/pages/Bottom%20navigaton/Medication/TimeDemo.dart';

class AddMedicine extends StatefulWidget {
  const AddMedicine({super.key, required this.decription});
  final String decription;
  @override
  State<AddMedicine> createState() => _AddMedicineState();
}

class _AddMedicineState extends State<AddMedicine> {
  bool _isExpanded = false;
  //int number = 0;
  final List<String> items = [
    "Pill",
    "Injection",
    "Solution(Liquid)",
    "Drops",
    "Inhaler",
    "Powder",
    "Tablet",
    "Antibiotics",
    "Antiseptic",
  ];
  String? selectedItem;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgcolor,
      appBar: AppBar(
        backgroundColor: const Color(0xff04516f),
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            const SizedBox(
              width: 30,
            ),
            CircleAvatar(
              radius: 22,
              backgroundColor: Colors.white60,
              child: Image.asset(
                "assets/pillspng.png",
                scale: 10,
              ),
            ),
            const SizedBox(
              width: 70,
            ),
            const Text(
              "Capsule",
              style: TextStyle(fontSize: 20, color: textcolor),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              Text(
                widget.decription,
                style: const TextStyle(
                  color: textcolor,
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  border: Border.all(
                    color: Colors.grey, // Change this to the color you want
                    width: 1, // Change this to the width you want
                  ),
                ),
                child: Theme(
                  data:
                      Theme.of(context).copyWith(cardColor: Color(0xff04516f)),
                  child: ExpansionPanelList(
                    expandIconColor: iconcolor,
                    expansionCallback: (int Index, bool isExpanded) {
                      setState(() {
                        _isExpanded = !_isExpanded;
                      });
                    },
                    children: [
                      ExpansionPanel(
                          isExpanded: _isExpanded,
                          headerBuilder:
                              (BuildContext Context, bool isExpanded) {
                            return const ListTile(
                              //tileColor: Colors.amber,
                              title: Text(
                                "Medication",
                                style: TextStyle(color: textcolor),
                              ),
                            );
                          },
                          body: Container(
                            decoration:
                                BoxDecoration(color: Colors.transparent),
                            padding: EdgeInsets.all(10),
                            child: const Column(
                              children: [
                                TextField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: "Medication name",
                                    labelStyle: TextStyle(color: textcolor),
                                    prefixIcon: Padding(
                                      padding: EdgeInsets.all(10),
                                      child: FaIcon(
                                        FontAwesomeIcons.pills,
                                        color: iconcolor,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 18,
                                ),
                                TextField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: "Description",
                                    labelStyle: TextStyle(color: textcolor),
                                    prefixIcon: Icon(
                                      Icons.description,
                                      color: iconcolor,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ))
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(height: 60, width: 380, child: AddDosage()),
              const SizedBox(
                height: 20,
              ),
              DropdownSearch<String>(
                popupProps: const PopupProps.dialog(
                  showSearchBox: true,
                  searchFieldProps: TextFieldProps(
                    decoration:
                        InputDecoration(labelText: "Select An Medicine Type"),
                  ),
                ),

                items: items,
                dropdownDecoratorProps: const DropDownDecoratorProps(
                  baseStyle: TextStyle(color: textcolor),
                  dropdownSearchDecoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Medicine type",
                      labelStyle: TextStyle(color: textcolor),
                      suffixIconColor: iconcolor),
                ),

                //dropdownDecoratorProps: ,
              ),
              const SizedBox(
                height: 20,
              ),
              DropdownButtonFormField(
                  iconDisabledColor: iconcolor,
                  iconEnabledColor: iconcolor,
                  dropdownColor: Colors.grey,
                  decoration:
                      const InputDecoration(border: OutlineInputBorder()),
                  hint: selectedItem == null
                      ? const Text(
                          "Days",
                          style: TextStyle(color: textcolor),
                        )
                      : Text("$selectedItem"),
                  value: selectedItem,
                  items: [
                    "Every day",
                    "Every other day",
                    "Today",
                    "Tommorrow",
                  ]
                      .map((menu) => DropdownMenuItem(
                          value: menu,
                          child: Text(
                            menu,
                            style: TextStyle(
                              color: textcolor,
                            ),
                          )))
                      .toList(),
                  onChanged: (menu) {
                    selectedItem = menu;
                  }),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    "Set Reminder",
                    style: TextStyle(
                      color: textcolor,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(
                    width: 95,
                  ),
                  Container(
                      height: 50,
                      width: 150,
                      decoration: BoxDecoration(),
                      //color: Colors.amber,
                      child: const TimeDemo()),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 60,
                width: 350,
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(iconcolor),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          const RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero,
                      ))),
                  onPressed: () {
                    // Navigator.of(context)
                    //     .push(MaterialPageRoute(builder: (context) {
                    //   return ListDemo();
                    // }));
                  },
                  child: const Text(
                    "Submit",
                    style: TextStyle(
                      color: textcolor,
                    ),
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

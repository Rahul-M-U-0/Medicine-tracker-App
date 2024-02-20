import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:medicine_app/components/add_dossage.dart';
import 'package:medicine_app/pages/schedule.dart';

import 'package:medicine_app/constants/Colorcode.dart';
import 'package:dropdown_search/dropdown_search.dart';

class AddMedicine extends StatefulWidget {
  const AddMedicine({
    super.key,
    required this.decription,
    this.leadback = false,
  });
  final String decription;
  final bool leadback;
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
  final _dateController = TextEditingController();
  final _timeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
        backgroundColor: bgcolor,
        appBar: AppBar(
          backgroundColor: const Color(0xff04516f),
          automaticallyImplyLeading: widget.leadback,
          title: Row(
            children: [
              const SizedBox(
                width: 10,
              ),
              CircleAvatar(
                radius: 22,
                backgroundColor: Colors.white60,
                child: Image.asset(
                  "assets/images/pillspng.png",
                  scale: 10,
                ),
              ),
              SizedBox(
                width: screenSize.width * 0.25,
              ),
              const Text(
                "Capsule",
                style: TextStyle(
                  fontSize: 20,
                  color: textcolor,
                ),
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Text(
                  widget.decription,
                  style: const TextStyle(
                    color: textcolor,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                // start
                Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    border: Border.all(
                      color: Colors.grey, // Change this to the color you want
                      width: 1, // Change this to the width you want
                    ),
                  ),
                  child: Theme(
                    data: Theme.of(context)
                        .copyWith(cardColor: const Color(0xff04516f)),
                    child: ExpansionPanelList(
                      expandIconColor: iconcolor,
                      expansionCallback: (int index, bool isExpanded) {
                        setState(() {
                          _isExpanded = !_isExpanded;
                        });
                      },
                      children: [
                        ExpansionPanel(
                            isExpanded: _isExpanded,
                            headerBuilder:
                                (BuildContext context, bool isExpanded) {
                              return const ListTile(
                                //tileColor: Colors.amber,
                                title: Text(
                                  "Medication",
                                  style: TextStyle(color: textcolor),
                                ),
                              );
                            },
                            body: Container(
                              decoration: const BoxDecoration(
                                  color: Colors.transparent),
                              padding: const EdgeInsets.all(10),
                              child: Column(
                                children: [
                                  TextFormField(
                                    decoration: const InputDecoration(
                                        labelText: "Medicine Name",
                                        labelStyle:
                                            TextStyle(color: textcolor)),
                                  ),
                                  const SizedBox(
                                    height: 18,
                                  ),
                                  TextFormField(
                                    decoration: const InputDecoration(
                                        labelText: "Description",
                                        labelStyle:
                                            TextStyle(color: textcolor)),
                                  ),
                                ],
                              ),
                            ))
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const SizedBox(
                  height: 60,
                  width: double.infinity,
                  child: AddDosage(),
                ),
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
                        hintText: "Medicine type",
                        hintStyle: TextStyle(color: textcolor),
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
                        .map(
                          (menu) => DropdownMenuItem(
                            value: menu,
                            child: Text(
                              menu,
                              style: const TextStyle(
                                color: textcolor,
                              ),
                            ),
                          ),
                        )
                        .toList(),
                    onChanged: (menu) {
                      selectedItem = menu;
                    }),
                const SizedBox(
                  height: 30,
                ),
                const Row(
                  children: [
                    Text(
                      "Set Reminders",
                      style: TextStyle(color: textcolor),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: _dateController,
                  readOnly: true,
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      hintText: "Select Date",
                      hintStyle: const TextStyle(
                        color: textcolor,
                      ),
                      suffixIcon: IconButton(
                          onPressed: () async {
                            final DateTime? date = await showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(2000),
                                lastDate: DateTime(2028));
                            final formatteddate = DateFormat(
                              "dd-MM-yyyy",
                            ).format(date!);
                            setState(() {
                              _dateController.text = formatteddate.toString();
                            });
                          },
                          icon: const Icon(
                            Icons.calendar_month,
                            color: iconcolor,
                          ))),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: _timeController,
                  readOnly: true,
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                  decoration: InputDecoration(
                    hintText: "Select Time",
                    hintStyle: const TextStyle(color: textcolor),
                    border: const OutlineInputBorder(),
                    suffixIcon: IconButton(
                      onPressed: () async {
                        TimeOfDay? time = await showTimePicker(
                            context: context, initialTime: TimeOfDay.now());
                        setState(() {
                          _timeController.text = time!.format(context);
                        });
                      },
                      icon: const Icon(
                        Icons.alarm,
                        color: iconcolor,
                      ),
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
                    style: ElevatedButton.styleFrom(
                      backgroundColor: iconcolor,
                    ),
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) {
                            return const Schedules();
                          },
                        ),
                      );
                    },
                    child: const Text(
                      "Submit",
                      style: TextStyle(
                        color: textcolor,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        ));
  }
}

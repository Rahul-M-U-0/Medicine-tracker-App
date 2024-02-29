import 'package:flutter/material.dart';
import 'package:medicine_app/dummy_data/medicines.dart';
import 'package:medicine_app/pages/user/add_medicine_page.dart';
import 'package:medicine_app/pages/user/schedule.dart';

class Medication extends StatefulWidget {
  const Medication({super.key});

  @override
  State<Medication> createState() => _MedicationState();
}

class _MedicationState extends State<Medication> {
  bool flag = false;

  @override
  Widget build(BuildContext context) {
    setState(() {
      flag = medicines.isEmpty;
    });
    return SafeArea(
      child: Scaffold(
        body: flag
            ? const AddMedicine(
                decription: 'Add Medicine',
              )
            : const Schedules(),
      ),
    );
  }
}

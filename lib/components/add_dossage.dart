import 'package:flutter/material.dart';
import 'package:medicine_app/components/numbers_demo.dart';
import 'package:medicine_app/constants/Colorcode.dart';

class AddDosage extends StatefulWidget {
  const AddDosage({super.key});

  @override
  State<AddDosage> createState() => _AddDosageState();
}

class _AddDosageState extends State<AddDosage> {
  var _selectedNumber = 0;
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            const RoundedRectangleBorder()),
        elevation: MaterialStateProperty.all(0),
      ),
      onPressed: () {
        showDialog(
          context: context,
          builder: (_) => AlertDialog(
            title: const Text(
              "Dosage",
              style: TextStyle(),
            ),
            content: Numbersdemo(
                initialvalue: _selectedNumber,
                min: 0,
                max: 31,
                step: 1,
                onchanged: (value) {
                  setState(() {
                    _selectedNumber = value;
                  });
                }),
          ),
        );
      },
      child: Row(
        children: [
          Text(
            _selectedNumber == 0
                ? "Add Dosage"
                : _selectedNumber.toString(), // value ? value : days
            style: const TextStyle(color: textcolor),
          ),
        ],
      ),
    );
  }
}

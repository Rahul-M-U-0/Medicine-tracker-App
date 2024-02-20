import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:medicine_app/constants/Colorcode.dart';
import 'package:medicine_app/pages/add_medicine_page.dart';

class Schedules extends StatefulWidget {
  const Schedules({super.key});

  @override
  State<Schedules> createState() => _SchedulesState();
}

class _SchedulesState extends State<Schedules> {
  List<int> item = List<int>.generate(10, (index) => index);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgcolor,
      appBar: AppBar(
        backgroundColor: bgcolor,
        title: const Text(
          "Medicines",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: textcolor,
          ),
        ),
        centerTitle: true,
        elevation: 0,
        automaticallyImplyLeading: false,
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: 16,
          padding: const EdgeInsets.symmetric(vertical: 16),
          itemBuilder: (context, index) {
            return Slidable(
              endActionPane:
                  ActionPane(motion: const StretchMotion(), children: [
                SlidableAction(
                  onPressed: ((context) {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return const AddMedicine(decription: "Edit Medication");
                    }));
                  }),
                  backgroundColor: iconcolor,
                  icon: Icons.edit,
                ),
                SlidableAction(
                  onPressed: ((context) {}),
                  backgroundColor: iconcolor,
                  icon: Icons.delete,
                ),
              ]),
              child: ListTile(
                trailing: Column(
                  children: [
                    Text(
                      "Time $index",
                      style: const TextStyle(color: textcolor),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Date $index",
                      style: const TextStyle(color: textcolor),
                    ),
                  ],
                ),
                leading: CircleAvatar(
                  radius: 22,
                  backgroundColor: Colors.white60,
                  child: Image.asset(
                    "assets/images/pillspng.png",
                  ),
                ),
                title: Text(
                  "Medicine name$index",
                  style: const TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: textcolor),
                ),
                subtitle: const Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "dosage",
                      style: TextStyle(fontSize: 17, color: textcolor),
                    ),
                    Text(
                      "discription",
                      style: TextStyle(fontSize: 17, color: textcolor),
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
      floatingActionButton: SizedBox(
        width: 100,
        child: FloatingActionButton.extended(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) {
                  return const AddMedicine(
                    decription: "New Medication",
                    leadback: true,
                  );
                },
              ),
            );
          },
          label: const Text(
            "Add",
            style: TextStyle(color: Colors.white),
          ),
          icon: const Icon(
            Icons.add,
            size: 30,
            color: Colors.white,
          ),
          backgroundColor: const Color(0xff15c79a),
        ),
      ),
    );
  }
}

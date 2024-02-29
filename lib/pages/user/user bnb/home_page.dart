import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_timeline_calendar/timeline/flutter_timeline_calendar.dart';
import 'package:medicine_app/constants/Colorcode.dart';
import 'package:medicine_app/dummy_data/medicines.dart';
import 'package:medicine_app/pages/user/add_medicine_page.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                height: screenSize.height * 0.5,
                color: const Color(0xff04516f),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 70, left: 20),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 30,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Hello,",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                              SizedBox(
                                height: 1,
                              ),
                              Text(
                                "Jhon",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          height: screenSize.height * 0.2,
                          width: screenSize.height * 0.2,
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(0, 255, 193, 7),
                            image: DecorationImage(
                              image: AssetImage("assets/images/medicine.png"),
                              scale: 1,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                top: screenSize.height * 0.33,
                child: Container(
                  height: screenSize.height * 0.9,
                  width: screenSize.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Container(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        height: screenSize.height * 0.2,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(40),
                          ),
                          color: Colors.white,
                        ),
                        child: TimelineCalendar(
                          calendarType: CalendarType.GREGORIAN,
                          calendarLanguage: "en",
                          calendarOptions: CalendarOptions(
                            viewType: ViewType.DAILY,
                            headerMonthElevation: 0,
                            headerMonthShadowColor: Colors.black26,
                            headerMonthBackColor: Colors.transparent,
                          ),
                          dayOptions: DayOptions(
                              compactMode: true,
                              weekDaySelectedColor: const Color(0xff3AC3E2),
                              disableDaysBeforeNow: true),
                          headerOptions: HeaderOptions(
                              weekDayStringType: WeekDayStringTypes.SHORT,
                              monthStringType: MonthStringTypes.FULL,
                              backgroundColor:
                                  const Color.fromARGB(255, 255, 255, 255),
                              headerTextColor: Colors.black),
                          onChangeDateTime: (datetime) {},
                        ),
                      ),
                      if (medicines.isEmpty)
                        Column(
                          children: [
                            Column(
                              children: [
                                Container(
                                  height: 100,
                                  width: 100,
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(0, 255, 255, 255),
                                    image: DecorationImage(
                                      image: AssetImage(
                                        "assets/images/clock.png",
                                      ),
                                    ),
                                  ),
                                ),
                                const Text(
                                  "No Reminder added",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      if (medicines.isNotEmpty)
                        SizedBox(
                          width: double.infinity,
                          height: screenSize.height * 0.5,
                          child: ListView.builder(
                            itemCount: medicines.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 20,
                                  vertical: 5,
                                ),
                                child: Slidable(
                                  endActionPane: ActionPane(
                                    motion: const StretchMotion(),
                                    children: [
                                      SlidableAction(
                                        onPressed: (context) {
                                          Navigator.of(context).push(
                                            MaterialPageRoute(
                                              builder: (context) {
                                                return const AddMedicine(
                                                  decription: "Edit Medication",
                                                  leadback: true,
                                                );
                                              },
                                            ),
                                          );
                                        },
                                        backgroundColor: iconcolor,
                                        icon: Icons.edit,
                                      ),
                                      SlidableAction(
                                        onPressed: ((context) {}),
                                        backgroundColor: iconcolor,
                                        icon: Icons.delete,
                                      ),
                                    ],
                                  ),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: bgcolor,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: ListTile(
                                      tileColor: bgcolor,
                                      trailing: Column(
                                        children: [
                                          Text(
                                            "Time $index",
                                            style: const TextStyle(
                                                color: textcolor),
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            "Date $index",
                                            style: const TextStyle(
                                                color: textcolor),
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
                                        medicines[index].name,
                                        style: const TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.bold,
                                            color: textcolor),
                                      ),
                                      subtitle: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            medicines[index].dosage.toString(),
                                            style: const TextStyle(
                                              fontSize: 17,
                                              color: textcolor,
                                            ),
                                          ),
                                          Text(
                                            medicines[index].description,
                                            style: const TextStyle(
                                                fontSize: 17, color: textcolor),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        )
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

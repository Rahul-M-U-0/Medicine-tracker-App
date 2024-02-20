import 'package:flutter/material.dart';
import 'package:flutter_timeline_calendar/timeline/flutter_timeline_calendar.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
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
                          toggleViewType: true,
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
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

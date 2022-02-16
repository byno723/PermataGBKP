import 'package:flutter/material.dart';
import 'package:flutter_neat_and_clean_calendar/flutter_neat_and_clean_calendar.dart';
import 'package:flutter_neat_and_clean_calendar/neat_and_clean_calendar_event.dart';
import 'package:permata/theme.dart';

class AcaraPage extends StatelessWidget {
  const AcaraPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Map<DateTime, List<NeatCleanCalendarEvent>> _events = {
      DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day): [
        NeatCleanCalendarEvent('Event A',
            startTime: DateTime(DateTime.now().year, DateTime.now().month,
                DateTime.now().day, 10, 0),
            endTime: DateTime(DateTime.now().year, DateTime.now().month,
                DateTime.now().day, 12, 0),
            description: 'A special event',
            color: Colors.blue[700]),
      ],
      DateTime(
          DateTime.now().year, DateTime.now().month, DateTime.now().day + 2): [
        NeatCleanCalendarEvent('Event B',
            startTime: DateTime(DateTime.now().year, DateTime.now().month,
                DateTime.now().day + 2, 10, 0),
            endTime: DateTime(DateTime.now().year, DateTime.now().month,
                DateTime.now().day + 2, 12, 0),
            color: Colors.orange),
        NeatCleanCalendarEvent('Event C',
            startTime: DateTime(DateTime.now().year, DateTime.now().month,
                DateTime.now().day + 2, 14, 30),
            endTime: DateTime(DateTime.now().year, DateTime.now().month,
                DateTime.now().day + 2, 17, 0),
            color: Colors.pink),
      ],
    };

    header() {
      return AppBar(
        backgroundColor: primaryColor,
        centerTitle: true,
        title: Text('Acara Permata',
            style:
                secondaryTextStyle.copyWith(fontWeight: regular, fontSize: 16)),
        elevation: 0,
      );
    }

    Widget calender() {
      return Calendar(
        startOnMonday: true,
        weekDays: [
          'Minggu',
          'Senin',
          'Seleasa',
          'Rabu',
          'Kamis',
          'Jum\'at',
          'Sabtu'
        ],
        events: _events,
        isExpandable: true,
        eventDoneColor: Colors.green,
        selectedColor: Colors.pink,
        todayColor: Colors.blue,
        // dayBuilder: (BuildContext context, DateTime day) {
        //   return new Text("!");
        // },
        // eventListBuilder: (BuildContext context,
        //     List<NeatCleanCalendarEvent> _selectesdEvents) {
        //   return new Text("tess");
        // },

        eventColor: Colors.grey,
        locale: 'ind_DE',
        todayButtonText: 'Hari Ini',
        expandableDateFormat: 'EEEE, dd. MMMM yyyy',
        dayOfWeekStyle: TextStyle(
            color: Colors.black, fontWeight: FontWeight.w800, fontSize: 11),
      );
    }

    return Scaffold(
      appBar: header(),
      body: Container(
        margin: EdgeInsets.only(top: 20),
        child: calender(),
      ),
    );
  }
}

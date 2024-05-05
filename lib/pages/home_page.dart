import 'package:flutter/material.dart';
import 'package:flutter_application_1/const/const_colors.dart';
import 'package:flutter_application_1/data/list_of_notes.dart';
import 'package:flutter_application_1/pages/add_note.dart';
import 'package:flutter_application_1/widgets/custom_card_widget.dart';
import 'package:flutter_application_1/widgets/custom_text_widget.dart';

// import 'package:flutter_svg/flutter_svg.dart';
class HomePage extends StatelessWidget {
  static const String id = "/home_page";

  // String name;
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          actions: const [
            Padding(
              padding: EdgeInsets.all(15),
              child: Icon(
                Icons.calendar_month,
                color: Colors.white,
              ),
            )
          ],
          backgroundColor: AppColor.c93,
          title: const CustomTextWidget(
            title: 'TODO APP',
            color: Colors.white,
          )),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
            itemCount: listOfNotes.length,
            itemBuilder: (context, i) {
              return CustomCardWidget(
                noteModel: listOfNotes[i],
              );
            }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, AddNote.id);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

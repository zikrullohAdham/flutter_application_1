import 'package:flutter/material.dart';
import 'package:flutter_application_1/const/const_colors.dart';
import 'package:flutter_application_1/data/list_of_notes.dart';
import 'package:flutter_application_1/models/note_model.dart';
import 'package:flutter_application_1/pages/home_page.dart';
import 'package:flutter_application_1/widgets/custom_text_widget.dart';

enum Category { daily, monthly, weekly }

class AddNote extends StatefulWidget {
  static const String id = "/add_note";

  const AddNote({super.key});

  @override
  State<AddNote> createState() => _AddNoteState();
}

class _AddNoteState extends State<AddNote> {
  final TextEditingController titleController = TextEditingController();

  final TextEditingController descController = TextEditingController();

  bool isVisible = false;

  void add(BuildContext context,
      {required String title, required String desc}) {
    if (title.isNotEmpty && desc.isNotEmpty) {
      NoteModel newNote = NoteModel(title: title, descr: desc);
      // listOfNotes.add(newNote);
      listOfNotes.insert(0, newNote);
      Navigator.pushNamed(context, HomePage.id);
    } else {
      setState(() {
        isVisible = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColor.c93,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Visibility(
                  visible: isVisible,
                  child: const CustomTextWidget(
                    title: 'The title or detail is empty!',
                    customFontSize: 15,
                    color: Colors.red,
                  )),
              TextField(
                controller: titleController,
                decoration: const InputDecoration(hintText: 'Title'),
              ),
              TextField(
                controller: descController,
                decoration: const InputDecoration(hintText: 'Detail'),
              ),
              SizedBox(
                height: 20,
              ),
              MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                height: 65,
                minWidth: double.infinity,
                color: AppColor.c93,
                onPressed: () {
                  add(
                      title: titleController.text,
                      desc: descController.text,
                      context);
                },
                child: CustomTextWidget(
                  title: 'ADD',
                ),
              )
            ],
          ),
        ));
  }
}

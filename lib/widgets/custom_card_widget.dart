import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/note_model.dart';
import 'package:flutter_application_1/widgets/custom_text_widget.dart';

class CustomCardWidget extends StatelessWidget {
  final NoteModel noteModel;
  const CustomCardWidget({
    super.key,
    required this.noteModel
  });

  @override
  Widget build(BuildContext context) {
    return  Card(
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                CustomTextWidget(title: noteModel.title,
                ),
                CustomTextWidget(title: noteModel.descr,
                customFontSize: 15,
              ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.edit),
                SizedBox(width: 10,),
                Icon(Icons.delete),
                SizedBox(width: 10,),
                Icon(Icons.done),
              ],
            )
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_button.dart';
import 'package:notes_app/views/widgets/custoum_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CustoumTextField(hint: 'Title'),
          CustoumTextField(hint: 'description', maxLines: 6),
          SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: CustomButton(),
          ),
          SizedBox(height: 50),
        ],
      ),
    );
  }
}

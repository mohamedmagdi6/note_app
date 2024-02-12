import 'package:flutter/material.dart';
import 'custom_button.dart';
import 'custom_form_text_field.dart';

class AddNotesForm extends StatefulWidget {
  const AddNotesForm({
    super.key,
  });

  @override
  State<AddNotesForm> createState() => _AddNotesFormState();
}

class _AddNotesFormState extends State<AddNotesForm> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String? title, subTitle;
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: autovalidateMode,
      key: formKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              CustomFormTextField(
                onSaved: (value) {
                  title = value;
                },
                hintText: 'Title',
              ),
              const SizedBox(
                height: 15,
              ),
              CustomFormTextField(
                onSaved: (value) {
                  subTitle = value;
                },
                hintText: 'Content',
                maxLine: 5,
              ),
              const SizedBox(
                height: 50,
              ),
              CustomButton(
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
                buttonName: 'Add',
              ),
              const SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:garrage_nepal/models/todo.dart';
import 'package:garrage_nepal/pages/providers/todo_provider.dart';

class InputWidgets extends StatefulWidget {
  const InputWidgets({super.key});

  @override
  State<InputWidgets> createState() => _InputWidgetsState();
}

class _InputWidgetsState extends State<InputWidgets> {
  final _formKey = GlobalKey<FormBuilderState>(); // Corrected camel case for naming conventions

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) => FormBuilder(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FormBuilderTextField(
              name: "todo",
              decoration: const InputDecoration(
                labelText: "What do you want to do?",
                border: OutlineInputBorder(), // Added a border for better UI
              ),
              validator: FormBuilderValidators.compose([
                FormBuilderValidators.required(errorText: "This field is required."),
                FormBuilderValidators.minLength(7, errorText: "Must be at least 7 characters long."),
              ]),
              onSubmitted: (val) {
                if (val?.isNotEmpty == true) {
                  ref.read(todoProvider.notifier).addTodo(Todo.add(val!)); // Uncommented and improved logic
                  _formKey.currentState!.reset(); // Reset form after adding
                }
              },
            ),
            const SizedBox(height: 20), // Added spacing between the input and button
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.saveAndValidate(focusOnInvalid: true)) {
                  final formData = _formKey.currentState!.value;
                  final todoValue = formData["todo"];
                  ref.read(todoProvider.notifier).addTodo(Todo.add(todoValue)); // Add todo from validated form data
                  _formKey.currentState!.reset(); // Reset form after submission
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Todo added successfully!")),
                  );
                }
              },
              child: const Text("Submit"),
            ),
          ],
        ),
      ),
    );
  }
}

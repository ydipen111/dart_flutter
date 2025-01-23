import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class FormPage extends StatefulWidget {
  const FormPage({super.key});

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  final _formKey = GlobalKey<FormBuilderState>();
  List<Map<String, dynamic>> data = [];  // List to store the form submissions as Maps
  AutovalidateMode _mode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Form Page')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: FormBuilder(
          key: _formKey,
          autovalidateMode: _mode,
          child: ListView(
            children: [
              // Title input
              FormBuilderTextField(
                name: 'Title1',  // Changed name for uniqueness
                decoration: const InputDecoration(
                  label: Text('Title'),
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20),

              // About Us input
              FormBuilderTextField(
                name: 'Title2',  // Changed name for uniqueness
                decoration: const InputDecoration(
                  label: Text('About Us'),
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20),

              // Number input
              FormBuilderTextField(
                name: 'Number',
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  label: Text('Number'),
                  border: OutlineInputBorder(),
                ),
                validator: FormBuilderValidators.compose([
                  FormBuilderValidators.required(),
                ]),
              ),
              const SizedBox(height: 20),

              // Submit Button
              ElevatedButton(
                onPressed: () {
                  FocusScope.of(context).unfocus();
                  if (_formKey.currentState!.saveAndValidate(focusOnInvalid: false)) {
                    final map = _formKey.currentState?.value;
                    setState(() {
                      data.add(map!); // Add the form data as a new entry in the data array
                    });
                    print("Form Submitted: $map");  // Show form data in console
                  } else {
                    print("Invalid form");
                  }
                },
                child: const Text('Submit'),
              ),
              const SizedBox(height: 20),

              // Display the form data after each submission
              // Display the form data after each submission
              if (data.isNotEmpty)
                ...data.asMap().entries.map((entry) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Entry ${entry.key}:', style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                      ...entry.value.entries.map((e) => Text('  ${e.key}: ${e.value}', style: const TextStyle(fontSize: 16))).toList(),
                    ],
                  ),
                )).toList(),
            ],
          ),
        ),
      ),
    );
  }
}

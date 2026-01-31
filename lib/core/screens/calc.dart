import 'package:bmi_1/core/shared/elevated_button.dart';
import 'package:bmi_1/core/shared/fields.dart';
import 'package:bmi_1/core/themes/app_themes.dart';
import 'package:bmi_1/core/widgets/gender_containers.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:intl/intl.dart';

class Calc extends StatefulWidget {
  const Calc({super.key});

  @override
  State<Calc> createState() => _CalcState();
}

class _CalcState extends State<Calc> {
  TextEditingController nameController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TextEditingController heightController = TextEditingController();
  TextEditingController weightController = TextEditingController();
  String? selectedGender;
  final String appName = "BMI";
  final String name = "Name";
  final String chooseDate = "BirthDate";
  final String chooseHeight = "Your Height (cm)";
  final String chooseWeight = "YourWeight (kg)";

  @override
  void dispose() {
    nameController.dispose();
    dateController.dispose();
    super.dispose();
  }

  Future<void> _selectDate(BuildContext context) async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
    );

    if (pickedDate != null) {
      String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
      setState(() {
        dateController.text = formattedDate;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 90.0),
          child: Text(appName, style: TextStyleApp.calcAppName),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(height: 40),
              Align(
                alignment: Alignment.topLeft,
                child: Text(name, style: TextStyleApp.fieldsName),
              ),
              SizedBox(height: 10),
              NameFormField(nameController: nameController),
              SizedBox(height: 20),
              Align(
                alignment: Alignment.topLeft,
                child: Text(chooseDate, style: TextStyleApp.fieldsName),
              ),
              SizedBox(height: 10),
              TextFormField(
                controller: dateController,
                readOnly: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  suffixIcon: Icon(Icons.calendar_today),
                ),
                onTap: () {
                  _selectDate(context);
                },
              ),
              SizedBox(height: 20),
              Align(
                alignment: Alignment.topLeft,
                child: Text("Choose Gender", style: TextStyleApp.fieldsName),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  SizedBox(width: 56),
                  MaleContainer(),
                  SizedBox(width: 60),
                  FemaleContainer(),
                ],
              ),
              const SizedBox(height: 20),
              Align(
                alignment: Alignment.topLeft,
                child: Text(chooseHeight, style: TextStyleApp.fieldsName),
              ),
              const SizedBox(height: 10),
              HeightFormField(heightController: heightController),
              const SizedBox(height: 20),
              Align(
                alignment: Alignment.topLeft,
                child: Text(chooseWeight, style: TextStyleApp.fieldsName),
              ),
              const SizedBox(height: 10),
              WeightFormField(weightController: weightController),
              const SizedBox(height: 90),
              SizedBox(
                height: 50,
                width: 300,
                child: CalcElevatedButtonWidget(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

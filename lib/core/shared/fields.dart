import 'package:bmi_1/core/themes/app_themes.dart';
import 'package:flutter/material.dart';

class NameFormField extends StatelessWidget {
  const NameFormField({super.key, required this.nameController});

  final TextEditingController nameController;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.name,
      controller: nameController,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}

class HeightFormField extends StatefulWidget {
  const HeightFormField({super.key, required this.heightController});

  final TextEditingController heightController;

  @override
  State<HeightFormField> createState() => _HeightFormFieldState();
}

class _HeightFormFieldState extends State<HeightFormField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.number,
      controller: widget.heightController,
      decoration: InputDecoration(
        prefixIcon: GestureDetector(
          onTap: () {
            setState(() {
              int value = int.tryParse(widget.heightController.text) ?? 0;
              value--;
              widget.heightController.text = value.toString();
            });
          },
          child: Icon(Icons.remove, size: 30, color: AppColors.iconColor),
        ),
        suffixIcon: GestureDetector(
          onTap: () {
            setState(() {
              int heightvalue = int.tryParse(widget.heightController.text) ?? 0;
              heightvalue++;
              widget.heightController.text = heightvalue.toString();
            });
          },
          child: Icon(Icons.add, size: 30, color: AppColors.iconColor),
        ),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}

class WeightFormField extends StatefulWidget {
  const WeightFormField({super.key, required this.weightController});

  final TextEditingController weightController;
  @override
  State<WeightFormField> createState() => _WeightFormFieldState();
}

class _WeightFormFieldState extends State<WeightFormField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.number,
      controller: widget.weightController,
      decoration: InputDecoration(
        prefixIcon: GestureDetector(
          onTap: () {
            setState(() {
              int weightValue = int.tryParse(widget.weightController.text) ?? 0;
              weightValue--;
              widget.weightController.text = weightValue.toString();
            });
          },
          child: Icon(Icons.remove, size: 30, color: AppColors.iconColor),
        ),
        suffixIcon: GestureDetector(
          onTap: () {
            setState(() {
              int value = int.tryParse(widget.weightController.text) ?? 0;
              value++;
              widget.weightController.text = value.toString();
            });
          },
          child: Icon(Icons.add, size: 30, color: AppColors.iconColor),
        ),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}

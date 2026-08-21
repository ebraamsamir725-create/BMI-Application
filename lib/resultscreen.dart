import 'package:flutter/material.dart';
import 'dart:math';

class Resultscreen extends StatefulWidget {
  const Resultscreen({
    super.key,
    required this.height,
    required this.Weight,
    required this.age,
    required this.gender, // 🟢 أضفنا استقبال متغير النوع هنا
  });

  final double height;
  final int Weight;
  final int age;
  final String gender; // male أو female

  @override
  State<Resultscreen> createState() => _ResultscreenState();
}

class _ResultscreenState extends State<Resultscreen> {
  // دالة حساب الـ BMI
  double calculateBMI() {
    double heightInMeters = widget.height / 100;
    return widget.Weight / pow(heightInMeters, 2);
  }

  // دالة تحديد نص الحالة
  String getResultText(double bmi) {
    if (bmi >= 25) return "زيادة في الوزن";
    if (bmi >= 18.5) return "وزن مثالي";
    return "نقص في الوزن";
  }

  // دالة تحديد لون الحالة
  Color getResultColor(double bmi) {
    if (bmi >= 25) return Colors.redAccent;
    if (bmi >= 18.5) return Colors.greenAccent;
    return Colors.amberAccent;
  }

  @override
  Widget build(BuildContext context) {
    double bmiResult = calculateBMI();

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 24, 23, 23),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 40, 39, 39),
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          "BMI Result",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            color: Colors.white,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            // 1. كارت عرض النتيجة الكبيرة والحالة الصحية
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 4, 27, 68),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      getResultText(bmiResult).toUpperCase(),
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: getResultColor(bmiResult),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      bmiResult.toStringAsFixed(1),
                      style: const TextStyle(
                        fontSize: 80,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),

            // 2. كروت عرض البيانات المدخلة (النوع، الطول، الوزن، العمر)
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 40, 39, 39),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  const Text(
                    "البيانات المدخلة",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Divider(color: Colors.grey, height: 25),

                  // الصف الأول: النوع والطول
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _buildDataColumn(
                        "النوع",
                        widget.gender == "male" ? "ذكر" : "أنثى",
                      ),
                      _buildDataColumn("الطول", "${widget.height.toInt()} سم"),
                    ],
                  ),
                  const SizedBox(height: 20),

                  // الصف الثاني: الوزن والعمر
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _buildDataColumn("الوزن", "${widget.Weight} كجم"),
                      _buildDataColumn("العمر", "${widget.age} سنة"),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }

  // ويدجت مساعدة مخصصة لتنسيق وعرض عناصر البيانات بشكل مكرر ونظيف
  Widget _buildDataColumn(String title, String value) {
    return Column(
      children: [
        Text(
          title,
          style: const TextStyle(color: Colors.white54, fontSize: 16),
        ),
        const SizedBox(height: 5),
        Text(
          value,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:test1/SCreen.dart';
import 'package:test1/resultscreen.dart';

void main() {
  runApp(appBarr());
}

class appBarr extends StatefulWidget {
  const appBarr({super.key});
  static String gender = "male";
  static double height = 160;
  static int weight = 50;
  static int age = 20;

  @override
  State<appBarr> createState() => _appBarrState();
}

class _appBarrState extends State<appBarr> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 40, 39, 39),
          centerTitle: true,
          title: Text(
            "BMI APP",
            style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                const Color.fromARGB(255, 44, 45, 45),
                const Color.fromARGB(255, 5, 50, 87),
              ],
            ),
          ),
          child: Column(
            children: [
              Padding(padding: EdgeInsets.only(left: 20, right: 20)),
              const SizedBox(height: 20),
              Row(
                children: [
                  Expanded(child: myapp(gender: "male")),
                  SizedBox(width: 20),
                  Expanded(child: myapp(gender: "female")),
                ],
              ),
              const SizedBox(height: 40),
              const heightt(),
              Spacer(),
              Row(
                children: [
                  Expanded(child: mweight(w_a: "wheight")),
                  SizedBox(width: 20),
                  Expanded(child: mweight(w_a: "age")),
                ],
              ),
              Spacer(),

              // تم إضافة Builder هنا لتوفير السياق الصحيح لطريقتك البسيطة
              Builder(
                builder: (BuildContext innerContext) {
                  return SizedBox(
                    height: 75,
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(
                          255,
                          107,
                          196,
                          244,
                        ),
                      ),
                      onPressed: () {
                        // الآن طريقتك البسيطة تعمل 100% باستخدام innerContext
                        Navigator.push(
                          innerContext,
                          MaterialPageRoute(
                            builder: (context) => Resultscreen(
                              height: appBarr.height,
                              Weight: appBarr.weight,
                              age: appBarr.age,
                              gender: appBarr
                                  .gender, // 👈 أضف هذا السطر لتمرير النوع بنجاح
                            ),
                          ),
                        );
                      },
                      child: Text(
                        "operate",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

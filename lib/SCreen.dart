import 'package:flutter/material.dart';
import 'package:test1/main.dart'; // 🟢 أضفنا هذا السطر فقط بالأعلى لربط الملفين ببعض

class myapp extends StatefulWidget {
  const myapp({super.key, required this.gender});
  final String gender;

  @override
  State<myapp> createState() => _myappState();
}

class _myappState extends State<myapp> {
  bool gendcheck_m = false;

  @override
  Widget build(BuildContext context) {
    bool isSelected =
        (widget.gender.toLowerCase() == "male" && gendcheck_m) ||
        (widget.gender.toLowerCase() == "female" && !gendcheck_m);

    return InkWell(
      onTap: () {
        setState(() {
          if (widget.gender.toLowerCase() == "male") {
            gendcheck_m = false;
            appBarr.gender = "male"; 
            print(gendcheck_m);
          } else {
            gendcheck_m = true;
            appBarr.gender = "female"; // 
            print(gendcheck_m);
          }
        });
      },
      child: Container(
        height: 150,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: const Color.fromARGB(255, 56, 62, 65),
          gradient: LinearGradient(
            colors: [
              const Color.fromARGB(255, 4, 27, 68),
              const Color.fromARGB(255, 24, 23, 23),
            ],
          ),
        ),
        child: Icon(
          widget.gender.toLowerCase() == 'male' ? Icons.male : Icons.female,
          size: 70,
          color: Colors.white,
        ),
      ),
    );
  }
}

class heightt extends StatefulWidget {
  const heightt({super.key});

  @override
  State<heightt> createState() => _heighttState();
}

class _heighttState extends State<heightt> {
  double slidd = 160;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        gradient: LinearGradient(
          colors: [
            const Color.fromARGB(255, 4, 27, 68),
            const Color.fromARGB(255, 24, 23, 23),
          ],
        ),
      ),
      child: Column(
        children: [
          Padding(padding: EdgeInsetsGeometry.all(20)),
          Text(
            "HEIGHT : ${slidd.toInt()}",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.white,
            ),
          ),
          Slider(
            value: slidd,
            min: 100,
            max: 220,
            activeColor: Colors.red,
            inactiveColor: Colors.grey,
            onChanged: (double newvalue) {
              setState(() {
                slidd = newvalue;
                appBarr.height =
                    newvalue; // 👈 هذا السطر الذي قمت أنت بإضافته وهو صحيح تماماً
              });
            },
          ),
        ],
      ),
    );
  }
}

class mweight extends StatefulWidget {
  const mweight({super.key, required this.w_a});
  final String w_a;
  @override
  State<mweight> createState() => _mweightState();
}

class _mweightState extends State<mweight> {
  int count = 50;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        gradient: LinearGradient(
          colors: [
            const Color.fromARGB(255, 4, 27, 68),
            const Color.fromARGB(255, 24, 23, 23),
          ],
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "${widget.w_a.toUpperCase()} : $count",
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                style: IconButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 56, 62, 65),
                ),
                onPressed: () {
                  setState(() {
                    if (count > 1) {
                      count--;
                      // 👈 أضفنا فحص نوع العداد هنا لتحديث الوزن أو العمر الرئيسي عند النقصان
                      if (widget.w_a == "wheight") {
                        appBarr.weight = count;
                      } else if (widget.w_a == "age") {
                        appBarr.age = count;
                      }
                    }
                  });
                },
                icon: const Icon(Icons.remove, color: Colors.white),
              ),
              const SizedBox(width: 15),
              IconButton(
                style: IconButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 56, 62, 65),
                ),
                onPressed: () {
                  setState(() {
                    count++;
                    // 👈 أضفنا فحص نوع العداد هنا لتحديث الوزن أو العمر الرئيسي عند الزيادة
                    if (widget.w_a == "wheight") {
                      appBarr.weight = count;
                    } else if (widget.w_a == "age") {
                      appBarr.age = count;
                    }
                  });
                },
                icon: const Icon(Icons.add, color: Colors.white),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

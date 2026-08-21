/**import 'package:flutter/material.dart';

class cards extends StatelessWidget {
  const cards({super.key, required this.imaGe});
  final String imaGe;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: EdgeInsetsDirectional.only(
          top: 50,
          bottom: 30,
          start: 10,
          end: 10,
        ),
        height: 250,
        width: double
            .infinity, // يضمن أن الكونتينر يأخذ أقصى عرض متاح له من الشاشة
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          gradient: const LinearGradient(
            colors: [Colors.blue, Colors.purple],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        // استخدمنا ClipRRect لقص حواف الصورة لتطابق انحناء الكونتينر
        child: ClipRRect(
          borderRadius: BorderRadius.circular(25), // نفس قيمة انحناء الكونتينر
          child: Image.network(
            imaGe,
            fit: BoxFit.fill,
            width: double.infinity, // يجبر الصورة على ملء كامل عرض الكونتينر
            height:
                double.infinity, // يجبر الصورة على ملء كامل ارتفاع الكونتينر
          ),
        ),
      ),
    );
  }
}

class iconss extends StatelessWidget {
  const iconss({super.key, required this.icoons});
  final String icoons;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: Image.network(icoons, width: 50, height: 50),
    );
  }
}

class cardsfor extends StatelessWidget {
  const cardsfor({super.key, required this.immage, required this.describtion});
  final String immage;
  final String describtion;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: 150,
      margin: EdgeInsets.only(top: 50),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
      child: Column(children: [Image.network(immage), Text(describtion)]),
    );
  }
}
 */

import 'package:flutter/material.dart';

class cards extends StatelessWidget {
  const cards({super.key, required this.imaGe});
  final String imaGe;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        // margin: EdgeInsets.only(top: 50),
        height: 250,
        // تم تغيير double.infinity إلى عرض محدد ليناسب التمرير الأفقي داخل PageView
        width: 350,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          gradient: const LinearGradient(
            colors: [Colors.blue, Colors.purple],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(25),
          child: Image.network(
            imaGe,
            fit: BoxFit
                .cover, // تم تعديله إلى cover لتبدو الصورة بشكل أفضل دون مطّ
            width: double.infinity,
            height: double.infinity,
          ),
        ),
      ),
    );
  }
}

class iconss extends StatelessWidget {
  const iconss({super.key, required this.icoons});
  final String icoons;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: Image.network(
        icoons,
        width: 50,
        height: 50,
        // لتفادي أي خطأ إذا لم يحمل رابط الصورة
        errorBuilder: (context, error, stackTrace) =>
            const Icon(Icons.broken_image),
      ),
    );
  }
}

class cardsfor extends StatelessWidget {
  const cardsfor({super.key, required this.immage, required this.describtion});
  final String immage;
  final String describtion;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200, // تم زيادة العرض ليتناسب مع حجم المحتوى والـ PageView
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Colors.grey[200], // إضافة خلفية خفيفة لتتضح معالم الكرت
      ),
      // استخدمنا ClipRRect هنا أيضاً لقص حواف الصورة العلوية لتناسب الكرت
      child: ClipRRect(
        borderRadius: BorderRadius.circular(25),
        child: Column(
          children: [
            Expanded(
              child: Image.network(
                immage,
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                describtion,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

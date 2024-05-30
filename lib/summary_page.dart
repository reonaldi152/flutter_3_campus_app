import 'package:flutter/material.dart';

import 'menu_page.dart';

class SummaryPage extends StatefulWidget {
  SummaryPage({super.key, this.image, this.title});
  dynamic image;
  dynamic title;

  @override
  State<SummaryPage> createState() => _SummaryPageState();
}

class _SummaryPageState extends State<SummaryPage> {
  bool isChecked = false, isPurchase = false, isAlerrgies = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
            onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const MenuPage(),
                )),
            icon: const Icon(
              Icons.menu,
              color: Colors.white,
            )),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Image.asset(
              "assets/person.png",
              width: 36,
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Summary of\nyour tour to\nCampus ${widget.title}",
                  style: const TextStyle(color: Colors.white),
                ),
                const Spacer(),
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    widget.image,
                    fit: BoxFit.fitHeight,
                    height: 200,
                    width: 120,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 26),
            const Text(
              "Do you want to purchase meals?",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
            ),
            Switch(

              value: isPurchase,
              activeColor: Colors.white,
              activeTrackColor: Colors.amber,
              onChanged: (bool value) {
                setState(() {
                  isPurchase = value;
                });
              },
            ),
            const Text(
              "Do you have alergies?",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
            ),
            Switch(
              value: isAlerrgies,
              activeColor: Colors.white,
              activeTrackColor: Colors.amber,
              onChanged: (bool value) {
                setState(() {
                  isAlerrgies = value;
                });
              },
            ),
            const Text(
              "Terms and Conditions",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
            ),
            Row(
              children: [
                Checkbox(
                  value: isChecked,
                  onChanged: (value) {
                    setState(() {
                      isChecked = value!;
                    });
                  },
                ),
                const Text(
                  "By Clicking this button you are accepting our\nterms and conditions",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 26),
            Container(
              width: double.infinity,
              height: 40,
              decoration: BoxDecoration(
                  color: Colors.amber, borderRadius: BorderRadius.circular(8)),
              child: const Center(
                child: Text(
                  "Confirm Booking",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

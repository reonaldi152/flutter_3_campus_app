import 'package:flutter/material.dart';
import 'package:flutter_3_campus_app/trip_detail.dart';

import 'menu_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
            onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const MenuPage(),)),
            icon: Icon(
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                children: [
                  Text(
                    "Explore",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w800,
                      fontSize: 40,
                    ),
                  ),
                  Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: Colors.white,
                  )
                ],
              ),
              const SizedBox(height: 12),
              GestureDetector(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TripDetail(
                          image: "assets/unpam.jpg",
                          title: "UNPAM",
                          desc:
                              "Universitas Pamulang disingkat UNPAM adalah salah satu perguruan tinggi swasta terbesar di Banten. Universitas Pamulang merupakan perguruan tinggi yang dikelola oleh Yayasan Sasmita Jaya yang didirikan oleh Dr. H. Darsono."),
                    )),
                child: SizedBox(
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(
                          "assets/unpam.jpg",
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(height: 8),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "UNPAM",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              fontSize: 20,
                            ),
                          ),
                          Icon(
                            Icons.save,
                            color: Colors.white,
                          )
                        ],
                      ),
                      const Text(
                        "Universitas Pamulang disingkat UNPAM adalah salah satu perguruan tinggi swasta terbesar di Banten. Universitas Pamulang merupakan perguruan tinggi yang dikelola oleh Yayasan Sasmita Jaya yang didirikan oleh Dr. H. Darsono.",
                        style: TextStyle(color: Colors.white),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 28),
              GestureDetector(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TripDetail(
                        image: "assets/ITI.jpg",
                        title: "ITI",
                        desc:
                            "Institut Teknologi Indonesia didirikan pada tahun 1984 atas inisiatif Prof. Dr. Ing. BJ. Habibie, Dr. Ir. Hartarto dan Dr. Ir. GM Tampubolon atas dasar hasil konggres Persatuan Insinyur Indonesia (PII) tahun 1983 di Palembang.",
                      ),
                    )),
                child: SizedBox(
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(
                          "assets/ITI.jpg",
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(height: 8),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "ITI",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              fontSize: 20,
                            ),
                          ),
                          Icon(
                            Icons.save,
                            color: Colors.white,
                          )
                        ],
                      ),
                      const Text(
                        "Institut Teknologi Indonesia didirikan pada tahun 1984 atas inisiatif Prof. Dr. Ing. BJ. Habibie, Dr. Ir. Hartarto dan Dr. Ir. GM Tampubolon atas dasar hasil konggres Persatuan Insinyur Indonesia (PII) tahun 1983 di Palembang.",
                        style: TextStyle(color: Colors.white),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

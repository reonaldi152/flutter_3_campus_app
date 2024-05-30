import 'package:flutter/material.dart';
import 'package:flutter_3_campus_app/menu_page.dart';
import 'package:flutter_3_campus_app/summary_page.dart';

class TripDetail extends StatefulWidget {
  TripDetail({super.key, this.title, this.desc, this.image});
  dynamic image;
  dynamic title;
  dynamic desc;

  @override
  State<TripDetail> createState() => _TripDetailState();
}

class _TripDetailState extends State<TripDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
            onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const MenuPage(),)),
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
      body: Column(
        children: [
          Image.asset(
            widget.image,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.title,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                      ),
                    ),
                    const Icon(
                      Icons.save,
                      color: Colors.white,
                    )
                  ],
                ),
                const SizedBox(height: 16),
                const Text(
                  "Institut Teknologi Indonesia didirikan pada tahun 1984 atas inisiatif Prof. Dr. Ing. BJ. Habibie, Dr. Ir. Hartarto dan Dr. Ir. GM Tampubolon atas dasar hasil konggres Persatuan Insinyur Indonesia (PII) tahun 1983 di Palembang.",
                  style: TextStyle(color: Colors.white),
                ),
                const SizedBox(height: 26),
                InkWell(
                  onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => SummaryPage(title: widget.title, image: widget.image,),)),
                  child: Container(
                    width: double.infinity,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(8)
                    ),
                    child: const Center(
                      child: Text("Tour to this Campus", style: TextStyle(color: Colors.white),),
                    ),
                  ),
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}

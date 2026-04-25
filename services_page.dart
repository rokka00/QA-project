import 'package:flutter/material.dart';

class ServicesPage extends StatelessWidget {
  const ServicesPage({super.key});

  static const Color mainRed = Color(0xFFA20F14);
  static const Color darkRed = Color(0xFF5A0000);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: mainRed,
        centerTitle: true,
        title: const Text("Salahny", style: TextStyle(color: Colors.black)),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 12),
            child: Icon(Icons.person_outline, color: Colors.grey),
          )
        ],
      ),

      body: Column(
        children: [

          const SizedBox(height: 10),

          const Text(
            "Services",
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
          ),

          const SizedBox(height: 20),

          // دائرة اللوجو (Text بدل صورة)
          Container(
            width: 180,
            height: 180,
            decoration: const BoxDecoration(
              color: Colors.black,
              shape: BoxShape.circle,
            ),
            child: const Center(
              child: Text(
                "SALAHNY",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),

          const SizedBox(height: 25),

          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 30,
                children: const [

                  ServiceItem(
                    icon: Icons.build,
                    title: "Repair Service",
                  ),

                  ServiceItem(
                    icon: Icons.tire_repair,
                    title: "Tyre Service",
                  ),

                  ServiceItem(
                    icon: Icons.battery_charging_full,
                    title: "Battery Service",
                  ),

                  ServiceItem(
                    icon: Icons.oil_barrel,
                    title: "Oil Change",
                  ),

                  ServiceItem(
                    icon: Icons.local_car_wash,
                    title: "Wash Service",
                  ),

                  ServiceItem(
                    icon: Icons.car_repair,
                    title: "Recovery Service",
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ServiceItem extends StatelessWidget {
  final IconData icon;
  final String title;

  const ServiceItem({
    super.key,
    required this.icon,
    required this.title,
  });

  static const Color darkRed = Color(0xFF5A0000);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, size: 70, color: darkRed),
        const SizedBox(height: 10),
        Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: darkRed,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
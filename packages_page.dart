import 'package:flutter/material.dart';

class PackagesPage extends StatelessWidget {
  const PackagesPage({super.key});

  static const Color mainRed = Color(0xFFA20F14);
  static const Color darkRed = Color(0xFF5A0000);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),

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

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            const Center(
              child: Text(
                "Packages",
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
            ),

            const SizedBox(height: 10),

            const Center(
              child: Text(
                "PRICE LIST",
                style: TextStyle(
                  fontSize: 40,
                  color: darkRed,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 30),

            // Standard
            packageCard(
              price: "500 LE",
              title: "Standard",
              features: [
                "2 Car wash",
                "3 Times check up",
                "5 Liters Fuel",
                "Valid for 3 months",
                "1 Car Included",
              ],
            ),

            const SizedBox(height: 20),

            // Premium
            packageCard(
              price: "1600 LE",
              title: "Premium",
              features: [
                "15 Car wash",
                "3 Monthly check up",
                "2 Cars Included",
                "10 Liters Fuel",
                "Valid for 1 year",
              ],
            ),

            const SizedBox(height: 20),

            // Gold
            packageCard(
              price: "2700 LE",
              title: "Gold",
              features: [
                "Unlimited Car wash",
                "Monthly check up",
                "3 Cars Included",
                "1 Tow Truck Request",
                "20 Liters Fuel",
                "Valid for 2 years",
              ],
            ),

            const SizedBox(height: 30),

            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: mainRed,
                  padding:
                  const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                ),
                onPressed: () {},
                child: const Text(
                  "Select Your Plan",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget packageCard({
    required String price,
    required String title,
    required List<String> features,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        // Price Box
        Container(
          width: 90,
          height: 90,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            border: Border.all(color: darkRed),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Text(
            price,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: darkRed,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),

        const SizedBox(width: 15),

        // Details
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 28,
                  color: darkRed,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 5),
              ...features.map(
                    (f) => Text(
                  "• $f",
                  style: const TextStyle(fontSize: 14),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
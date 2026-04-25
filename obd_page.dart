import 'package:flutter/material.dart';

class ObdPage extends StatelessWidget {
  const ObdPage({super.key});

  static const Color mainRed = Color(0xFFA20F14);

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
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [

            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "OBD Data Upload",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),

            const SizedBox(height: 15),

            // Top Card
            Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [

                  Row(
                    children: const [
                      Icon(Icons.cloud_upload, size: 35),
                      SizedBox(width: 10),
                      Text("Upload OBD File",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),

                  const SizedBox(height: 10),

                  const Divider(),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text("Customer Name\nCar Model"),
                      Icon(Icons.info_outline),
                    ],
                  ),

                  const SizedBox(height: 10),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text("Customer Name\nCar Model"),
                      Icon(Icons.info_outline),
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            Row(
              children: [

                // Upload box
                Expanded(
                  child: Container(
                    height: 120,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Center(
                      child: Text("Upload your file here"),
                    ),
                  ),
                ),

                const SizedBox(width: 10),

                // Data box
                Expanded(
                  child: Container(
                    height: 120,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Row(
                          children: [
                            Icon(Icons.thermostat),
                            SizedBox(width: 5),
                            Text("ECT"),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.speed),
                            SizedBox(width: 5),
                            Text("Speed"),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.av_timer),
                            SizedBox(width: 5),
                            Text("RPM"),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            const Spacer(),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: mainRed,
                padding:
                const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
              ),
              onPressed: () {},
              child: const Text(
                "Send For AI Prediction",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
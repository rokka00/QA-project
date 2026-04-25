import 'package:flutter/material.dart';

class RepairStatusPage extends StatelessWidget {
  const RepairStatusPage({super.key});

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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            const Text(
              "Repair Status Update",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 20),

            const Text(
              "Detected Issues",
              style: TextStyle(
                fontSize: 18,
                color: mainRed,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 15),

            Row(
              children: const [
                Icon(Icons.timelapse),
                SizedBox(width: 10),
                Text("In Progress"),
              ],
            ),

            const SizedBox(height: 10),

            Row(
              children: const [
                Icon(Icons.warning, color: Colors.orange),
                SizedBox(width: 10),
                Text("Waiting for Parts"),
              ],
            ),

            const SizedBox(height: 15),

            const Text("Engine Misfire"),
            const Divider(),
            const Text("Engine Misfire"),
            const Divider(),
            const Text("Engine Misfire"),

            const SizedBox(height: 20),

            const Text(
              "Technician’s Notes",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 10),

            const Text(
              "Started working on worn brake pads and a weak battery. "
                  "Parts are now ordered and expected to arrive tomorrow afternoon.",
            ),

            const SizedBox(height: 15),

            const Icon(Icons.build, size: 80, color: Colors.grey),

            const Spacer(),

            Row(
              children: [

                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: mainRed,
                      padding: const EdgeInsets.symmetric(vertical: 14),
                    ),
                    onPressed: () {},
                    child: const Text(
                      "Notify Driver",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),

                const SizedBox(width: 15),

                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      padding: const EdgeInsets.symmetric(vertical: 14),
                    ),
                    onPressed: () {},
                    child: const Text(
                      "Start Repair",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
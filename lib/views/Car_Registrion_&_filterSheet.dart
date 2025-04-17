import 'package:drivelar_hand_off/viewModels/Registrion_widget/PolicyDetailsBottomSheet.dart';
import 'package:drivelar_hand_off/viewModels/Registrion_widget/VehicleCard.dart';
import 'package:flutter/material.dart';

class CarRegistrionFiltersheet extends StatefulWidget {
  const CarRegistrionFiltersheet({super.key});

  @override
  State<CarRegistrionFiltersheet> createState() =>
      _CarRegistrionFiltersheetState();
}

class _CarRegistrionFiltersheetState extends State<CarRegistrionFiltersheet> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  bool isActive = false;
  String? selectedPlateLimit;

  final List<Map<String, String>> vehicleData = [
    {
      'plate': 'BG 23233',
      'license': '65489785',
      'vin': '1234567890',
      'expire': '26-12-26',
    },
    {
      'plate': 'BG 23233',
      'license': '65489785',
      'vin': '1234567890',
      'expire': '26-12-26',
    },
    {
      'plate': 'BG 23233',
      'license': '65489785',
      'vin': '1234567890',
      'expire': '26-12-26',
    },
  ];
  void _showUserDetails(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          insetPadding: const EdgeInsets.all(16),
          child: Container(
            width: 360,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Stack(
              children: [
                SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _infoRow("User Name", "Shofi Uddin"),
                      _infoRow("Plate Number", "T124317c"),
                      _infoRow("Vehicle License Number", "6055856"),
                      _infoRow("License Type", "For Hire Vehicle"),
                      _infoRow("Expiration Date", "02-02-2025"),
                      _infoRow("Permit License Number", "N/A"),
                      _infoRow("Vehicle Year", "2024"),
                      _infoRow("Base Number", "B02902"),
                      _infoRow("Base Name", "NY Car & Limo Services INC"),
                      _infoRow("Base Type", "Black-Car"),
                      _infoRow(
                        "Base Address",
                        "71-16,35 Avenue,\nJackson Heights\nNY-11372",
                      ),
                      _infoRow("Last Update", "02-02-2025"),
                      const SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () => Navigator.of(context).pop(),
                        child: const Text("Close"),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  child: IconButton(
                    icon: const Icon(Icons.close),
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _infoRow(String title, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 140,
            child: Text(
              "$title:",
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(child: Text(value)),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        key: _scaffoldKey,
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: BoxDecoration(color: Colors.pink),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.white,
                      child: Icon(Icons.person, size: 30, color: Colors.pink),
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Admin Panel",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ],
                ),
              ),

              Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.dashboard),
                    title: Text("Dashboard"),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(Icons.card_giftcard),
                    title: Text("Package"),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(Icons.people),
                    title: Text("User Management"),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(Icons.attach_money),
                    title: Text("Transaction"),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(Icons.dashboard),
                    title: Text("Dashboard"),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(Icons.restaurant),
                    title: Text("Plates"),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(Icons.qr_code_scanner),
                    title: Text("Tic"),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(Icons.app_registration),
                    title: Text("Registration"),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(Icons.confirmation_number),
                    title: Text("Ticket"),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(Icons.security),
                    title: Text("Insurance"),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(Icons.error),
                    title: Text("Error Logs"),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(Icons.settings),
                    title: Text("Account Setting"),
                    onTap: () {},
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(Icons.logout),
                    title: Text("Logout", style: TextStyle(color: Colors.red)),
                    onTap: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
        body: Column(
          children: [
            // Top bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    "images/drivelaar/drivelaar without back 1.png",
                    height: 40,
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.notifications, color: Colors.pink),
                      ),
                      const CircleAvatar(
                        backgroundImage: AssetImage(
                          "images/drivelaar/a-l-l-e-f-v-i-n-i-c-i-u-s-343875-unsplash.png",
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // Search bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      _scaffoldKey.currentState?.openDrawer();
                    },
                    icon: Icon(Icons.menu, color: Colors.black),
                  ),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search',
                        prefixIcon: const Icon(Icons.search),
                        filled: true,
                        fillColor: Colors.white,
                        contentPadding: const EdgeInsets.symmetric(
                          vertical: 0,
                          horizontal: 16,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Title
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Create Package',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
            ),

            // ListView inside Flexible
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.all(16),
                itemCount: vehicleData.length,
                itemBuilder: (context, index) {
                  return VehicleCard(
                    plate: vehicleData[index]['plate']!,
                    license: vehicleData[index]['license']!,
                    vin: vehicleData[index]['vin']!,
                    expire: vehicleData[index]['expire']!,
                    onDelete: () {
                      setState(() {
                        vehicleData.removeAt(index);
                      });
                    },
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () => _showUserDetails(context),
                    child: Text("Show Filter"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      showModalBottomSheet(
                        context: context,
                        isScrollControlled: true,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(20),
                          ),
                        ),
                        builder: (context) => PolicyDetailsBottomSheet(),
                      );
                    },
                    child: Text("Open Policy Details"),
                  ),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: Container(
          color: Colors.white,
          padding: const EdgeInsets.all(12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _statusBadge("390", Icons.list_alt),
              const SizedBox(width: 16),
              _statusBadge("924", Icons.favorite),
            ],
          ),
        ),
      ),
    );
  }

  Widget _statusBadge(String text, IconData icon) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: const Color(0xFF339CFF),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(width: 4),
          Icon(icon, color: Colors.white, size: 16),
        ],
      ),
    );
  }
}

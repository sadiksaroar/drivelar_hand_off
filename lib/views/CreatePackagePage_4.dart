import 'package:flutter/material.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  bool isActive = false;
  String? selectedPlateLimit;

  Widget buildCard(String title, String subtitle, IconData icon) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        contentPadding: const EdgeInsets.all(16),
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        subtitle: Text(subtitle),
        trailing: CircleAvatar(
          backgroundColor: Colors.pink.shade100,
          child: Icon(icon, color: Colors.pink),
        ),
      ),
    );
  }

  void onDrawerItemTap(String title) {
    Navigator.pop(context); // Close the drawer
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text("Navigating to $title")));
    // You can use Navigator.push() here for real navigation
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
                  // Menu Button to open drawer
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

            // Cards
            /// her this nex code for the page 4----
            ///
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Subscription Name",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8),
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Write here',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                    SizedBox(height: 8),
                    DropdownButtonFormField<String>(
                      value: selectedPlateLimit,
                      items:
                          ['Option 1', 'Option 2', 'Option 3']
                              .map(
                                (option) => DropdownMenuItem(
                                  child: Text(option),
                                  value: option,
                                ),
                              )
                              .toList(),
                      onChanged: (value) {
                        setState(() {
                          selectedPlateLimit = value;
                        });
                      },
                      decoration: InputDecoration(border: OutlineInputBorder()),
                    ),
                    SizedBox(height: 16),
                    Text(
                      "Price ",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8),
                    TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        prefixText: '\$ ',
                        hintText: 'Write here',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 16),

                    Text(
                      "Package Status",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        Switch(
                          value: isActive,
                          onChanged: (value) {
                            setState(() {
                              isActive = value;
                            });
                          },
                        ),
                        Text(isActive ? "Active" : "Inactive"),
                      ],
                    ),
                    SizedBox(height: 16),
                    Text(
                      "Description",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8),
                    TextField(
                      maxLines: 4,
                      maxLength: 250,
                      decoration: InputDecoration(
                        hintText: 'Write here',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 16),

                    Row(
                      children: [
                        Expanded(
                          child: OutlinedButton(
                            onPressed: () {},
                            child: Text("Cancel"),
                          ),
                        ),
                        SizedBox(width: 16),
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.pinkAccent,
                            ),
                            child: Text("Save"),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            //
          ],
        ),
      ),
    );
  }
}

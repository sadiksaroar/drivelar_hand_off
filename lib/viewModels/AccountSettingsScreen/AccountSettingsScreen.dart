import 'package:flutter/material.dart';

class AccountSettingsScreenModel extends StatefulWidget {
  @override
  _AccountSettingsScreenState createState() => _AccountSettingsScreenState();
}

class _AccountSettingsScreenState extends State<AccountSettingsScreenModel> {
  String accountStatus = "Deactivated";
  String? deactivateOption;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple.shade50,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Account Settings",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                elevation: 4,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage(
                              "assets/profile.jpg",
                            ), // Update this path
                          ),
                          Spacer(),
                          ElevatedButton(
                            onPressed: () {},
                            child: Text("Edit Profile"),
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      _buildInfoRow("Full Name", "Aklima akter"),
                      _buildInfoRow("Phone Number", "01234567890"),
                      _buildInfoRow("Email", "Aklimaakter@gmail.com"),
                      _buildInfoRow("Password", "•••••••002"),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 24),
              Text(
                "Account Status",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Radio<String>(
                    value: "Active",
                    groupValue: accountStatus,
                    onChanged: (value) {
                      setState(() {
                        accountStatus = value!;
                        deactivateOption = null;
                      });
                    },
                  ),
                  Text("Active"),
                  SizedBox(width: 20),
                  Radio<String>(
                    value: "Deactivated",
                    groupValue: accountStatus,
                    onChanged: (value) {
                      setState(() {
                        accountStatus = value!;
                      });
                    },
                  ),
                  Text("Deactivated"),
                ],
              ),
              if (accountStatus == "Deactivated") ...[
                const SizedBox(height: 10),
                DropdownButtonFormField<String>(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  hint: Text("Select Deactivation Duration"),
                  items:
                      ["1 week", "1 month", "Permanently"].map((String option) {
                        return DropdownMenuItem(
                          value: option,
                          child: Text(option),
                        );
                      }).toList(),
                  onChanged: (value) {
                    setState(() {
                      deactivateOption = value;
                    });
                  },
                ),
              ],
              Spacer(),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    // Add your deactivate or activate logic here
                  },
                  child: Text(
                    accountStatus == "Deactivated"
                        ? "Deactivate Profile"
                        : "Activate Profile",
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        accountStatus == "Deactivated"
                            ? Colors.pink
                            : Colors.green,
                    padding: EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInfoRow(String title, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "$title:",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              color: Colors.grey.shade700,
            ),
          ),
          Text(value, style: TextStyle(fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}

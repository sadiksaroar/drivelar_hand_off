import 'package:flutter/material.dart';

class VehicleCard extends StatelessWidget {
  final String plate;
  final String license;
  final String vin;
  final String expire;
  final VoidCallback onDelete;

  const VehicleCard({
    super.key,
    required this.plate,
    required this.license,
    required this.vin,
    required this.expire,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _infoRow("Plate Number", plate, isLink: true),
            _infoRow("License Number", license),
            _infoRow("VIN Number", vin),
            _infoRow("Diamond Expire Date", expire),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _actionButton(
                  Icons.edit,
                  "Edit",
                  Colors.grey.shade200,
                  Colors.black,
                ),
                _actionButton(
                  Icons.delete,
                  "Delete",
                  Colors.red.shade100,
                  Colors.red,
                  onDelete,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _infoRow(String label, String value, {bool isLink = false}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 6),
      child: Row(
        children: [
          Expanded(
            child: Text(
              label,
              style: const TextStyle(fontWeight: FontWeight.w500),
            ),
          ),
          isLink
              ? Text(
                value,
                style: const TextStyle(
                  color: Colors.blue,
                  decoration: TextDecoration.underline,
                ),
              )
              : Text(value),
        ],
      ),
    );
  }

  Widget _actionButton(
    IconData icon,
    String label,
    Color bgColor,
    Color textColor, [
    VoidCallback? onPressed,
  ]) {
    return ElevatedButton.icon(
      onPressed: onPressed ?? () {},
      icon: Icon(icon, color: textColor, size: 18),
      label: Text(label, style: TextStyle(color: textColor)),
      style: ElevatedButton.styleFrom(
        backgroundColor: bgColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
        elevation: 0,
      ),
    );
  }
}

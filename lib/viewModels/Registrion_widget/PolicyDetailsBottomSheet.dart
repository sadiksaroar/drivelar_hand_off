import 'package:flutter/material.dart';

class PolicyDetailsBottomSheet extends StatefulWidget {
  @override
  _PolicyDetailsBottomSheetState createState() =>
      _PolicyDetailsBottomSheetState();
}

class _PolicyDetailsBottomSheetState extends State<PolicyDetailsBottomSheet> {
  final TextEditingController policyController = TextEditingController(
    text: "2568457",
  );
  final TextEditingController expirationController = TextEditingController(
    text: "26-3-2025",
  );
  final TextEditingController paymentController = TextEditingController(
    text: "26-3-2025",
  );

  Future<void> _pickDate(TextEditingController controller) async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime(2025, 3, 26),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (picked != null) {
      setState(() {
        controller.text = "${picked.day}-${picked.month}-${picked.year}";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 16,
        right: 16,
        top: 20,
        bottom: MediaQuery.of(context).viewInsets.bottom + 20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  "Policy Details",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              IconButton(
                icon: Icon(Icons.close),
                onPressed: () => Navigator.pop(context),
              ),
            ],
          ),
          SizedBox(height: 16),
          TextField(
            controller: policyController,
            decoration: InputDecoration(
              labelText: "Policy Number",
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 12),
          TextField(
            controller: expirationController,
            decoration: InputDecoration(
              labelText: "Expiration Date",
              suffixIcon: Icon(Icons.calendar_today),
              border: OutlineInputBorder(),
            ),
            readOnly: true,
            onTap: () => _pickDate(expirationController),
          ),
          SizedBox(height: 12),
          TextField(
            controller: paymentController,
            decoration: InputDecoration(
              labelText: "Monthly Payment Date",
              suffixIcon: Icon(Icons.calendar_today),
              border: OutlineInputBorder(),
            ),
            readOnly: true,
            onTap: () => _pickDate(paymentController),
          ),
          SizedBox(height: 20),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.pinkAccent,
                padding: EdgeInsets.symmetric(vertical: 14),
              ),
              onPressed: () {
                // Handle update logic here
                Navigator.pop(context);
              },
              child: Text("Update", style: TextStyle(fontSize: 16)),
            ),
          ),
          SizedBox(height: 8),
          SizedBox(
            width: double.infinity,
            child: OutlinedButton(
              onPressed: () => Navigator.pop(context),
              child: Text("Cancel"),
            ),
          ),
        ],
      ),
    );
  }
}

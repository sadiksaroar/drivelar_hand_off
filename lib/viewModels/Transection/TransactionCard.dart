import 'package:flutter/material.dart';

class TransactionCard extends StatefulWidget {
  @override
  _TransactionCardState createState() => _TransactionCardState();
}

class _TransactionCardState extends State<TransactionCard> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 2,
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildRow("Date", "January 25, 2025"),
            buildRow("Amount", "\$25.00"),
            buildRow("Package", "2 Ticket"),
            buildRow("Payment Method", "Visa •••• 2468", isLink: true),
            buildRow("Email Address", "akash.islam@gmail.com"),
            if (_isExpanded)
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                  'Additional transaction notes or actions...',
                  style: TextStyle(color: Colors.grey[700]),
                ),
              ),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  setState(() {
                    _isExpanded = !_isExpanded;
                  });
                },
                child: Text(_isExpanded ? "Show Less" : "Show More"),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildRow(String label, String value, {bool isLink = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Text(label, style: TextStyle(fontWeight: FontWeight.w500)),
          ),
          Expanded(
            flex: 5,
            child:
                isLink
                    ? Text(
                      value,
                      style: TextStyle(
                        color: Colors.blue,
                        decoration: TextDecoration.underline,
                      ),
                    )
                    : Text(value),
          ),
        ],
      ),
    );
  }
}

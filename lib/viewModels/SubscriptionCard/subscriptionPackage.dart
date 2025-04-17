import 'package:flutter/material.dart';

class SubscriptionPackage extends StatelessWidget {
  const SubscriptionPackage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Center(
        child: Container(
          width: 350,
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: Colors.blue.shade100),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [Color(0xFFED1E79), Color(0xFF662D8C)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Text(
                  'Package 01',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Plate Limit: 02',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: Colors.black54,
                ),
              ),
              const SizedBox(height: 12),
              const Text(
                'This package for a driver & after the purchase they can enjoy the package',
                style: TextStyle(fontSize: 14),
              ),
              const SizedBox(height: 16),
              const Text(
                'Payment Method',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
              ),
              const Text('Visa: •••• 2468', style: TextStyle(fontSize: 14)),
              const SizedBox(height: 12),
              const Text(
                'Payment Date',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
              ),
              const Text('25 January 2025', style: TextStyle(fontSize: 14)),
              const SizedBox(height: 16),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Chip(
                    label: Text('356'),
                    backgroundColor: Color(0xFF007AFF),
                    labelStyle: TextStyle(color: Colors.white),
                  ),
                  SizedBox(width: 8),
                  Chip(
                    label: Text('339 Hug'),
                    backgroundColor: Color(0xFF007AFF),
                    labelStyle: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

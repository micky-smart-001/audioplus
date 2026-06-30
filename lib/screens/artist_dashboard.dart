import 'package:flutter/material.dart';

class AdminDashboard
    extends StatelessWidget {
  const AdminDashboard({
    super.key,
  });

  @override
  Widget build(
      BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            const Text(
          'Admin Dashboard',
        ),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        padding:
            const EdgeInsets.all(20),
        children: [

          Card(
            child: InkWell(
              onTap: () {},
              child: const Center(
                child: Text(
                  'Manage Users',
                ),
              ),
            ),
          ),

          Card(
            child: InkWell(
              onTap: () {},
              child: const Center(
                child: Text(
                  'Manage Songs',
                ),
              ),
            ),
          ),

          Card(
            child: InkWell(
              onTap: () {},
              child: const Center(
                child: Text(
                  'Reports',
                ),
              ),
            ),
          ),

          Card(
            child: InkWell(
              onTap: () {},
              child: const Center(
                child: Text(
                  'Analytics',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
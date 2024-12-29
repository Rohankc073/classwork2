import 'package:classwork2/view/area_of_circle_view.dart';
import 'package:classwork2/view/students_list_view.dart';
import 'package:flutter/material.dart';

import 'simple_interest_view.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Dashboard',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            childAspectRatio: 1.2,
          ),
          itemCount: 3,
          itemBuilder: (context, index) {
            final titles = [
              'Area of Circle',
              'Simple Interest',
              'Student List'
            ];
            final icons = [
              Icons.circle_outlined,
              Icons.money_outlined,
              Icons.people_alt_outlined,
            ];
            final destinations = [
              const AreaOfCircleView(),
              const SimpleInterestView(),
              const StudentListView(),
            ];

            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => destinations[index]),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      icons[index],
                      size: 60,
                      color: const Color(0xFF3579FF),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      titles[index],
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

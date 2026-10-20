import 'package:flutter/material.dart';

// ---------------------------------------------------------------------------
// EDIT YOUR DETAILS HERE
// Replace each placeholder value below with your own information.
// ---------------------------------------------------------------------------
const String _initials = 'AR';
const String _fullName = 'Angelo Ranes';
const String _course = 'BS Information Technology';
const String _studentNumber = '2026-534229';
const String _yearAndSection = '4th Year - CCE106(3450)';
const String _email = 'a.ranes.534229@umindanao.edu.ph';
const String _aboutMe =
    'I am an IT student who enjoys learning about technology and creating '
    'applications. My goal is to become a mobile developer.';
const List<String> _hobbies = ['Coding', 'Reading', 'Badminton'];

/// Builds the student profile interface.
class StudentProfilePage extends StatelessWidget {
  const StudentProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3F4F8),
      appBar: AppBar(
        title: const Text('Student Profile'),
        centerTitle: true,
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // Profile avatar.
                Center(
                  child: CircleAvatar(
                    radius: 55,
                    backgroundColor: Colors.indigo,
                    child: Text(
                      _initials,
                      style: const TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 16),

                // Student name and course.
                Text(
                  _fullName,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.indigo,
                  ),
                ),

                const SizedBox(height: 8),

                Text(
                  _course,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.black54,
                  ),
                ),

                const SizedBox(height: 24),

                // Student details.
                Card(
                  child: Column(
                    children: [
                      ListTile(
                        leading: const Icon(
                          Icons.badge,
                          color: Colors.indigo,
                        ),
                        title: const Text('Student Number'),
                        subtitle: Text(_studentNumber),
                      ),
                      const Divider(height: 1),
                      ListTile(
                        leading: const Icon(
                          Icons.school,
                          color: Colors.indigo,
                        ),
                        title: const Text('Year Level and Section'),
                        subtitle: Text(_yearAndSection),
                      ),
                      const Divider(height: 1),
                      ListTile(
                        leading: const Icon(
                          Icons.email,
                          color: Colors.indigo,
                        ),
                        title: const Text('Email Address'),
                        subtitle: Text(_email),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 24),

                // Introduction.
                const Text(
                  'About Me',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 8),

                Text(
                  _aboutMe,
                  style: const TextStyle(
                    fontSize: 16,
                    height: 1.5,
                  ),
                ),

                const SizedBox(height: 24),

                // Hobbies.
                const Text(
                  'Hobbies and Interests',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 8),

                Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: [
                    for (final hobby in _hobbies) Chip(label: Text(hobby)),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

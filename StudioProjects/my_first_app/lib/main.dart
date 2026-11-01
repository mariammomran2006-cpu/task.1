import 'package:flutter/material.dart';

void main() {
  runApp(const StudentIdApp());
}

class StudentIdApp extends StatelessWidget {
  const StudentIdApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Digital Student ID',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF253745)),
        useMaterial3: true,
      ),
      home: const StudentIdScreen(),
    );
  }
}

class StudentIdScreen extends StatelessWidget {
  const StudentIdScreen({super.key});

  Widget _buildSkillChip(String label) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 6.0),
      decoration: BoxDecoration(
        color: const Color(0xFFCCD0CF),
        borderRadius: BorderRadius.circular(20.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 4.0,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Text(
        label,
        style: const TextStyle(
          color: Color(0xFF06141B),
          fontWeight: FontWeight.bold,
          fontSize: 12.0,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF06141B),
      appBar: AppBar(
        title: const Text(
          'Digital Student ID',
          style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFFCCD0CF)),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF11212D),
        elevation: 3.0,
      ),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CircleAvatar(
                    radius: 48.0,
                    backgroundColor: Color(0xFF4A5C6A),
                    child: CircleAvatar(
                      radius: 45.0,
                      backgroundColor: Color(0xFFCCD0CF),
                      child: Icon(
                        Icons.person,
                        size: 50.0,
                        color: Color(0xFF06141B),
                      ),
                    ),
                  ),
                  const SizedBox(height: 12.0),
                  const Text(
                    'Mariem Omran',
                    style: TextStyle(
                      fontSize: 24.0,
                      color: Color(0xFFCCD0CF),
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.5,
                    ),
                  ),
                  const SizedBox(height: 4.0),
                  const Text(
                    'INFORMATION SYSTEM STUDENT',
                    style: TextStyle(
                      fontSize: 12.0,
                      color: Color(0xFF9BA8AB),
                      letterSpacing: 2.5,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 25.0,
                    width: 160.0,
                    child: Divider(
                      color: Color(0xFF4A5C6A),
                      thickness: 1.0,
                    ),
                  ),
                  Card(
                    color: const Color(0xFF11212D),
                    margin: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 24.0),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
                    child: const ListTile(
                      leading: Icon(Icons.school, color: Color(0xFF9BA8AB)),
                      title: Text(
                        'Faculty of Engineering - CCE Dept',
                        style: TextStyle(
                          color: Color(0xFFCCD0CF),
                          fontWeight: FontWeight.bold,
                          fontSize: 14.0,
                        ),
                      ),
                    ),
                  ),
                  Card(
                    color: const Color(0xFF11212D),
                    margin: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 24.0),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
                    child: const ListTile(
                      leading: Icon(Icons.badge, color: Color(0xFF9BA8AB)),
                      title: Text(
                        'Academic ID: 20240987',
                        style: TextStyle(
                          color: Color(0xFFCCD0CF),
                          fontWeight: FontWeight.bold,
                          fontSize: 14.0,
                        ),
                      ),
                    ),
                  ),
                  Card(
                    color: const Color(0xFF11212D),
                    margin: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 24.0),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
                    child: const ListTile(
                      leading: Icon(Icons.phone, color: Color(0xFF9BA8AB)),
                      title: Text(
                        '+20 1015789432',
                        style: TextStyle(
                          color: Color(0xFFCCD0CF),
                          fontWeight: FontWeight.bold,
                          fontSize: 14.0,
                        ),
                      ),
                    ),
                  ),
                  Card(
                    color: const Color(0xFF11212D),
                    margin: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 24.0),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
                    child: const ListTile(
                      leading: Icon(Icons.email, color: Color(0xFF9BA8AB)),
                      title: Text(
                        'student@university.edu.eg',
                        style: TextStyle(
                          color: Color(0xFFCCD0CF),
                          fontWeight: FontWeight.bold,
                          fontSize: 14.0,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildSkillChip('Dart'),
                      const SizedBox(width: 8.0),
                      _buildSkillChip('Flutter'),
                      const SizedBox(width: 8.0),
                      _buildSkillChip('Git & GitHub'),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: const Row(
                children: [
                  Icon(Icons.check_circle, color: Color(0xFF06141B)),
                  SizedBox(width: 8.0),
                  Text(
                    'Student ID Verified Successfully ✅',
                    style: TextStyle(color: Color(0xFF06141B), fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              backgroundColor: const Color(0xFFCCD0CF),
              behavior: SnackBarBehavior.floating,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              duration: const Duration(seconds: 2),
            ),
          );
        },
        backgroundColor: const Color(0xFFCCD0CF),
        icon: const Icon(Icons.qr_code_scanner, color: Color(0xFF06141B)),
        label: const Text(
          'Verify ID',
          style: TextStyle(
            color: Color(0xFF06141B),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
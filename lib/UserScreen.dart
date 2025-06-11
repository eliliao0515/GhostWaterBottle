import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class UserScreen extends StatefulWidget {
  const UserScreen({super.key});

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  final User? user = FirebaseAuth.instance.currentUser;

  Future<DocumentSnapshot<Map<String, dynamic>>> _getUserData() async {
    return await FirebaseFirestore.instance.collection('users').doc(user?.uid).get();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('帳號資訊')),
      body: FutureBuilder<DocumentSnapshot<Map<String, dynamic>>>(
        future: _getUserData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          if (!snapshot.hasData || !snapshot.data!.exists) {
            return const Center(child: Text('找不到使用者資料'));
          }

          final data = snapshot.data!.data()!;
          final profileImageUrl = data['profileImageUrl'] ?? 'assets/images/profile_placeholder.png';
          final description = data['description'] ?? '尚未設定描述';
          final dailyUsage = data['dailyUsage']?.toString() ?? '0';
          final monthlyUsage = data['monthlyUsage']?.toString() ?? '0';
          final rank = data['rank']?.toString() ?? 'N/A';

          return SingleChildScrollView(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: profileImageUrl.startsWith('http')
                      ? NetworkImage(profileImageUrl)
                      : AssetImage(profileImageUrl) as ImageProvider,
                ),
                const SizedBox(height: 12),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/editProfile');
                  },
                  child: const Text('編輯個人檔案'),
                ),
                const SizedBox(height: 20),

                Text(
                  description,
                  style: const TextStyle(fontSize: 16),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 30),

                Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.lightBlue.shade50,
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Colors.lightBlue),
                        ),
                        child: Column(
                          children: [
                            const Text('今日使用次數', style: TextStyle(fontSize: 14)),
                            const SizedBox(height: 8),
                            Text('$dailyUsage 次',
                                style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.green.shade50,
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Colors.green),
                        ),
                        child: Column(
                          children: [
                            const Text('本月使用次數', style: TextStyle(fontSize: 14)),
                            const SizedBox(height: 8),
                            Text('$monthlyUsage 次',
                                style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),

                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.orange.shade100,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    children: [
                      const Text('目前全站排名', style: TextStyle(fontSize: 14)),
                      const SizedBox(height: 8),
                      Text('第 $rank 名',
                          style: const TextStyle(fontSize: 26, fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../score_manager.dart';

class CommonLayout extends StatelessWidget {
  final Widget child;

  CommonLayout({required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(child: child),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Consumer<ScoreManager>(
              builder: (context, scoreManager, child) {
                return Text(
                  '내 보유 포인트: ${scoreManager.totalPoints}',
                  style: TextStyle(fontSize: 16, color: Colors.black),
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: Icon(Icons.home, size: 20),
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/home');
                  },
                ),
                IconButton(
                  icon: Icon(Icons.assignment, size: 20),
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/mission');
                  },
                ),
                IconButton(
                  icon: Icon(Icons.quiz, size: 20),
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/quiz');
                  },
                ),
                IconButton(
                  icon: Icon(Icons.local_florist, size: 20),
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/garden');
                  },
                ),
                IconButton(
                  icon: Icon(Icons.store, size: 20),
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/reward');
                  },
                ),
                IconButton(
                  icon: Icon(Icons.water_damage, size: 20),
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/water_usage');
                  },
                ),
                IconButton(
                  icon: Icon(Icons.map, size: 20),
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/map');
                  },
                ),
                IconButton(
                  icon: Icon(Icons.leaderboard, size: 20),
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/leaderboard');
                  },
                ),
                IconButton(
                  icon: Icon(Icons.login, size: 20),
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/login');
                  },
                ),
                IconButton(
                  icon: Icon(Icons.person, size: 20),
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/profile');
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

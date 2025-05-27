import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nested Navigation App',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: const TextTheme(
          bodyMedium: TextStyle(fontSize: 16),
        ),
      ),
      home: const HomeScreen(),
    );
  }
}

// Layar Utama
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Welcome to the App!',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SetupFlowScreen()),
                );
              },
              child: const Text('Start Setup Flow'),
            ),
          ],
        ),
      ),
    );
  }
}

// Alur Setup
class SetupFlowScreen extends StatefulWidget {
  const SetupFlowScreen({super.key});

  @override
  State<SetupFlowScreen> createState() => _SetupFlowScreenState();
}

class _SetupFlowScreenState extends State<SetupFlowScreen> {
  final _navigatorKey = GlobalKey<NavigatorState>();

  void _onDeviceFound() {
    _navigatorKey.currentState!.pushNamed('confirm_device');
  }

  void _onDeviceConfirmed() {
    _navigatorKey.currentState!.pushNamed('connect_device');
  }

  void _completeSetup(BuildContext context) {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Setup Flow'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Navigator(
        key: _navigatorKey,
        initialRoute: 'find_devices',
        onGenerateRoute: (settings) {
          Widget page;
          switch (settings.name) {
            case 'find_devices':
              page = FindDevicesScreen(onDeviceFound: _onDeviceFound);
              break;
            case 'confirm_device':
              page = ConfirmDeviceScreen(onConfirm: _onDeviceConfirmed);
              break;
            case 'connect_device':
              page = ConnectDeviceScreen(onSetupComplete: () => _completeSetup(context));
              break;
            default:
              page = FindDevicesScreen(onDeviceFound: _onDeviceFound);
          }
          return MaterialPageRoute(builder: (_) => page);
        },
      ),
    );
  }
}

// FindDevicesScreen
class FindDevicesScreen extends StatelessWidget {
  final VoidCallback onDeviceFound;

  const FindDevicesScreen({super.key, required this.onDeviceFound});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Finding Devices...',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: onDeviceFound,
            child: const Text('Device Found'),
          ),
        ],
      ),
    );
  }
}

// ConfirmDeviceScreen (baru)
class ConfirmDeviceScreen extends StatelessWidget {
  final VoidCallback onConfirm;

  const ConfirmDeviceScreen({super.key, required this.onConfirm});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Confirm Device?',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: onConfirm,
            child: const Text('Yes, Continue'),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context); // Kembali ke FindDevicesScreen
            },
            child: const Text('Back'),
          ),
        ],
      ),
    );
  }
}

// ConnectDeviceScreen
class ConnectDeviceScreen extends StatelessWidget {
  final VoidCallback onSetupComplete;

  const ConnectDeviceScreen({super.key, required this.onSetupComplete});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Connecting to Device...',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: onSetupComplete,
            child: const Text('Complete Setup'),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context); // Kembali ke ConfirmDeviceScreen
            },
            child: const Text('Back'),
          ),
        ],
      ),
    );
  }
}

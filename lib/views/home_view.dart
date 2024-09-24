import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_skeleton_application_improved/providers/supabase_auth.dart';
import 'package:flutter_skeleton_application_improved/views/settings_view.dart';

class HomeView extends ConsumerWidget {

  static const routeName = '/';

  const HomeView({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              // Navigate to the settings page. If the user leaves and returns
              // to the app after it has been killed while running in the
              // background, the navigation stack is restored.
              Navigator.restorablePushNamed(context, SettingsView.routeName);
            },
          ),
        ],
      ),
      body: Center(
        child: ElevatedButton(
                onPressed: () async {
                  final jsend = await ref.read(supabaseAuthProvider.notifier).signOut();
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(jsend.message ?? 'Signed out! No message available'),
                    ),
                  );
                },
          child: const Text('Sign Out'),
        ),
      ),
    );
  }
}
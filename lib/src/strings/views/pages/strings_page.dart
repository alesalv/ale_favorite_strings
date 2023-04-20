import 'package:flutter/material.dart';

import '../../../settings/settings_view.dart';
import 'all_strings_tab.dart';
import 'favorite_strings_tab.dart';

class StringsPage extends StatefulWidget {
  const StringsPage({super.key});

  static const routeName = '/strings';

  @override
  State<StringsPage> createState() => _StringsPageState();
}

class _StringsPageState extends State<StringsPage> {
  int _index = 0;

  void _updateIndex(int newIndex) {
    setState(() {
      _index = newIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favorite Strings'),
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
      body: IndexedStack(
        index: _index,
        children: const [
          AllStringsTab(),
          FavoriteStringsTab(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        onTap: _updateIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.list,
            ),
            label: 'All',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorites',
          ),
        ],
      ),
    );
  }
}

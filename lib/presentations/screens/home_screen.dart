import 'package:comic/presentations/providers/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final charactersState = ref.watch(charactersProvider);
    print(charactersState.characters);
    return Scaffold(
      appBar: AppBar(
        title: const Text('data'),
      ),
      body: ListView.builder(
        itemCount: charactersState.characters.length,
        itemBuilder: (context, index) {
          final character = charactersState.characters[index];
          return Text(character.name);
        },
      ),
    );
  }
}

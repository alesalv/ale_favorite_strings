import 'package:ale_favorite_strings/src/core/views/widgets/unfavorited_consumable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UnfavoritedIndicator extends ConsumerWidget {
  const UnfavoritedIndicator(this.provider, {super.key});

  final ProviderListenable<UnfavoritedConsumable> provider;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final title = ref.watch(provider.select((c) => c.unfavoritedTitle));

    if (title.isNotEmpty) {
      WidgetsBinding.instance.addPostFrameCallback(
          (final _) => _showSnackbar(context, ref, title));
    }
    return const SizedBox.shrink();
  }

  void _showSnackbar(BuildContext context, WidgetRef ref, String title) {
    final snackBar = SnackBar(
      duration: const Duration(seconds: 1),
      content: Text(title),
      action: SnackBarAction(
        label: 'Undo',
        onPressed: () => ref.read(provider).undo(title),
      ),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
    ref.read(provider).consumeTitle();
  }
}

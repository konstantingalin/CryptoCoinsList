import 'package:flutter/material.dart';

class CryptoCoinTile extends StatelessWidget {
  const CryptoCoinTile({
    super.key,
    required this.coinName,
    required this.coinPrice,
    required this.coinImg,
  });

  final String coinName;
  final String coinImg;
  final double coinPrice;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ListTile(
      trailing: const Icon(Icons.arrow_forward_ios),
      leading: Image.network(
        coinImg,
        height: 40,
        width: 40,
      ),
      title: Text(
        coinName,
        style: theme.textTheme.bodyMedium,
      ),
      subtitle: Text(
        '${coinPrice.toStringAsFixed(3)} \$',
        style: theme.textTheme.labelSmall,
      ),
      onTap: () {
        Navigator.of(context).pushNamed(
          '/coin',
          arguments: coinName,
        );
      },
    );
  }
}

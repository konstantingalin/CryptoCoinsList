import 'package:crypto_coins_list/features/crypto_list/widgets/widgets.dart';
import 'package:crypto_coins_list/repositories/crypto_coins/crypto_coins.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class CryptoListScreen extends StatefulWidget {
  const CryptoListScreen({
    super.key,
  });

  @override
  State<CryptoListScreen> createState() => _CryptoListScreenState();
}

class _CryptoListScreenState extends State<CryptoListScreen> {
  List<CryptoCoinModel>? _cryptoCoinsList;
  @override
  void initState() {
    _loadCryptoCoins();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CryptoCurrenciesList'),
      ),
      body: (_cryptoCoinsList == null)
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : ListView.separated(
              separatorBuilder: (context, index) => const Divider(
                color: Colors.white24,
              ),
              itemCount: _cryptoCoinsList!.length,
              itemBuilder: (context, i) {
                final coin = _cryptoCoinsList![i];
                final coinName = coin.name;
                return CryptoCoinTile(
                  coinName: coinName,
                  coinPrice: coin.priceUSD,
                  coinImg: coin.imageUrl,
                );
              },
            ),
    );
  }

  Future<void> _loadCryptoCoins() async {
    _cryptoCoinsList = await GetIt.I<AbstractCoinsRepository>().getCoinsList();

    setState(() {});
  }
}

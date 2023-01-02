import 'package:design_patterns/design_patterns/proxy/transfer_proxy.dart';
import 'package:flutter/material.dart';

class ProxyPage extends StatefulWidget {
  static const route = 'proxy-page';
  const ProxyPage({super.key});

  @override
  State<ProxyPage> createState() => _ProxyPageState();
}

class _ProxyPageState extends State<ProxyPage> {
  late TextEditingController amountController;
  TransferProxy transferProxy = TransferProxy();

  @override
  void initState() {
    amountController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    amountController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Proxy'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              controller: amountController,
              keyboardType: TextInputType.number,
              textInputAction: TextInputAction.done,
              textAlign: TextAlign.center,
              style: theme.textTheme.titleLarge,
              decoration: const InputDecoration(
                hintText: '\$0.00',
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            ElevatedButton(
                onPressed: () => showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: const Text('Information'),
                        content: Text(transferProxy.checkTransfer(
                            double.parse(amountController.value.text))),
                        actions: [
                          TextButton(
                            onPressed: () => Navigator.pop(context),
                            child: const Text('Ok'),
                          )
                        ],
                      ),
                    ),
                child: const Text('Transfer'))
          ],
        ),
      ),
    );
  }
}

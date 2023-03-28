import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../components/components.dart';
import 'finance_controller.dart';

class FinancePage extends GetView<FinanceController> {
  const FinancePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Financeiro'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 40),
              child: Text(
                'Faturas em aberto',
                style: Theme.of(context).textTheme.titleSmall,
              ),
            ),
            Container(
              padding: const EdgeInsets.only(bottom: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'Pedro Ramon',
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge
                            ?.copyWith(fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                      Text(
                        'Boleto 03/23',
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ],
                  ),
                  Text(
                    'Vencimento 15/03/2023',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  const SizedBox(height: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: CustomButtom(
                          onTap: () => {},
                          label: 'Pix',
                          icon: 'pix',
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: CustomButtom(
                          onTap: () => {},
                          label: 'Boleto',
                          icon: 'bar_code',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 24, bottom: 8),
              child: Text(
                'Faturas vencidas',
                style: Theme.of(context).textTheme.titleSmall,
              ),
            ),
            const InvoiceCard(
              user: 'Pedro Ramon',
              invoice: '03/23',
              paymentDate: '15/03/2023',
            ),
            const InvoiceCard(
              user: 'Pedro Ramon',
              invoice: '03/23',
              paymentDate: '15/04/2023',
            ),
            const InvoiceCard(
              user: 'Pedro Ramon',
              invoice: '03/23',
              paymentDate: '15/05/2023',
            ),
            const InvoiceCard(
              user: 'Pedro Ramon',
              invoice: '03/23',
              paymentDate: '15/06/2023',
            ),
          ],
        ),
      ),
    );
  }
}

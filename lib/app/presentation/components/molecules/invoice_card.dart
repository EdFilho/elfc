import 'package:flutter/material.dart';

import '../components.dart';

class InvoiceCard extends StatelessWidget {
  final String user, invoice, paymentDate;

  const InvoiceCard({
    super.key,
    required this.user,
    required this.invoice,
    required this.paymentDate,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 8, top: 16),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 1,
            color: Theme.of(context).colorScheme.primaryContainer,
          ),
        ),
      ),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 4),
                child: Text(
                  user,
                  style:
                      Theme.of(context).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.bold),
                ),
              ),
              Text(
                'Boleto $invoice',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              Text(
                'Vencimento $paymentDate',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ],
          ),
          const Spacer(),
          CustomIcon(
            icon: 'check_circular',
            color: Theme.of(context).colorScheme.surface,
          ),
        ],
      ),
    );
  }
}

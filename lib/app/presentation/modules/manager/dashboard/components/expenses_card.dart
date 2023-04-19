import 'package:flutter/material.dart';

import '../../../../components/components.dart';

class ExpensesCard extends StatelessWidget {
  const ExpensesCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.background,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Despesas',
            style: Theme.of(context).textTheme.titleSmall,
          ),
          Text(
            'Confira suas despesas mais recorrentes',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          const SizedBox(height: 16),
          PercentBar(
            value: 60,
            subtitle: 'Infraestrutura',
            color: Colors.deepPurple[300],
          ),
          PercentBar(
            value: 25,
            subtitle: 'Fornecedor',
            color: Colors.red[300],
          ),
          PercentBar(
            value: 15,
            subtitle: 'Equipamento',
            color: Colors.green[300],
          ),
        ],
      ),
    );
  }
}

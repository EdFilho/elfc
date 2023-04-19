import 'package:flutter/material.dart';

import '../../../../components/components.dart';

class ResumeCards extends StatelessWidget {
  const ResumeCards({super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: GridView.count(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        childAspectRatio: 2,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        crossAxisCount: 2,
        children: const <Widget>[
          AmountCard(
            title: 'Alunos',
            value: 100,
          ),
          AmountCard(
            title: 'Alunos novos',
            value: 100,
            isSelected: true,
          ),
          MoneyCard(
            title: 'Valores a receber',
            value: 10000,
          ),
          MoneyCard(
            title: 'Valores a pagar',
            value: 5000,
            isNegative: true,
          ),
        ],
      ),
    );
  }
}

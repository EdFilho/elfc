import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../components/atoms/finance_balance.dart';
import '../../../components/components.dart';
import 'components/components.dart';
import 'dashboard_controller.dart';

class DashboardPage extends GetView<DashboardController> {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        leading: InkWell(
          onTap: () => {},
          child: const CustomIcon(icon: 'menu'),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ResumeCards(),
              const SizedBox(height: 32),
              Row(
                children: [
                  Text('Balanço', style: Theme.of(context).textTheme.titleSmall),
                  const Spacer(),
                  const FinanceBalance(
                    value: 5000,
                  )
                ],
              ),
              const SizedBox(height: 32),
              const ExpensesCard(),
            ],
          ),
        ),
      ),
    );
  }
}

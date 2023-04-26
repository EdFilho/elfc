import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../components/components.dart';
import 'new_expense_controller.dart';

class NewExpensePage extends GetView<NewExpenseController> {
  const NewExpensePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: const Text('Nova despesa'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 32.0),
              Text(
                'Insira os dados da nova despesa',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(height: 16.0),
              CustomTextField(
                controller: controller.expenseTitle.value,
                label: 'Titulo',
              ),
              CustomTextField(
                controller: controller.expenseSupplier.value,
                label: 'Fornecedor',
              ),
              const SizedBox(height: 48.0),
              CustomButtom(onTap: () => {}, label: 'Salvar')
            ],
          ),
        ),
      ),
    );
  }
}

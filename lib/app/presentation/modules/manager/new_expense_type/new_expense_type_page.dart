import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../components/components.dart';
import 'new_expense_type_controller.dart';

class NewExpenseTypePage extends GetView<NewExpenseTypeController> {
  const NewExpenseTypePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: const Text('Tipos de despesas'),
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
                'Insira os dados do tipo de despesa',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(height: 16.0),
              CustomTextField(
                controller: controller.expenseTypeTitle.value,
                label: 'Titulo',
              ),
              CustomTextField(
                controller: controller.expenseTypeDescription.value,
                label: 'Descrição',
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

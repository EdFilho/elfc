import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../components/components.dart';
import 'new_supplier_controller.dart';

class NewSupplierPage extends GetView<NewSupplierController> {
  const NewSupplierPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: const Text('Novo Fornecedor'),
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
                'Insira os dados do seu fornecedor',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(height: 16.0),
              CustomTextField(
                controller: controller.supplierNameController.value,
                label: 'Fornecedor',
              ),
              CustomTextField(
                controller: controller.supplierDocController.value,
                label: 'CPF/CNPJ',
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

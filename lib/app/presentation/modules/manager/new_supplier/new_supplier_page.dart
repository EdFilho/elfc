import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './new_supplier_controller.dart';

class NewSupplierPage extends GetView<NewSupplierController> {
    
    const NewSupplierPage({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(title: const Text('NewSupplierPage'),),
            body: Container(),
        );
    }
}
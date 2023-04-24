// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

import '../../../../components/components.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Padding(
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).viewPadding.top,
          right: 16.0,
          left: 16.0,
        ),
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            Text(
              'Gestão',
              style: Theme.of(context).textTheme.titleSmall,
            ),
            const CustomDivider(),
            Text(
              'Contas a pagar',
              style: Theme.of(context).textTheme.titleSmall,
            ),
            const SizedBox(height: 8.0),
            DrawerOption(
              title: 'Cadastro de fornecedor',
              onTap: () => print('cadastro de fornecedor'),
            ),
            DrawerOption(
              title: 'Cadastro de tipo de despesa',
              onTap: () => print('Cadastro de tipo de despesa'),
            ),
            DrawerOption(
              title: 'Cadastro de despesa',
              onTap: () => print('Cadastro de despesa'),
            ),
            const CustomDivider(),
            Text(
              'Contas a receber',
              style: Theme.of(context).textTheme.titleSmall,
            ),
            const SizedBox(height: 8.0),
            DrawerOption(
              title: 'Cadastro de planos',
              onTap: () => print('Cadastro de planos'),
            ),
            DrawerOption(
              title: 'Venda de produtos',
              onTap: () => print('Venda de produtos'),
            ),
            const CustomDivider(),
            Text(
              'Estoque',
              style: Theme.of(context).textTheme.titleSmall,
            ),
            const SizedBox(height: 8.0),
            DrawerOption(
              title: 'Cadastro de produtos',
              onTap: () => print('Cadastro de produtos'),
            ),
            DrawerOption(
              title: 'Cadastro de equipamentos',
              onTap: () => print('Cadastro de equipamentos'),
            ),
            const CustomDivider(),
            Text(
              'Relatórios',
              style: Theme.of(context).textTheme.titleSmall,
            ),
            const SizedBox(height: 8.0),
            DrawerOption(
              title: 'Gerar relatórios',
              onTap: () => print('Gerar relatórios'),
            ),
          ],
        ),
      ),
    );
  }
}

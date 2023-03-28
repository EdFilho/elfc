## elfc

Eduardo Lopes FC

# :rocket: Como rodar o projeto?

1. Certifique-se de ter o Flutter instalado: https://flutter.dev/

2. Execute o comando `flutter pub get` para baixar as dependências.

3. Certifique-se de ter um emulador iniciado ou um celular plugado com as Ferramentas de Desenvolver ativadas.

4. Pronto. Para rodar em modo debug, execute o comando `flutter run` ou em modo release `flutter run --release`. Para gerar o apk, execute `flutter build apk`.

# :octocat: Versionamento de código

* Convencional Commits [https://www.conventionalcommits.org/en/v1.0.0/]:

Exmplo de commit: feat(user): user crud implementation

1. feat: Um commit do tipo feat significa a implementação de uma nova feature na aplicação.

2. fix: um commit do tipo fix significa uma correção de um Bug encontrado no código.

3. chore: é o tipo de commit voltado para instalaçào de nova dependência.

4. refactor: Um commit do tipo refactor é quando é feita a refatoração do código, sem haver mudança de comportamento da aplicação.

Para outros tipos de commit, podem ser verificados cada tipo específico na documentação ampla do Conventional Commits.

# :computer: Implementação

## Tecnologias utilizadas

1. Flutter GetX [https://github.com/jonataslaw/getx] para Injeção de Dependências e State Manager.

2. Dio [https://pub.dev/packages/dio] para requisições HTTP.

## Arquitetura
Tenho estudado cada vez mais organização e estruturação de projeto de forma que seja mantível e escalável. O Clean Architecture promove a implementação independente de cada camada da aplicação facilitando a manutenção do projeto.

Referências:

1. Flutter, TDD, Clean Architecture, SOLID e Design Patterns [https://medium.com/@fakhiradevina/flutter-tdd-clean-architecture-272373727699]

2. Flutter TDD Clean Architecture Course [https://www.youtube.com/watch?v=KjE2IDphA_U]

3. Clean Dart [https://github.com/Flutterando/Clean-Dart]

4. Modular Arch [https://triare.net/insights/modular-architecture-2/]

5. Atomic Design [https://atomicdesign.bradfrost.com/chapter-2/#:~:text=Atoms%20are%20UI%20elements%20that,discrete%20sections%20of%20an%20interface.]

## Modularidade
A modularidade do projeto está aplicada a camada de Presentation. Os modulos funcionam como features, que os usuário acessam de acordo com o fluxo. Ex: Social, toda a parte social será acessada a partir do feed, então tudo relacionado a isso vai pra o módulo "social".

## Estrutura de arquivos:

lib
├── app
│   ├── data
│   │   ├── repositories
│   │   ├── infra
│   │   └── models
│   ├── domain
│   │   ├── entities
│   │   ├── repositories
│   │   ├── usecases
│   └── presentation
│       ├── components
│       ├── controllers
│       ├── modules
│       └── routes.dart
├── core
│   ├── configs
│   ├── theme
│   ├── shared
└── main.dart

# :calling: versionamento 

## **Versionamento** - É usado o padrão de Versionamento Semântico (Semantic Versioning), seguindo o padrão x.y.z(c).


  * **x**: Versão Maior(MAJOR): Quando fizer mudanças de compatibilidade, que irão impedir que versões com o código X diferentes usarem alguma ou certas funcionalidades.

  * **y**: Versão Menor(MINOR): Quando adicionar novas funcionalidade mantendo compatibilidade com versões anteriores.

  * **z**: Versão de Correção(PATCH): Quando corrigir bugs e funcionalidade já existentes

  * **c**: Versão construção(build): O código da versão, do build realizado até aprovação para lançamento de nova versão.

# :mailbox_with_mail: Licença

Este projeto foi criado para uso exclusivo da Strats Consultoria e o uso de seu código fonte é exclusivo. Eduardo Lopes FC&copy;

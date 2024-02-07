import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const Contato());
}
 
 class Contato extends StatelessWidget{
  //necessário para inicializar a widget, passa a classe pai
  const Contato({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, 
    title: 'Flutter Demo',
    theme: ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      useMaterial3: true,
    ),
    home: const Principal(title: 'Contato Pessoal'),
    );

  }
 }
  class Principal extends StatefulWidget {
    //passa parâmetros informações para dentro dessa classe
        const Principal({super.key, required this.title});
        final String title;
  
      //cria um estado que vai se referir a classe _PrincipalEstado
      @override
      State<Principal> createState() => _PrincipalEstado();
  }

 
 //Classe _PrincipalEstado herdando o Estado - Estado: vai ficar atualizando
 class _PrincipalEstado extends State<Principal> {

  final foto = const CircleAvatar(
    backgroundImage: NetworkImage("data:image/jpeg;base64,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"),
    radius: 150,
    );

    final nome = const Text(
      "Gislaine de Souza",
      style: TextStyle(fontSize: 30),
      textAlign: TextAlign.center,
    );

    final obs = const Text(
      'Programador Full Stack Senac',
      style: TextStyle(fontSize: 20, color: Colors.blue), 
      textAlign: TextAlign.center,
    );

    final email = IconButton(
      icon: const Icon(Icons.mail),
      color: Colors.blue,
      onPressed: () {
        launchUrl(Uri(
          scheme: 'malito',
          path: '',
          queryParameters: {
            'subject': 'Assunto do email',
            'body': 'Corpo do Email',
          },
          ));
        },
        );
    

  final telefone = IconButton(
    icon: const Icon(Icons.phone),
    color: Colors.blue,
    onPressed: () {
      launchUrl(Uri(scheme: 'tel', path: '+5544997750727'));
    },
     );

     final sms = IconButton(
       color: Colors.blue,
     icon: const Icon(Icons.phone),
     onPressed: () {
      launchUrl(Uri(scheme: 'sms', path: '+5544997750727'));


     },
     );


     final site = IconButton(
      color: Colors.blue,
      icon: const Icon(Icons.open_in_browser),
      onPressed: () {
        launchUrl(Uri.parse(

       '' ));
      },
      );

      final whatsapp = IconButton(
        color: Colors.blue,
        icon: const Icon(Icons.map),
        onPressed: () {
          launchUrl(Uri.parse(''));
        },
      );


  
  @override 
    Widget build(BuildContext context) {
        return Scaffold(

          appBar: AppBar(
            title: Text(
              'Aplicativo de Contato',
              style: TextStyle(color: Colors.white),
              
              ),
              backgroundColor: Colors.blueAccent,
              leading: IconButton(
              icon: Icon(Icons.account_circle, color: Colors.white),
              onPressed: () {},
          ),
          ),
    //organizar em coluna
    body: Column(
      //alinhar conteúdo no centro - acima/baixo
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        foto, nome, obs,
        Text('Olá Mundo'),
        //criando linha
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
              email,
              telefone,
              sms,
              site, 
          ],
          //botões do aplicativo
        ),
      ],
    ),
);
    }
 }
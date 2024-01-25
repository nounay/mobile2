import 'package:flutter/material.dart';

//onde a execução do programa começa - principal
void main() {
  runApp(const Aplicativo()); //rodda aplicativo

}
//classe aplicativo(contém caracteristicas, variaveis e funções)
//extens - extende- herda caracteristicas do widget stateless
//stateless -  tudo é imutavel após a criação

class Aplicativo extends StatelessWidget {
  const Aplicativo({super.key});
 

  //build - método que reconstroi a tela
   @override
  Widget build(BuildContext context) {

    //widget resposável pelo design da aplicação, fornece temas e recursos
    // ignore: prefer_conts_constructors
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //home -  tela principal - Scaffold fornece layout basico
      //home - tela principal - Scaffold fornece layout basico
      home : Scaffold( 
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 197, 23, 11),
          title: const Text(
            'Flutter e divertido!',
            style: TextStyle(color: Colors.white),
            ),
        ),

//body é o corpo do app, Center vai centralizar o conteúdo
        body: const Center( 
          //child representa que é filho do widget Center -SizedBox - CaixaComTamanho
          child: SizedBox(
          child: const Text(
            'Flutter foi criado pelo Google, usa a linguagem DART',
            
            style: TextStyle(
              fontSize: 20,
            fontFamily: 'arial',
            ),
          ),
            height: 200,
            width: 200,

        ),
      ),
      floatingActionButton: FloatingActionButton(
            backgroundColor: Color.fromARGB(255, 197, 23, 11),
            child: Icon(Icons.add),
            onPressed: () {},
          ),

//------ barra de navegação inferior
bottomNavigationBar: BottomNavigationBar(items: const[
  BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Principal'),
  BottomNavigationBarItem(icon: Icon(Icons.business), label: 'Negócios'),
  BottomNavigationBarItem(icon: Icon(Icons.school), label: 'Escola'),

]),


//----- barra lateral do aplicativo

drawer: Drawer(
  backgroundColor: Colors.white,
  //lista dos itens do menu
  child: ListView(
    children: <Widget>[
      const DrawerHeader(
       decoration: BoxDecoration(color:Colors.green),
       child: Text(
        'Menu App',
        style: TextStyle( color: Colors.white,
        fontSize: 24
        ),
       ),
       ),
         


        ListTile(
          leading: const Icon(Icons.home),
          title: Text('Pagina Inicial'),
          onTap: () {},
        ),
    ],
  ),
),

      ),
     );
   
    
  }
}

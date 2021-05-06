

import 'package:flutter/material.dart';


void main() {
    runApp(
       MaterialApp(
         debugShowCheckedModeBanner: false,
          title: 'beGREEN',
          initialRoute: '/menu',

        routes: {
        '/menu': (context) => BoasVindas(),
        '/tela2': (context) => TelaLogin(),
        '/tela3': (context) => Categoria(),
        '/tela4': (context) => Saude(),
        '/tela5': (context) => Sobre(),
        '/tela6': (context) => Cadastro(),
       }
      )
    );
}


//
// ------------------------  BOASVINDAS ---------------------------------
// 
 
 class BoasVindas extends StatefulWidget {
   @override
   _BoasVindasState createState() => _BoasVindasState();
 }
 
 class _BoasVindasState extends State<BoasVindas> {
   @override
  Widget build(BuildContext context) {
      return Scaffold(

        backgroundColor: Color.fromARGB(255,146,198,1),
        appBar: AppBar(title: Text ('beGREEN', style:TextStyle(fontFamily: 'fontelight')),
        backgroundColor: Colors.green[900]
        ),       


          body: Column(
          
            children: [
                
                Container(
                  width: 600,
                  height: 180, 
                  color: Color.fromARGB(255,146,198,1),

                  child: Image.asset('assets/logo.jpg'),
                       ),

                  Container(
                    padding: EdgeInsets.all(30),
                    width: 600,
                    height: 500, 
                    color: Color.fromARGB(255,146,198,1),
                
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      
                      children: [
                        Text('Bem vinda(o) ao beGreen! Plataforma inteiramente vegana para você que busca adotar novos hábitos de dentro para fora. Nosso objetivo, é disponibilizar num único lugar, tudo o que deseja do universo vegano!',
                          style: TextStyle(fontFamily: 'fontemedio', color: Colors.white,
                          fontSize: 20,
                          ),
                        ),
                            
                          InkWell(
                      onTap: (){
                        Navigator.pushNamed(context, '/tela2');
                      },
                      child: Container(
                      height: 45,
                      width: MediaQuery.of(context).size.width/1.2,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Colors.green[900]
                          ],
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(50)
                        )
                      ),
                      child: Center(
                        child: Text('EXPLORAR'.toUpperCase(),
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'fontelight', fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ),

                      ]
                    )
                  
                  
                  )
          
            ],)    
          
  ); 
 }
}    

 //
 //   ----------------------- SAÚDE --------------------------
 // 

    class Produto{
        final String imagem;
        final String descricao;
        final String valor;

        Produto (this.imagem, this.descricao, this.valor);
    }

    class Produtofim extends StatelessWidget{
      final Produto _item;
    

    const Produtofim (this._item);
    @override
    Widget build (BuildContext context){
      return Card(
        
        color: Colors.white,
          child: ListTile(
            leading: Image.asset(_item.imagem),
            title: Text(_item.descricao, style:TextStyle(fontFamily: 'fontelight', fontSize: 15 )),
            trailing: Text(_item.valor),
            onTap: () {}

          ),
        );
      }
    }
    
    
//------------------------------------------------------------------

class Saude extends StatefulWidget{
  @override
  _SaudeState createState() => _SaudeState();
}
 

    class _SaudeState extends State<Saude> {

      final List <Produto> lista = [];

      Produto a = Produto('assets/omega.png', 'Omega 3 vegano', r'R$ 21,90');
      Produto b = Produto('assets/floral.jpg', 'Floral Hidrolato Patchouli', r'R$ 14,50');
      Produto c = Produto('assets/zinco.png', 'Zinco ApisNutri 280mg', r'R$ 43,40');
      Produto d = Produto('assets/vitamina.jpg', 'Vitamina B12 Eficácia', r'R$ 24,90');
      @override

      
      void initState() {
        lista.add(a);
        lista.add(b);
        lista.add(c);
        lista.add(d);
        super.initState();

      }
    
    

   Widget build(BuildContext context) {
     theme: ThemeData(primaryColor: Colors.green[900]);
     return Scaffold(
      appBar: AppBar(title: Text('Saúde', style:TextStyle(fontFamily: 'fontelight') ), backgroundColor: Colors.green[900], 
      ),
      

      drawer: Drawer(
          child: ListView(
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text("Usuário"),
                accountEmail: Text("Email"),
                currentAccountPicture: CircleAvatar(
                  radius: 30,
                  backgroundImage: 
                NetworkImage('https://image.flaticon.com/icons/png/128/711/711769.png'),
                  backgroundColor: Colors.transparent,
                ),
              ),
              
              ListTile(
                  
                  title: Text("Início"),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {
                    Navigator.pushNamed(context, '/tela3');
                  }),

                  ListTile(
                  leading: Icon(Icons.search),
                  title: Text("Buscar"),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {}),

                  ListTile(
                  leading: Icon(Icons.collections),
                  title: Text("Categoria"),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {Navigator.pushNamed(context, '/tela3');}),

                  ListTile(
                  leading: Icon(Icons.payment),
                  title: Text("Ofertas do dia"),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {}),

                  ListTile(
                  leading: Icon(Icons.shopping_cart),
                  title: Text("Minhas compras"),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {}),

                  ListTile(
                  leading: Icon(Icons.store),
                  title: Text("Vender"),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {}),


                  ListTile(
                  leading: Icon(Icons.add_business),
                  title: Text("Lojas credenciadas"),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {}),


                  ListTile(
                  leading: Icon(Icons.all_inclusive),
                  title: Text("Participe em um projeto"),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {}),


                  ListTile(
                  leading: Icon(Icons.emoji_nature),
                  title: Text("Sobre beGreen"),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {Navigator.pushNamed(context, '/tela5');},
                  ),
            ],
          ),
        ),

              body: Column(
        children: [
         
          Container(
            
                  width: 700,
                  height: 300, 
                  color: Colors.white,
                  child: Image.asset('assets/imagen2.png'),
          ),

          //VERTICAL
          Expanded(
            child: Container(
               width: 500,
               height: 400,
               padding: EdgeInsets.symmetric(horizontal: 20),
               color: Colors.white,
               child: ListView.builder(
                  
                  itemCount: lista.length,
                  itemBuilder: (context, index) {
                    
                    final _item = lista[index];
                    return Produtofim (_item);
                    
                  },
              ),
            ),
          ),
        ],
      ),
  
      
     );


  }
 }


         
                    
 //
 //   ----------------------- CATEGORIA --------------------------
 //             
                  
   class Categoria extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.green[900]),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Categorias", style:TextStyle(fontFamily: 'fontelight')),
        ),
        
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text("Usuário"),
                accountEmail: Text("Email"),
                currentAccountPicture: CircleAvatar(
                  radius: 30.0,
                  backgroundImage: 
                NetworkImage('https://image.flaticon.com/icons/png/128/711/711769.png'),
                  backgroundColor: Colors.transparent,
                ),
              ),
              
              ListTile(
                  
                  title: Text("Início"),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {
                    Navigator.pop(context);
                  }),

                  ListTile(
                  leading: Icon(Icons.search),
                  title: Text("Buscar"),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {}),

                  ListTile(
                  leading: Icon(Icons.collections),
                  title: Text("Categoria"),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {Navigator.pushNamed(context, '/tela3');}),

                  ListTile(
                  leading: Icon(Icons.payment),
                  title: Text("Ofertas do dia"),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {}),

                  ListTile(
                  leading: Icon(Icons.shopping_cart),
                  title: Text("Minhas compras"),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {}),

                  ListTile(
                  leading: Icon(Icons.store),
                  title: Text("Vender"),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {}),


                  ListTile(
                  leading: Icon(Icons.add_business),
                  title: Text("Lojas credenciadas"),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {}),


                  ListTile(
                  leading: Icon(Icons.all_inclusive),
                  title: Text("Participe em um projeto"),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {}),


                  ListTile(
                  leading: Icon(Icons.emoji_nature),
                  title: Text("Sobre beGreen"),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {Navigator.pushNamed(context, '/tela5');},
                  ),
            ],
          ),
        ),

         body: Container(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: [
            
            SizedBox(height: 20),
            ListTile(

              title: Text('Saúde', style: TextStyle(fontSize: 24, fontFamily: 'fontelight')),
              trailing: Icon(Icons.arrow_forward),
              
              
              onTap: () {
                Navigator.pushNamed(context, '/tela4');
              },
              hoverColor: Colors.green[100],
            ),
            SizedBox(height: 20),
            ListTile(
              
              title: Text('Decoração', style: TextStyle(fontSize: 24, fontFamily: 'fontelight')),
              trailing: Icon(Icons.arrow_forward),
              
              onTap: () {
                
              },
              hoverColor: Colors.green[100]
            ),

            SizedBox(height: 20),
            ListTile(
              
              title: Text('Estética', style: TextStyle(fontSize: 24, fontFamily: 'fontelight')),
              trailing: Icon(Icons.arrow_forward),
              
              onTap: () {
                
              },
              hoverColor: Colors.green[100]
            ),

            SizedBox(height: 20),
            ListTile(
              
              title: Text('Moda', style: TextStyle(fontSize: 24, fontFamily:'fontelight')),
              trailing: Icon(Icons.arrow_forward),
              
              onTap: () {
                
              },
              hoverColor: Colors.green[100]
            ),

            SizedBox(height: 20),
            ListTile(
              
              title: Text('Culinária', style: TextStyle(fontSize: 24, fontFamily:'fontelight')),
              trailing: Icon(Icons.arrow_forward),
              
              onTap: () {
                
              },
              hoverColor: Colors.green[100]
            ),

            SizedBox(height: 20),
            ListTile(
              
              title: Text('Construção', style: TextStyle(fontSize: 24, fontFamily:'fontelight')),
              trailing: Icon(Icons.arrow_forward),
              
              onTap: () {
                
              },
              hoverColor: Colors.green[100]
            ),

            SizedBox(height: 20),
            ListTile(
              
              title: Text('Arte', style: TextStyle(fontSize: 24, fontFamily:'fontelight')),
              trailing: Icon(Icons.arrow_forward),
              
              onTap: () {
                
              },
              hoverColor: Colors.green[100]
            ),

            

            
          ],
        ),
      ),
      ),
  


    );    


              
    
  }
}
        

//
//TELA LOGIN 
// 
 

 class TelaLogin extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TelaLoginState();
  }
}

class _TelaLoginState extends State<TelaLogin> {

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(

      drawer: Drawer(
          child: ListView(
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text("Usuário"),
                accountEmail: Text("Email"),
                currentAccountPicture: CircleAvatar(
                  radius: 30.0,
                  backgroundImage: 
                NetworkImage('https://image.flaticon.com/icons/png/128/711/711769.png'),
                  backgroundColor: Colors.transparent,
                ),
              ),
              
              ListTile(
                  leading: Icon(Icons.account_circle),
                  title: Text("Início"),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {
                    Navigator.pop(context);
                  }),

                  ListTile(
                  leading: Icon(Icons.search),
                  title: Text("Buscar"),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {}),

                  ListTile(
                  leading: Icon(Icons.collections),
                  title: Text("Categoria"),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {Navigator.pushNamed(context, '/tela3');}),

                  ListTile(
                  leading: Icon(Icons.payment),
                  title: Text("Ofertas do dia"),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {}),

                  ListTile(
                  leading: Icon(Icons.shopping_cart),
                  title: Text("Minhas compras"),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {}),

                  ListTile(
                  leading: Icon(Icons.store),
                  title: Text("Vender"),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {}),


                  ListTile(
                  leading: Icon(Icons.add_business),
                  title: Text("Lojas credenciadas"),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {}),


                  ListTile(
                  leading: Icon(Icons.all_inclusive),
                  title: Text("Participe em um projeto"),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {}),


                  ListTile(
                  leading: Icon(Icons.emoji_nature),
                  title: Text("Sobre beGreen"),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {Navigator.pushNamed(context, '/tela5');
                  },
                  ),
            ],
          ),
        ),

      body: Container(
        child: ListView(
          children: <Widget>[

            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/3.5,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromARGB(255,146,198,1),
                  ],
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(90)
                )
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Spacer(),
                  Align(
                    alignment: Alignment.center,
                    child: Icon(Icons.person,
                      size: 90,
                      color: Colors.white,
                    ),
                  ),
                  Spacer(),

                  Align(
                    alignment: Alignment.bottomRight,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          bottom: 32,
                          right: 32
                        ),
                        child: Text('Login',
                          style: TextStyle(
                            fontFamily: 'fontemedio',
                            color: Colors.white,
                            fontSize: 18
                          ),
                        ),
                      ),
                  ),
                ],
              ),
            ),

            Container(
              height: MediaQuery.of(context).size.height/2,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.only(top: 100),
              child: Column(
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width/1.2,
                    height: 45,
                    padding: EdgeInsets.only(
                      top: 4,left: 16, right: 16, bottom: 4
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(50)
                      ),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 5
                        )
                      ]
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        icon: Icon(Icons.person,
                            color: Colors.green[900],
                        ),
                          hintText: 'Usuario',
                      ),
                    ),
                  ),
                  
                  Container(
                    width: MediaQuery.of(context).size.width/1.2,
                    height: 45,
                    margin: EdgeInsets.only(top: 32),
                    padding: EdgeInsets.only(
                        top: 5, left: 16, right: 16, bottom: 5
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                            Radius.circular(50)
                        ),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black12,
                              blurRadius: 5
                          )
                        ]
                    ),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        icon: Icon(Icons.vpn_key,
                          color: Colors.green[900],
                        ),
                        hintText: 'Senha',
                      ),
                    ),
                  ),

                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 16, right: 32
                      ),
                      child: Text('Esqueceu a senha ?',
                        style: TextStyle(
                          fontFamily: 'fontemedio',
                          color: Colors.grey
                        ),
                      ),
                    ),
                  ),
                  Spacer(),

                  InkWell(
                      onTap: (){
                        Navigator.pushNamed(context, '/tela3');
                      },
                      child: Container(
                      height: 45,
                      width: MediaQuery.of(context).size.width/1.2,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color.fromARGB(255,146,198,1),
                          ],
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(50)
                        )
                      ),
                      child: Center(
                        child: Text('ENTRAR'.toUpperCase(),
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'fontemedio'
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            InkWell(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Não tem uma conta ?"),
                  Text("CADASTRE-SE", style: TextStyle(color: Colors.green[900]),),
                ], 
              ),
              onTap: (){
                Navigator.pushNamed(context, '/tela6');
              },
            ),           
          ],
          
        ),
      ),
    );
  }
}


//
// CADASTRO
// 

class Cadastro extends StatefulWidget {
  @override
  _CadastroState createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      drawer: Drawer(
          child: ListView(
            children: <Widget>[
              
              UserAccountsDrawerHeader(
                accountName: Text("Usuário"),
                accountEmail: Text("Email"),
                currentAccountPicture: CircleAvatar(
                  radius: 30.0,
                  backgroundImage: 
                NetworkImage('https://image.flaticon.com/icons/png/128/711/711769.png'),
                  backgroundColor: Colors.transparent,
                ),
              ),
              
              ListTile(
                  leading: Icon(Icons.account_circle),
                  title: Text("Início"),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {
                    Navigator.pop(context);
                  }),

                  ListTile(
                  leading: Icon(Icons.search),
                  title: Text("Buscar"),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {}),

                  ListTile(
                  leading: Icon(Icons.collections),
                  title: Text("Categoria"),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {Navigator.pushNamed(context, '/tela3');}),

                  ListTile(
                  leading: Icon(Icons.payment),
                  title: Text("Ofertas do dia"),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {}),

                  ListTile(
                  leading: Icon(Icons.shopping_cart),
                  title: Text("Minhas compras"),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {}),

                  ListTile(
                  leading: Icon(Icons.store),
                  title: Text("Vender"),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {}),


                  ListTile(
                  leading: Icon(Icons.add_business),
                  title: Text("Lojas credenciadas"),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {}),


                  ListTile(
                  leading: Icon(Icons.all_inclusive),
                  title: Text("Participe em um projeto"),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {}),


                  ListTile(
                  leading: Icon(Icons.emoji_nature),
                  title: Text("Sobre beGreen"),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {Navigator.pushNamed(context, '/tela5');})
            ],
          ),
        ),


      body: Container(
        child: ListView(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/3.5,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.green[900],

                  ],
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(90)
                )
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Spacer(),
                  Align(
                    alignment: Alignment.center,
                    child: Icon(Icons.person,
                      size: 90,
                      color: Colors.white,
                    ),
                  ),
                  Spacer(),

                  Align(
                    alignment: Alignment.bottomRight,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          bottom: 32,
                          right: 32
                        ),
                        child: Text('CADASTRE-SE',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'fontemedio',
                            fontSize: 18
                          ),
                        ),
                      ),
                  ),
                ],
              ),
            ),

            Container(
              height: MediaQuery.of(context).size.height/2,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.only(top: 62),
              child: Column(
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width/1.2,
                    height: 45,
                    padding: EdgeInsets.only(
                      top: 4,left: 16, right: 16, bottom: 4
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(50)
                      ),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 5
                        )
                      ]
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                          hintText: 'Nome Completo',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width/1.2,
                    height: 45,
                    padding: EdgeInsets.only(
                      top: 4,left: 16, right: 16, bottom: 4
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(50)
                      ),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 5
                        )
                      ]
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                          hintText: 'Nome de Usuario',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width/1.2,
                    height: 45,
                    padding: EdgeInsets.only(
                      top: 4,left: 16, right: 16, bottom: 4
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(50)
                      ),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 5
                        )
                      ]
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                          hintText: 'Email',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),                  
                  Container(
                    width: MediaQuery.of(context).size.width/1.2,
                    height: 45,
                    padding: EdgeInsets.only(
                      top: 4,left: 16, right: 16, bottom: 4
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(50)
                      ),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 5
                        )
                      ]
                    ),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                          hintText: 'Senha',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.pushNamed(context, '/tela2');
                    },
                    child: Container(
                      height: 45,
                      width: MediaQuery.of(context).size.width/1.2,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color.fromARGB(255,146,198,1),
                          ],
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(50)
                        )
                      ),
                      child: Center(
                        child: Text('Cadastrar'.toUpperCase(),
                          style: TextStyle(
                            fontFamily: 'fontemedio',
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            
            SizedBox(
                    height: 50,
                  ),
            InkWell(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Já possui conta ?", style: TextStyle(fontFamily: 'fontemedio'),),
                  Text("Entrar",style: TextStyle(color: Color.fromARGB(255,146,198,1), fontFamily: 'fontemedio'),),
                ], 
              ),
              onTap: (){
                Navigator.pop(context);
              },
            ),           
          ],
          
        ),
      ),
    );
  }
}





//
//SOBRE
// 
class Sobre extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.green[900]),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Sobre o beGreen", style:TextStyle(fontFamily: 'fontelight')),
        ),


          //color: Color.fromARGB(255,146,198,1),
          drawer: Drawer(
          
          child: ListView(
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text("Usuário"),
                accountEmail: Text("Email"),
                currentAccountPicture: CircleAvatar(
                  radius: 30.0,
                  backgroundImage: 
                NetworkImage('https://image.flaticon.com/icons/png/128/711/711769.png'),
                  backgroundColor: Colors.transparent,
                ),
              ),
              
              ListTile(
                  leading: Icon(Icons.account_circle),
                  title: Text("Início"),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {
                    Navigator.pop(context);
                  }),

                  ListTile(
                  leading: Icon(Icons.search),
                  title: Text("Buscar"),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {}),

                  ListTile(
                  leading: Icon(Icons.collections),
                  title: Text("Categoria"),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {Navigator.pushNamed(context, '/tela3');}),

                  ListTile(
                  leading: Icon(Icons.payment),
                  title: Text("Ofertas do dia"),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {}),

                  ListTile(
                  leading: Icon(Icons.shopping_cart),
                  title: Text("Minhas compras"),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {}),

                  ListTile(
                  leading: Icon(Icons.store),
                  title: Text("Vender"),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {}),


                  ListTile(
                  leading: Icon(Icons.add_business),
                  title: Text("Lojas credenciadas"),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {}),


                  ListTile(
                  leading: Icon(Icons.all_inclusive),
                  title: Text("Participe em um projeto"),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {}),


                  ListTile(
                  leading: Icon(Icons.emoji_nature),
                  title: Text("Sobre beGreen"),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {Navigator.pushNamed(context, '/tela5');}),
            ],
          ),
        ),


                body: Container(
                  padding: EdgeInsets.all(20),
                  child: ListView(
                  children: [
            
                  SizedBox(height: 20),
                   ListTile(

                     title: Text('QUAL NOSSO PROPÓSITO?', style: TextStyle(fontSize: 24, color: Colors.green[900], fontFamily: 'fontelight')),
                 
                  ),


                    SizedBox(height: 20),
                    ListTile(
              
                      title: Text('       "Veganismo é o modo de vida que busca eliminar toda e qualquer forma de exploração animal,'+ 
                              'não apenas na alimentação, mas também no vestuário, em testes, na composição de produtos diversos, '+
                              'no trabalho, no entretenimento e no comércio. Veganos opõem-se, obviamente, à caça e à pesca, '+
                              'ao uso de animais em rituais religiosos, bem como a qualquer outro uso que se faça de animais."'+
                              'Muitas pessoas tem aderido o veganismo como seu estilo de vida. Com o objetivo de tornar acessível '+
                              'o universo de possibilidades que o veganismo oferece, trouxemos uma plataforma completa onde será ' +
                              'possível obter informação a respeito do assunto, fazer compras, conhecer pontos de vendas proximos a você '+
                              'aprender receitas, vender seu produto vegano, e ainda colaborar com algum projeto ambiental de sua escolha. '+
                              'Muito mais que disponibilizar, nosso objetivo também é quebrar os tabus de que a prática vegana é '+ 
                              'restritiva e limitada, mostrando o quão diversificado e cheio de possibilidades é este universo.',
                               style: TextStyle(fontSize: 18, fontFamily: 'fontelight', color: Colors.green[900])),
                    ),

                      SizedBox(height: 20),
                           Container(

                            width: 150,
                            height: 200,
                            child: Center(
                            child: Image.asset('assets/perfil.jpeg'),
                            
                    
                                
                          ),

                           ),

                          SizedBox(height: 20),
                           Container(

                            width: 150,
                            height: 50,
                            child: Center(
                              child: Text('Desenvolvido por Bruna Santos', style: TextStyle(fontSize: 18, fontFamily: 'fontelight', color:Colors.green[900]),
 
                              ),

                            ),


                          ), 
                  
                  
        ]
          
        )
      )
    )
  );
 }
}                         
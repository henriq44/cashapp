import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
final formKey = GlobalKey<FormState>();
final email = TextEditingController();
final senha = TextEditingController();

bool isLogin = true;
late String titulo;
late String actionButton;
late String toggleButton;

@override
  void initState() {
    super.initState();
    setFormAction(true);
  }

setFormAction(bool acao) {
  setState(() {
    isLogin = acao;
    if (isLogin){
      titulo = 'Bem vindo de volta';
      actionButton = 'Login';
      toggleButton = 'Ainda não possui uma conta? Cadastre-se';
    } else {
      titulo = 'Crie sua Conta';
      actionButton = 'Cadastrar';
      toggleButton = 'Voltar para a tela de login';
    }
  });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding (padding: EdgeInsets.only(top: 100),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                titulo,
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  letterSpacing: -1.5,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(24),
                child: TextFormField(
                  controller: email,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                  ),
                  keyboardType: TextInputType.emailAddress,
                  validator: (value){
                    if(value!.isEmpty){
                      return 'informe seu email!';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.all(24),
                child: TextFormField(
                  controller: senha,
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Senha',
                  ),
                  keyboardType: TextInputType.emailAddress,
                  validator: (value){
                    if(value!.isEmpty){
                      return 'informe sua senha!';
                    } else if (value.length < 6){
                      return 'Sua senha deve ter no mínimo 6 caracteres';// da pra colocar pra comparar as senhas
                    }
                    return null;
                    
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.all(24),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Row (
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.check),
                      Padding(
                        padding: EdgeInsets.all(16),
                        child: Text(
                          actionButton,
                          style: TextStyle(fontSize: 20),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              TextButton(onPressed: () => setFormAction(!isLogin), child: Text(toggleButton),)
            ]),
          ),
        )),
    );
  }
}
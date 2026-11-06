# Sistema de Login em Java + MySQL

Aplicação desktop em **Java Swing** com tela de login que valida e-mail e senha em um banco de dados **MySQL** via **JDBC**. Projeto desenvolvido no **NetBeans** como trabalho prático da faculdade.

## Funcionalidades

- Tela de login com campos de e-mail e senha
- Validação de campos vazios
- Consulta ao banco de dados com `PreparedStatement` (protege contra SQL Injection)
- Mensagens de feedback: "Bem Vindo!" para login válido e "Usuário ou Senha Inválidos!" para credenciais incorretas

## Tecnologias

- Java (JDK 8 ou superior)
- Java Swing (interface gráfica)
- JDBC
- MySQL
- NetBeans IDE

## Estrutura do projeto

```
├── src/
│   └── forms.java          # Tela de login e lógica de autenticação
├── nbproject/              # Configurações do projeto NetBeans
├── build.xml
├── trabalhoiii.sql         # Script de criação do banco e da tabela
└── README.md
```

## Como executar

### 1. Pré-requisitos

- JDK instalado
- MySQL Server em execução
- [MySQL Connector/J](https://dev.mysql.com/downloads/connector/j/) adicionado às bibliotecas do projeto (no NetBeans: botão direito em *Libraries* > *Add JAR/Folder*)

### 2. Criar o banco de dados

Execute o script `trabalhoiii.sql` no MySQL (pelo Workbench, terminal ou outro cliente). Ele cria o banco `trabalhoIII`, a tabela `usuario` e insere um usuário de teste.

Usuário de teste:

| E-mail           | Senha  |
|------------------|--------|
| user@gmail.com   | 123456 |

### 3. Configurar a conexão

No arquivo `forms.java`, método `realizarLogin()`, ajuste a URL, o usuário e a senha do seu MySQL:

```java
DriverManager.getConnection("jdbc:mysql://localhost/trabalhoiii", "root", "root");
```

### 4. Rodar

Abra o projeto no NetBeans e execute (**F6**), ou clique com o botão direito no projeto e escolha *Run*.

## Banco de dados

```sql
create table usuario (
    id_usuario int primary key auto_increment,
    email varchar(100),
    senha varchar(50)
);
```

## Melhorias futuras

- Armazenar senhas com hash (por exemplo, BCrypt) em vez de texto puro
- Usar `JPasswordField` para ocultar a senha digitada
- Mover as credenciais do banco para um arquivo de configuração
- Abrir uma tela principal após o login bem-sucedido

## Autor

Carlos Henrique Lima
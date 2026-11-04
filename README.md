# DCT2201 - Banco de Dados

Repositório destinado ao armazenamento das atividades práticas desenvolvidas na disciplina **DCT2201 - Banco de Dados**, do curso de Bacharelado em Sistemas de Informação da Universidade Federal do Rio Grande do Norte (UFRN).

## Tarefa 03 - Docker Compose, MariaDB e Administração de SGBD

A atividade aborda a configuração de ambientes com Docker Compose, a utilização do MariaDB e do CloudBeaver, além da criação, manipulação e administração de bancos de dados por meio de comandos SQL.

### Estrutura do projeto

Os arquivos da atividade estão organizados na pasta `tarefa-03/`:

```text
tarefa-03/
├── ambiente-1/
│   ├── docker-compose.yaml
│   └── .env.example
├── ambiente-2/
│   ├── docker-compose.yaml
│   └── .env.example
├── povoamento.sql
└── setup.sql
```

### Descrição dos arquivos

- **`ambiente-1/`**: contém os arquivos de configuração da primeira instância do Docker Compose, com os serviços MariaDB e CloudBeaver.
- **`ambiente-2/`**: contém os arquivos de configuração de uma segunda instância independente, permitindo executar os dois ambientes simultaneamente.
- **`.env.example`**: modelo das variáveis de ambiente necessárias para configurar cada instância.
- **`povoamento.sql`**: contém os comandos SQL para inserção dos dados iniciais de autores e livros.
- **`setup.sql`**: script de automação que recria o banco de dados `biblioteca`, suas tabelas (`autores`, `livros` e `emprestimos`), os relacionamentos, os usuários, seus respectivos privilégios e a carga inicial de dados.

### Configuração dos ambientes

Cada ambiente possui seu próprio arquivo `.env.example`, que deve ser utilizado como modelo para a criação de um arquivo `.env` local.

O arquivo `.env` deve ser preenchido com as configurações e credenciais correspondentes a cada ambiente. Por conter informações privadas, ele não deve ser compartilhado nem versionado no GitHub.

### Licença

Este repositório está disponibilizado sob a licença especificada no arquivo `LICENSE`.

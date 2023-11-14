# 🚀 Recepcao10 - Controle de Visitantes

## 📜 Descrição

Este repositório contém a API para o Controle de Visitantes do Recepcao10, um sistema desenvolvido com Node.js, Express, e SQLite para gerenciar o registro de visitantes em uma instituição.

<br>

## 🛠️ Tecnologias Utilizadas

- **Node.js e npm:** Ambiente de execução e gerenciador de pacotes para JavaScript.
- **Express:** Framework para construção de aplicativos web em Node.js.
- **SQLite:** Banco de dados relacional embarcado.
- **Prisma ORM:** Mapeamento de dados e interação com o banco de dados.
- **Typescript:** Superset para JavaScript que adiciona tipagem estática.
- **Express Async Errors:** Tratamento de erros assíncronos no Express.

<br>

## 📋 Pré-requisitos  

- **Node.js e npm:** Baixe em [https://nodejs.org/](https://nodejs.org/).
- **Git:** Baixe em [https://git-scm.com/](https://git-scm.com/).
- **Docker Desktop:** Necessário para o banco de dados PostgreSQL. Baixe em [https://www.docker.com/products/docker-desktop](https://www.docker.com/products/docker-desktop).
- **Ferramentas de Teste de API:** <br>
Postman [https://www.postman.com/downloads/](https://www.postman.com/downloads/)<br>
Insomnia [https://insomnia.rest/download/](https://insomnia.rest/download/)<br>
Ou Thunder Client (extensão no Visual Studio Code).


<br>

## ⚙️ Configuração do Projeto

1. **Clonar o Repositório:**

    ```bash
    git clone https://github.com/EdisonMatos/ExpressJs-RestAPI-Controle-de-visitantes-with-SQLite.git
    ```

2. **Instalar Dependências:**

    ```bash
    npm install
    ```

3. **Configurar o Banco de Dados**

   O banco de dados SQLite está configurado para armazenar os dados localmente no arquivo `dev.db`. Certifique-se de ter o SQLite instalado.

4. **Iniciar o Projeto**

    ```bash
    npm run dev
    ```

5. Acesse [http://localhost:3333](http://localhost:3333).

<br>

## 📘 Endpoints

### 1. Criação de Admin

Endpoint para criar um novo administrador.

```typescript
POST /admin

// Exemplo de Payload
{
  "email": "admin@example.com",
  "senha": "senhasegura"
}
```

### 2. Criação de Visitante

Endpoint para criar um novo visitante.

```typescript
POST /visitantes

// Exemplo de Payload
{
  "cidade": "São Paulo",
  "comQuemEstudaBiblia": "Maria",
  "contadorFrequencia": 5,
  "dataBatismo": "2023-11-15",
  "endereco": "Rua A, 123",
  "estudaBiblia": true,
  "frequentaPeqGrupo": true,
  "idade": 30,
  "nome": "João",
  "pequenoGrupo": "Grupo 1",
  "religiao": "Cristã",
  "sexo": "Masculino",
  "telefone": "123456789"
}
```

### 3. Status do Servidor

Endpoint para verificar o status do servidor.

```typescript
GET /

// Resposta esperada
{
  "status": "Servidor rodando."
}
```

<br>

## 🧑‍💻 Autores

Este projeto foi desenvolvido por Edison Matos.

![Edison Matos](https://avatars.githubusercontent.com/u/17342047?s=200)

Edison Matos é um entusiasta da tecnologia, desenvolvedor backend de software e apaixonado por criar soluções inovadoras.<br>
Saiba mais sobre no [GitHub](https://github.com/EdisonMatos) para descobrir mais projetos e colaborações.

<br>

## 🤝 Contribuição

Se deseja contribuir para o desenvolvimento deste projeto, siga os passos abaixo:

1. Faça um fork do projeto.
2. Crie uma branch para suas alterações: `git checkout -b feature/nome-da-sua-feature`.
3. Faça as alterações desejadas e commit: `git commit -m 'Adiciona nova feature'`.
4. Push para a branch: `git push origin feature/nome-da-sua-feature`.
5. Abra um pull request para revisão.

<br>

## 📄 Licença

Este projeto é licenciado sob a Licença MIT.

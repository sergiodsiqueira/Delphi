<p align="center">
  <img width="128" height="128" src="https://d2ohlsp9gwqc7h.cloudfront.net/images/logos/delphi-logo-128.webp">
</p>

## Projetos Delphi & Firemonkey
A grande maioria dos projetos encontrados aqui são objetos de estudo, provas de conceito (POC) ou exemplos práticos de utilização da linguagem que podem ser usados e compartilhados em toda a comunidade Delphi. Alguns projetos que envolvem consumo de APIs na sua grande maioria são publicas sem restrições. Como a grande parte dos projetos desse repositório são estudos não houve uma preocupação com o visual (UI/UX).


## Paradigmas & Arquitetura

A grande maioria dos projetos são baseados em *orientação a objetos*  **POO** e utilizada a arquitetura *model-view-controller* **MVC**. Porem não se apegue a este paradigma ou padrão.

## Banco de Dados

Em sua totalidade foram utilizados bancos de dados gratuitos como MySQL(MariaDB), PostgreSQL, SQLite e Firebird. Outra técnica utilizada foi usar o próprio *ClientDataset* gerando um .CDS

## Porque Delphi?
- O Delphi sempre figura entre as 20 linguagens mais utilizadas no mundo [Tiobe](https://www.tiobe.com/tiobe-index);
 - O Delphi é uma combinação de linguagem de programação e Software Development Kit (SDK), que permite o desenvolvimento multiplataforma para desktop, mobile, web, nuvem e ampla conectividade  [IoT](https://pt.wikipedia.org/wiki/Internet_das_coisas);
 - O Delphi é uma linguagem de programação relativamente simples, com sintaxe de código bem “clean” e de fácil entendimento;
 - O código escrito em Delphi é facilmente legível. Por exemplo, você pode concatenar textos (strings) utilizando o sinal “+” ao invés de ter que utilizar uma função;
 - A documentação do Delphi é bastante ampla e bem organizada, o que ajuda muito quem está iniciando;
 - A IDE do Delphi é bastante integrada e permite que você facilmente arraste e solte componentes para criar seus formulários;
 - O Delphi suporta teste em tempo real, o que faz com que você facilmente encontre e corrija erros de programação;
 - O Delphi possui o modelo de Desenvolvimento Rápido de Aplicação ([RAD – Rapid Application Development](https://pt.wikipedia.org/wiki/Desenvolvimento_r%C3%A1pido_de_aplica%C3%A7%C3%B5es)), o que facilita e agiliza muito no andamento do projeto.

## Quer iniciar na linguagem?

Segue alguns sites que podem te ajudar:
 - http://delphiparainiciantes.com.br/
 - https://universidadedelphi.com.br/
 - https://docwiki.embarcadero.com/ (Documentação Oficial)
 - https://www.uweraabe.de/Blog (Inglês)
 - https://www.delphibasics.info/ (Inglês)

## Hello World

Depois de instalado o Delphi e aberto a IDE sabe em quantos segundos demora pra você fazer seu primeiro "Hello World"? **27s**. Isso contando criar o projeto VCL, colocar um componente no formulário que aceite um click do botão, escrever o código e compilar. Fantástico não!
Exemplo do código:

    procedure TForm1.Button1Click(Sender: TObject);
    begin
      ShowMessage('Hello World!')
    end;
ou Console Application em **7s**

    program OlaMundo;
    uses
      Vcl.Dialogs; {ou FMX.Dialogs}
    begin
       ShowMessage('Olá, Mundo!');
    end.

## Dicas Profissionais

O Delphi e muito forte no Brasil e demanda profissionais que entendam a fundo da linguagem ou "SDK" como alguns preferem chamar, portanto conheça muito bem **POO**, paralelismo, integração de sistemas, arquitetura limpa e **SOLID**


# Notas
Se por acaso usar algum dos projetos desse repositório seria muito legal 👍 você mencionar o autor.
Caso precise de ajuda entre em contato ✉

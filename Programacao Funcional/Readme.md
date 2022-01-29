
## POC Programação Funcional
Desde a versão do Delphi 2010, já é possível trabalhar com paradigma de programação funcional. Mesmo o Delphi sendo uma linguagem imperativa e sem garbage colletor. 

> Não se apegue aos dados apresentados no campo *MEMO* ele não
> representa os campos de um SPED real.

![enter image description here](https://raw.githubusercontent.com/sergiodsiqueira/Delphi/main/Programacao%20Funcional/ProgramacaoFuncional.gif)


## Objetivo
Encadear os blocos de informações necessárias para gerar o SPED. Por que isso se torna interessante? Isolamos nas classes as regras de negocio (isso já existe POO 🚨) e o mais importante legibilidade do código. Além de controlar vazamentos de memoria com o uso de *Interfaces*.
- SPED (Classe que contém o cabeçalho do SPED)
- BLOCOK (Classe que contém informações do Bloco)
- BLOCOJ (Classe que contém informações do Bloco)

De forma *simplista* a ideia é que se preciso do Bloco K :

    SPED.BlocoK;

se também desejo o Bloco J encadeamos ele junto:

    SPED.BlocoK.BlocoJ.Gerar;

# Notas
Se por acaso usar algum dos projetos desse repositório seria muito legal 👍 você mencionar o autor.
Caso precise de ajuda entre em contato ✉

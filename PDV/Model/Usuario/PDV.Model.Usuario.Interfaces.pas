unit PDV.Model.Usuario.Interfaces;

interface

uses
  PDV.Model.Caixa.Interfaces;

type
  iModelUsuarioMetodos = interface;

  iModelUsuario = interface
    ['{E712E7C7-929E-4CC3-BD55-DB3EE563012F}']
    function Metodos: iModelUsuarioMetodos;

  end;

  iModelUsuarioMetodos = interface
    ['{ED6E207E-99FB-4C07-8384-BF24D27CF5C5}']
    function LoginCaixa: iModelCaixaMetodosAbrir;
    function FecharCaixa: iModelCaixaMetodosFechar;
  end;

implementation

end.

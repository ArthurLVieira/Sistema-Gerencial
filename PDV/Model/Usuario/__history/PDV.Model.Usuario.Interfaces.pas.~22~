unit PDV.Model.Usuario.Interfaces;

interface

uses
  PDV.Controller.Usuario.Operacoes.Interfaces;

type

  iModelUsuarioMetodos = interface;

  iModelUsuario = interface
    ['{E712E7C7-929E-4CC3-BD55-DB3EE563012F}']
    function Metodos(Usuario: iModelUsuarioMetodos): iModelUsuarioMetodos;
  end;

  iModelUsuarioMetodos = interface
    ['{F91917B6-DDF3-4DE8-BBD2-FC3A4349D42B}']
    function SetOeparacao(ControllerUsuarioOperacoes
      : iControllerUsuarioOperacoes): iModelUsuarioMetodos;
    function LoginDeCaixa: iModelUsuarioMetodos;
    function AberturaDeCaixa: iModelUsuarioMetodos;
    function FechamenoDeCaixa: iModelUsuarioMetodos;
    function DescontoNaVenda: iModelUsuarioMetodos;
    function DescontoNoItem: iModelUsuarioMetodos;
    function &End: iModelUsuarioMetodos;
  end;

implementation

end.

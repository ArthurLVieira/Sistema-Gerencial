unit PDV.Model.Usuario.Interfaces;

interface

type

  iModelUsuarioMetodos = interface;

  iModelUsuario = interface
    ['{E712E7C7-929E-4CC3-BD55-DB3EE563012F}']
    function Metodos(Usuario: iModelUsuarioMetodos): iModelUsuarioMetodos;
  end;

  iModelUsuarioMetodos = interface
    ['{F91917B6-DDF3-4DE8-BBD2-FC3A4349D42B}']
    function SetOeparacao(Value: string): iModelUsuarioMetodos;
    function LoginDeCaixa: iModelUsuarioMetodos;
    function AberturaDeCaixa: iModelUsuarioMetodos;
    function FechamenoDeCaixa: iModelUsuarioMetodos;
    function DescontoNaVenda: iModelUsuarioMetodos;
    function DescontoNoItem: iModelUsuarioMetodos;
  end;

implementation

end.

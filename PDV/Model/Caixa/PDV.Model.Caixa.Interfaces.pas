unit PDV.Model.Caixa.Interfaces;

interface

uses
  PDV.Model.Usuario.Interfaces;

type
  iModelCaixaMetodos = interface;
  iModelCaixaMetodosAbertura = interface;
  iModelCaixaMetodosFechamento = interface;
  iModelCaixaMetodosBloquear = interface;
  iModelCaixaMetodosDesbloquear = interface;
  iModelCaixaMetodosLogin = interface;

  iModelCaixa = interface
    ['{6F122064-B8C2-475B-9EC7-CC411CDB7829}']
    function Metodos: iModelCaixaMetodos;
  end;

  iModelCaixaMetodos = interface
    ['{2923D137-0051-40F1-939C-E4EFA8440AF5}']
    function Login: iModelCaixaMetodosLogin;
    function Abertura: iModelCaixaMetodosAbertura;
    function Fechamento: iModelCaixaMetodosFechamento;
    function Bloquear: iModelCaixaMetodosBloquear;
    function Desbloquear: iModelCaixaMetodosDesbloquear;
    function &End: iModelCaixa;
  end;

  iModelCaixaMetodosLogin = interface
    ['{C03A3BE3-09C7-4673-A32A-BBF4B67BE7FE}']
    function Usuario(Value: iModelUsuario): iModelCaixaMetodosLogin;
    function &End: iModelCaixaMetodos;
  end;

  iModelCaixaMetodosAbertura = interface
    ['{F920FE65-6A18-4D61-9CD0-466C52B2D05C}']
    function SetValorAbertura(Value: Currency): iModelCaixaMetodosAbertura;
    function SetOperadorAbertura(Value: iModelUsuario)
      : iModelCaixaMetodosAbertura;
    function &End: iModelCaixaMetodos;
  end;

  iModelCaixaMetodosFechamento = interface
    ['{99477BB7-A152-499E-A0ED-F4FC0A08A5C7}']
    function SetValorFechamento(Value: Currency): iModelCaixaMetodosFechamento;
    function SetOperadorFechamento(Value: iModelUsuario)
      : iModelCaixaMetodosFechamento;
    function &End: iModelCaixaMetodos;
  end;

  iModelCaixaMetodosBloquear = interface
    ['{561138A3-B8B0-4766-85AE-4950B73939B1}']
    function SetOperador(Value: iModelUsuario): iModelCaixaMetodosBloquear;
    function &End: iModelCaixaMetodos;
  end;

  iModelCaixaMetodosDesbloquear = interface
    ['{60C3D491-EB4D-4F3D-9629-10AAFBFF122B}']
    function SetOperador(Value: iModelUsuario): iModelCaixaMetodosDesbloquear;
    function &End: iModelCaixaMetodos;
  end;

implementation

end.

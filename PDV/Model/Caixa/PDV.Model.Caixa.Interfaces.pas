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
  iModelCaixaMetodosSangria = interface;
  iModelCaixaMetodosSuprimento = interface;

  iModelCaixa = interface
    ['{6F122064-B8C2-475B-9EC7-CC411CDB7829}']
    function SetState(Value: iModelCaixaMetodos): iModelCaixa;
    function Metodos: iModelCaixaMetodos;
  end;

  iModelCaixaMetodos = interface
    ['{2923D137-0051-40F1-939C-E4EFA8440AF5}']
    function Abertura: iModelCaixaMetodosAbertura;
    function Fechamento: iModelCaixaMetodosFechamento;
    function Bloquear: iModelCaixaMetodosBloquear;
    function Desbloquear: iModelCaixaMetodosDesbloquear;
    function Sangria: iModelCaixaMetodosSangria;
    function Suprimento: iModelCaixaMetodosSuprimento;
    function &End: iModelCaixa;
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

  iModelCaixaMetodosSangria = interface
    ['{DBCBA710-8BF1-4D7B-9362-D33527AE37BE}']
    function SetValorSangria(Value: Currency): iModelCaixaMetodosSangria;
    function SetFormaSangria(Value: string): iModelCaixaMetodosSangria;
    function SetOperador(Value: iModelUsuario): iModelCaixaMetodosSangria;
    function SetDescricao(Value: string): iModelCaixaMetodosSangria;
    function &End: iModelCaixaMetodos;
  end;

  iModelCaixaMetodosSuprimento = interface
    ['{0703751D-F8FF-488F-A54B-42448EE4B2A5}']
    function SetValorSuprimento(Value: Currency): iModelCaixaMetodosSuprimento;
    function SetOperador(Value: iModelUsuario): iModelCaixaMetodosSuprimento;
    function &End: iModelCaixaMetodos;
  end;

implementation

end.

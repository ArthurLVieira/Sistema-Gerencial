unit PDV.Model.Caixa.Metodos.Intefaces;

interface

uses
  PDV.Model.Caixa.Interfaces;

type

  iModelCaixaMetodosFactory = interface
    ['{BD9ECA9C-E25A-4544-B411-3529C8FEFA35}']
    function Abertura(Parent: iModelCaixa): iModelCaixaMetodosAbertura;
    function Fechamento(Parent: iModelCaixa): iModelCaixaMetodosFechamento;
    function Bloquear(Parent: iModelCaixa): iModelCaixaMetodosBloquear;
    function Desbloquear(Parent: iModelCaixa): iModelCaixaMetodosDesbloquear;
  end;

implementation

end.

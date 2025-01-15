unit PDV.Model.Caixa.State.Interfaces;

interface

uses
  PDV.Model.Caixa.Interfaces;

type

  iModelCaixaState = interface
    ['{84BF5152-0758-4AEA-BFA6-9502D6F5C2CD}']
    function Aberto: iModelCaixaMetodos;
    function Fechado: iModelCaixaMetodos;
    function Bloqueado: iModelCaixaMetodos;
  end;

implementation

end.

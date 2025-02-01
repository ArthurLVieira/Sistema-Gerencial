unit PDV.Model.Interfaces;

interface

uses
  PDV.Model.Usuario.Factory.Interfaces, PDV.Model.Caixa.Interfaces;

type

  iModelFacade = interface
    function Usuario: iModelUsuarioFactory;
    function Caixa: iModelCaixaFactory;
  end;

implementation

end.

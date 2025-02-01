unit PDV.Model.Facade;

interface

uses
  PDV.Model.Interfaces, PDV.Model.Usuario.Factory.Interfaces;

type

  TModelFacade = class(TInterfacedObject, iModelFacade)
  private

  public
    constructor Create;
    destructor Destroy; override;
    class function New: iModelFacade;
    function Usuario: iModelUsuarioFactory;
  end;

implementation

uses
  PDV.Model.Usuario.Factory;

{ TModelFacade }

constructor TModelFacade.Create;
begin

end;

destructor TModelFacade.Destroy;
begin

  inherited;
end;

class function TModelFacade.New: iModelFacade;
begin
  Result := Self.Create;
end;

function TModelFacade.Usuario: iModelUsuarioFactory;
begin
  Result := TModelUsuarioFactory.New;
end;

end.

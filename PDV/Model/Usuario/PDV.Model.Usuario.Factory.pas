unit PDV.Model.Usuario.Factory;

interface

uses
  PDV.Model.Usuario.Factory.Interfaces, PDV.Model.Usuario.Interfaces,
  PDV.Model.Usuario.Tipos.Interfaces;

type

  TModelUsuarioFactory = class(TInterfacedObject, iModelUsuarioFactory)
  private

  public
    constructor Create;
    destructor Destroy; override;
    class function New: iModelUsuarioFactory;
    function Usuario: iModelUsuario;
    function Tipos: imodelusuariotiposfactory;
  end;

implementation

uses
  PDV.Model.Usuario, PDV.Model.Usuario.Tipos.Factory;

{ TModelUsuarioFactory }

constructor TModelUsuarioFactory.Create;
begin

end;

destructor TModelUsuarioFactory.Destroy;
begin

  inherited;
end;

class function TModelUsuarioFactory.New: iModelUsuarioFactory;
begin
  Result := Self.Create;
end;

function TModelUsuarioFactory.Tipos: imodelusuariotiposfactory;
begin
  Result := TModelUsuarioTiposFactory.New;
end;

function TModelUsuarioFactory.Usuario: iModelUsuario;
begin
  Result := TModelUsuario.New;
end;

end.

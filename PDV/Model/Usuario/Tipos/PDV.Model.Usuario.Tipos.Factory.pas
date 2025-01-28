unit PDV.Model.Usuario.Tipos.Factory;

interface

uses
  PDV.Model.Usuario.Tipos.Interfaces, PDV.Model.Usuario.Interfaces,
  PDV.Controller.Usuario.Interfaces;

type

  TModelUsuarioTiposFactory = class(TInterfacedObject,
    iModelUsuarioTiposFactory)
  private

  public
    constructor Create;
    destructor Destroy; override;
    class function New: iModelUsuarioTiposFactory;
    function UsuarioTipo(UsuarioController: iControllerUsuario;
      TipoUsuario: TUsuarioTipo; Parent: iModelUsuario;
      NextResponsability: iModelUsuario): iModelUsuarioMetodos;
  end;

implementation

{ TModelUsuarioTiposFactory }

constructor TModelUsuarioTiposFactory.Create;
begin

end;

destructor TModelUsuarioTiposFactory.Destroy;
begin

  inherited;
end;

class function TModelUsuarioTiposFactory.New: iModelUsuarioTiposFactory;
begin
  Result := Self.Create;
end;

function TModelUsuarioTiposFactory.UsuarioTipo(UsuarioController
  : iControllerUsuario; TipoUsuario: TUsuarioTipo;
  Parent, NextResponsability: iModelUsuario): iModelUsuarioMetodos;
begin
  case TipoUsuario of
    Caixa:
      ;
    Fiscal:
      ;
    Gerente:
      ;
  end;
end;

end.

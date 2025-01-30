unit PDV.Model.Usuario.Tipos.Factory;

interface

uses
  PDV.Model.Usuario.Tipos.Interfaces, PDV.Model.Usuario.Interfaces,
  PDV.Controller.Usuario.Interfaces,
  PDV.Controller.Usuario.Operacoes.Interfaces, PDV.Model.Usuario.Tipos.Padrao;

type

  TModelUsuarioTiposFactory = class(TInterfacedObject,
    iModelUsuarioTiposFactory)
  private

  public
    constructor Create;
    destructor Destroy; override;
    class function New: iModelUsuarioTiposFactory;
    function UsuarioTipo(ControllerUsuarioOperacoes
      : iControllerUsuarioOperacoes; TipoUsuario: TUsuarioTipo;
      Parent: iModelUsuario; NextResponsability: iModelUsuarioMetodos = nil)
      : iModelUsuarioMetodos;
  end;

implementation

uses PDV.Model.Usuario.Tipos.Caixa, PDV.Model.Usuario.Tipos.Fiscal,
  PDV.Model.Usuario.Tipos.Gerente;

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

function TModelUsuarioTiposFactory.UsuarioTipo(ControllerUsuarioOperacoes
  : iControllerUsuarioOperacoes; TipoUsuario: TUsuarioTipo;
  Parent: iModelUsuario; NextResponsability: iModelUsuarioMetodos = nil)
  : iModelUsuarioMetodos;
var
  FNextResponsability: iModelUsuarioMetodos;
begin
  FNextResponsability := NextResponsability;
  if not Assigned(NextResponsability) then
    FNextResponsability := TModelUsuarioTipoPadrao.New(Parent);

  case TipoUsuario of
    Caixa:
      Result := TModelUsuarioTipoCaixa.New(Parent, FNextResponsability,
        ControllerUsuarioOperacoes);
    Fiscal:
      Result := TModelUsuarioTipoFiscal.New(Parent, FNextResponsability,
        ControllerUsuarioOperacoes);
    Gerente:
      Result := TModelUsuarioTipoGerente.New(Parent, FNextResponsability,
        ControllerUsuarioOperacoes);
  end;
end;

end.

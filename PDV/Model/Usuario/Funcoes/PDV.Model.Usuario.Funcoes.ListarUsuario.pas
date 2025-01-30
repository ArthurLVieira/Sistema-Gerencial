unit PDV.Model.Usuario.Funcoes.ListarUsuario;

interface

uses
  PDV.Model.Usuario.Funcoes.Interfaces, PDV.Model.Usuario.Interfaces;

type

  TModelUsuarioFuncoesListarUsuario = class(TInterfacedObject,
    iModelUsuarioFuncoesListarUsuario)
  private
    FParent: iModelUsuario;
  public
    constructor Create(Parent: iModelUsuario);
    destructor Destroy; override;
    class function New(Parent: iModelUsuario)
      : iModelUsuarioFuncoesListarUsuario;
    function &End: iModelUsuario;
  end;

implementation

{ TModelUsuarioFuncoesListarUsuario }

function TModelUsuarioFuncoesListarUsuario.&End: iModelUsuario;
begin
  Result := FParent;
end;

constructor TModelUsuarioFuncoesListarUsuario.Create(Parent: iModelUsuario);
begin
  FParent := Parent;
end;

destructor TModelUsuarioFuncoesListarUsuario.Destroy;
begin

  inherited;
end;

class function TModelUsuarioFuncoesListarUsuario.New(Parent: iModelUsuario)
  : iModelUsuarioFuncoesListarUsuario;
begin
  Result := Self.Create(Parent);
end;

end.

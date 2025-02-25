unit PDV.Model.Usuario.Funcoes;

interface

uses
  PDV.Model.Usuario.Funcoes.Interfaces, PDV.Model.Usuario.Interfaces;

type

  TModelUsuarioFuncoes = class(TInterfacedObject, iModelUsuarioFuncoes)
  private
    FParent: iModelUsuario;
  public
    constructor Create(Parent: iModelUsuario);
    destructor Destroy; override;
    class function New(Parent: iModelUsuario): iModelUsuarioFuncoes;
    function ListarUsuario: iModelUsuarioFuncoesListarUsuario;
  end;

implementation

uses
  PDV.Model.Usuario.Funcoes.ListarUsuario;

{ TModelUsuarioFuncoes }

constructor TModelUsuarioFuncoes.Create(Parent: iModelUsuario);
begin
  FParent := Parent;
end;

destructor TModelUsuarioFuncoes.Destroy;
begin

  inherited;
end;

function TModelUsuarioFuncoes.ListarUsuario: iModelUsuarioFuncoesListarUsuario;
begin
  Result := TModelUsuarioFuncoesListarUsuario.New(Self, FParent);
end;

class function TModelUsuarioFuncoes.New(Parent: iModelUsuario)
  : iModelUsuarioFuncoes;
begin
  Result := Self.Create(Parent);
end;

end.

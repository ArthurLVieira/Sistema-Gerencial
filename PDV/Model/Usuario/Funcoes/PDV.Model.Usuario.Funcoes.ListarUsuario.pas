unit PDV.Model.Usuario.Funcoes.ListarUsuario;

interface

uses
  PDV.Model.Usuario.Funcoes.Interfaces, PDV.Model.Usuario.Interfaces;

type

  TModelUsuarioFuncoesListarUsuario = class(TInterfacedObject,
    iModelUsuarioFuncoesListarUsuario)
  private
    FParent: iModelUsuarioFuncoes;
    FModelUsuario: iModelUsuario;
  public
    constructor Create(Parent: iModelUsuarioFuncoes;
      ModelUsuario: iModelUsuario);
    destructor Destroy; override;
    class function New(Parent: iModelUsuarioFuncoes;
      ModelUsuario: iModelUsuario): iModelUsuarioFuncoesListarUsuario;
  end;

implementation

{ TModelUsuarioFuncoesListarUsuario }

constructor TModelUsuarioFuncoesListarUsuario.Create
  (Parent: iModelUsuarioFuncoes; ModelUsuario: iModelUsuario);
begin
  FParent := Parent;
  FModelUsuario := ModelUsuario;
end;

destructor TModelUsuarioFuncoesListarUsuario.Destroy;
begin

  inherited;
end;

class function TModelUsuarioFuncoesListarUsuario.New
  (Parent: iModelUsuarioFuncoes; ModelUsuario: iModelUsuario)
  : iModelUsuarioFuncoesListarUsuario;
begin
  Result := Self.Create(Parent, ModelUsuario);
end;

end.

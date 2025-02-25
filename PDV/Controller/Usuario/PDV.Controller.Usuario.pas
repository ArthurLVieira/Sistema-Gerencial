unit PDV.Controller.Usuario;

interface

uses
  PDV.Controller.Usuario.Interfaces,
  PDV.Controller.Usuario.Operacoes.Interfaces, PDV.Model.Usuario.Interfaces,
  PDV.Model.Usuario.Tipos.Interfaces;

type

  TControllerUsuario = class(TInterfacedObject, iControllerUsuario,
    iControllerUsuarioMetodos)
  private
    FModelUsuario: iModelUsuario;
  public
    constructor Create;
    destructor Destroy; override;
    class function New: iControllerUsuario;
    function Metodos: iControllerUsuarioMetodos;
    function Operacoes: iControllerUsuarioOperacoes;

    { iControllerUsuarioMetodos }
    function Caixa: iModelUsuarioMetodos;
    function Fiscal: iModelUsuarioMetodos;
    function Gerente: iModelUsuarioMetodos;

  end;

implementation

uses
  PDV.Controller.Usuario.Operacoes, PDV.Model.Facade;

{ TControllerUsuario }

function TControllerUsuario.Caixa: iModelUsuarioMetodos;
begin
  Result := TModelFacade.New.Usuario.Usuario.Metodos
    (TModelFacade.New.Usuario.Tipos.UsuarioTipo(Self.Operacoes,
    TUsuarioTipo.Caixa, FModelUsuario, TModelFacade.New.Usuario.Usuario.Metodos
    (TModelFacade.New.Usuario.Tipos.UsuarioTipo(Self.Operacoes,
    TUsuarioTipo.Fiscal, FModelUsuario, TModelFacade.New.Usuario.Usuario.Metodos
    (TModelFacade.New.Usuario.Tipos.UsuarioTipo(Self.Operacoes,
    TUsuarioTipo.Gerente, FModelUsuario))))));
end;

constructor TControllerUsuario.Create;
begin

end;

destructor TControllerUsuario.Destroy;
begin

  inherited;
end;

function TControllerUsuario.Fiscal: iModelUsuarioMetodos;
begin
  Result := TModelFacade.New.Usuario.Usuario.Metodos
    (TModelFacade.New.Usuario.Tipos.UsuarioTipo(Self.Operacoes,
    TUsuarioTipo.Fiscal, FModelUsuario, TModelFacade.New.Usuario.Usuario.Metodos
    (TModelFacade.New.Usuario.Tipos.UsuarioTipo(Self.Operacoes,
    TUsuarioTipo.Gerente, FModelUsuario))));
end;

function TControllerUsuario.Gerente: iModelUsuarioMetodos;
begin
  Result := TModelFacade.New.Usuario.Usuario.Metodos
    (TModelFacade.New.Usuario.Tipos.UsuarioTipo(Self.Operacoes,
    TUsuarioTipo.Gerente, FModelUsuario));
end;

function TControllerUsuario.Metodos: iControllerUsuarioMetodos;
begin
  Result := Self;
end;

class function TControllerUsuario.New: iControllerUsuario;
begin
  Result := Self.Create;
end;

function TControllerUsuario.Operacoes: iControllerUsuarioOperacoes;
begin
  Result := TControllerUsuarioOperacoes.New;
end;

end.

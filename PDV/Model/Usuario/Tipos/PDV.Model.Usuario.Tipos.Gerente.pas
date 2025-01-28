unit PDV.Model.Usuario.Tipos.Gerente;

interface

uses
  PDV.Model.Usuario.Interfaces, PDV.Controller.Usuario.Operacoes.Interfaces;

type

  TModelUsuarioTipoGerente = class(TInterfacedObject, iModelUsuarioMetodos)
  private
    FParent: iModelUsuario;
    FNextResponsability: iModelUsuarioMetodos;
    FControllerUsuarioOperacoes: iControllerUsuarioOperacoes;
  public
    constructor Create(Parent: iModelUsuario); overload;
    constructor Create(Parent: iModelUsuario;
      NextResponsability: iModelUsuarioMetodos); overload;
    constructor Create(Parent: iModelUsuario;
      NextResponsability: iModelUsuarioMetodos;
      ControllerUsuarioOperacoes: iControllerUsuarioOperacoes); overload;
    destructor Destroy; override;
    class function New(Parent: iModelUsuario): iModelUsuarioMetodos; overload;
    class function New(Parent: iModelUsuario;
      NextResponsability: iModelUsuarioMetodos): iModelUsuarioMetodos; overload;
    class function New(Parent: iModelUsuario;
      NextResponsability: iModelUsuarioMetodos;
      ControllerUsuarioOperacoes: iControllerUsuarioOperacoes)
      : iModelUsuarioMetodos; overload;

    function SetOeparacao(ControllerUsuarioOperacoes
      : iControllerUsuarioOperacoes): iModelUsuarioMetodos;
    function LoginDeCaixa: iModelUsuarioMetodos;
    function AberturaDeCaixa: iModelUsuarioMetodos;
    function FechamenoDeCaixa: iModelUsuarioMetodos;
    function DescontoNaVenda: iModelUsuarioMetodos;
    function DescontoNoItem: iModelUsuarioMetodos;
    function &End: iModelUsuarioMetodos;
  end;

implementation

{ TModelUsuarioTipoGerente }

function TModelUsuarioTipoGerente.&End: iModelUsuarioMetodos;
begin
  Result := Self;
end;

function TModelUsuarioTipoGerente.AberturaDeCaixa: iModelUsuarioMetodos;
begin
  Result := Self;
  FNextResponsability.AberturaDeCaixa;
end;

constructor TModelUsuarioTipoGerente.Create(Parent: iModelUsuario;
  NextResponsability: iModelUsuarioMetodos;
  ControllerUsuarioOperacoes: iControllerUsuarioOperacoes);
begin
  FControllerUsuarioOperacoes := ControllerUsuarioOperacoes;
  FParent := Parent;
  FNextResponsability := NextResponsability;
end;

constructor TModelUsuarioTipoGerente.Create(Parent: iModelUsuario;
  NextResponsability: iModelUsuarioMetodos);
begin
  FParent := Parent;
  FNextResponsability := NextResponsability;
end;

constructor TModelUsuarioTipoGerente.Create(Parent: iModelUsuario);
begin
  FParent := Parent;
end;

function TModelUsuarioTipoGerente.DescontoNaVenda: iModelUsuarioMetodos;
begin

end;

function TModelUsuarioTipoGerente.DescontoNoItem: iModelUsuarioMetodos;
begin

end;

destructor TModelUsuarioTipoGerente.Destroy;
begin

  inherited;
end;

function TModelUsuarioTipoGerente.FechamenoDeCaixa: iModelUsuarioMetodos;
begin

end;

function TModelUsuarioTipoGerente.LoginDeCaixa: iModelUsuarioMetodos;
begin

end;

class function TModelUsuarioTipoGerente.New(Parent: iModelUsuario)
  : iModelUsuarioMetodos;
begin
  Result := Self.Create(Parent);
end;

class function TModelUsuarioTipoGerente.New(Parent: iModelUsuario;
  NextResponsability: iModelUsuarioMetodos;
  ControllerUsuarioOperacoes: iControllerUsuarioOperacoes)
  : iModelUsuarioMetodos;
begin
  Result := Self.Create(Parent, NextResponsability, ControllerUsuarioOperacoes);
end;

class function TModelUsuarioTipoGerente.New(Parent: iModelUsuario;
  NextResponsability: iModelUsuarioMetodos): iModelUsuarioMetodos;
begin
  Result := Self.Create(Parent, NextResponsability);
end;

function TModelUsuarioTipoGerente.SetOeparacao(ControllerUsuarioOperacoes
  : iControllerUsuarioOperacoes): iModelUsuarioMetodos;
begin

end;

end.

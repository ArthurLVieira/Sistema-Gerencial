unit PDV.Model.Usuario.Tipos.Fiscal;

interface

uses
  PDV.Model.Usuario.Interfaces, PDV.Controller.Usuario.Operacoes.Interfaces;

type

  TModelUsuarioTipoFiscal = class(TInterfacedObject, iModelUsuarioMetodos)
  private
    FParent: iModelUsuario;
    FNextResponsability: iModelUsuarioMetodos;
    FControllerUsuarioOperacoes: iControllerUsuarioOperacoes;
  public
    constructor Create(Parent: iModelUsuario); overload;
    constructor Create(Parent: iModelUsuario;
      NextResponsability: iModelUsuarioMetodos); overload;
    constructor Create(ControllerUsuario: iControllerUsuarioOperacoes;
      Parent: iModelUsuario; NextResponsability: iModelUsuarioMetodos);
      overload;
    destructor Destroy; override;
    class function New(Parent: iModelUsuario): iModelUsuarioMetodos; overload;
    class function New(Parent: iModelUsuario;
      NextResponsability: iModelUsuarioMetodos): iModelUsuarioMetodos; overload;
    class function New(ControllerUsuario: iControllerUsuarioOperacoes;
      Parent: iModelUsuario; NextResponsability: iModelUsuarioMetodos)
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

{ TModelUsuarioTipoFiscal }

function TModelUsuarioTipoFiscal.&End: iModelUsuarioMetodos;
begin
  Result := Self;
end;

function TModelUsuarioTipoFiscal.AberturaDeCaixa: iModelUsuarioMetodos;
begin
  Result := Self;
  FNextResponsability.AberturaDeCaixa;
end;

constructor TModelUsuarioTipoFiscal.Create(ControllerUsuario
  : iControllerUsuarioOperacoes; Parent: iModelUsuario;
  NextResponsability: iModelUsuarioMetodos);
begin
  FControllerUsuarioOperacoes := ControllerUsuario;
  FParent := Parent;
  FNextResponsability := NextResponsability;
end;

constructor TModelUsuarioTipoFiscal.Create(Parent: iModelUsuario;
  NextResponsability: iModelUsuarioMetodos);
begin
  FParent := Parent;
  FNextResponsability := NextResponsability;
end;

constructor TModelUsuarioTipoFiscal.Create(Parent: iModelUsuario);
begin
  FParent := Parent;
end;

function TModelUsuarioTipoFiscal.DescontoNaVenda: iModelUsuarioMetodos;
begin

end;

function TModelUsuarioTipoFiscal.DescontoNoItem: iModelUsuarioMetodos;
begin

end;

destructor TModelUsuarioTipoFiscal.Destroy;
begin

  inherited;
end;

function TModelUsuarioTipoFiscal.FechamenoDeCaixa: iModelUsuarioMetodos;
begin

end;

function TModelUsuarioTipoFiscal.LoginDeCaixa: iModelUsuarioMetodos;
begin

end;

class function TModelUsuarioTipoFiscal.New(Parent: iModelUsuario)
  : iModelUsuarioMetodos;
begin
  Result := Self.Create(Parent);
end;

class function TModelUsuarioTipoFiscal.New(ControllerUsuario
  : iControllerUsuarioOperacoes; Parent: iModelUsuario;
  NextResponsability: iModelUsuarioMetodos): iModelUsuarioMetodos;
begin
  Result := Self.Create(ControllerUsuario, Parent, NextResponsability);
end;

class function TModelUsuarioTipoFiscal.New(Parent: iModelUsuario;
  NextResponsability: iModelUsuarioMetodos): iModelUsuarioMetodos;
begin
  Result := Self.Create(Parent, NextResponsability);
end;

function TModelUsuarioTipoFiscal.SetOeparacao(ControllerUsuarioOperacoes
  : iControllerUsuarioOperacoes): iModelUsuarioMetodos;
begin

end;

end.

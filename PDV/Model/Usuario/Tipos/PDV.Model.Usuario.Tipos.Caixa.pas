unit PDV.Model.Usuario.Tipos.Caixa;

interface

uses
  PDV.Model.Usuario.Interfaces, PDV.Controller.Usuario.Operacoes.Interfaces;

type

  TModelUsuarioTipoCaixa = class(TInterfacedObject, iModelUsuarioMetodos)
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

{ TModelUsuarioTipoCaixa }

function TModelUsuarioTipoCaixa.&End: iModelUsuarioMetodos;
begin
  Result := Self;
end;

function TModelUsuarioTipoCaixa.AberturaDeCaixa: iModelUsuarioMetodos;
begin
  Result := Self;
  FNextResponsability.AberturaDeCaixa;
end;

constructor TModelUsuarioTipoCaixa.Create(Parent: iModelUsuario;
  NextResponsability: iModelUsuarioMetodos);
begin
  FParent := Parent;
  FNextResponsability := NextResponsability;
end;

constructor TModelUsuarioTipoCaixa.Create(Parent: iModelUsuario);
begin
  FParent := Parent;
end;

function TModelUsuarioTipoCaixa.DescontoNaVenda: iModelUsuarioMetodos;
begin

end;

function TModelUsuarioTipoCaixa.DescontoNoItem: iModelUsuarioMetodos;
begin

end;

destructor TModelUsuarioTipoCaixa.Destroy;
begin

  inherited;
end;

function TModelUsuarioTipoCaixa.FechamenoDeCaixa: iModelUsuarioMetodos;
begin

end;

function TModelUsuarioTipoCaixa.LoginDeCaixa: iModelUsuarioMetodos;
begin
  Result := Self;

end;

class function TModelUsuarioTipoCaixa.New(Parent: iModelUsuario)
  : iModelUsuarioMetodos;
begin
  Result := Self.Create(Parent);
end;

class function TModelUsuarioTipoCaixa.New(Parent: iModelUsuario;
  NextResponsability: iModelUsuarioMetodos;
  ControllerUsuarioOperacoes: iControllerUsuarioOperacoes)
  : iModelUsuarioMetodos;
begin
  Result := Self.Create(Parent, NextResponsability, ControllerUsuarioOperacoes);
end;

class function TModelUsuarioTipoCaixa.New(Parent: iModelUsuario;
  NextResponsability: iModelUsuarioMetodos): iModelUsuarioMetodos;
begin
  Result := Self.Create(Parent, NextResponsability);
end;

function TModelUsuarioTipoCaixa.SetOeparacao(ControllerUsuarioOperacoes
  : iControllerUsuarioOperacoes): iModelUsuarioMetodos;
begin
  Result := Self;
  FControllerUsuarioOperacoes := ControllerUsuarioOperacoes;
end;

constructor TModelUsuarioTipoCaixa.Create(Parent: iModelUsuario;
  NextResponsability: iModelUsuarioMetodos;
  ControllerUsuarioOperacoes: iControllerUsuarioOperacoes);
begin
  FControllerUsuarioOperacoes := ControllerUsuarioOperacoes;
  FParent := Parent;
  FNextResponsability := NextResponsability;
end;

end.

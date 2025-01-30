unit PDV.Model.Usuario.Tipos.Padrao;

interface

uses
  PDV.Model.Usuario.Interfaces, PDV.Controller.Usuario.Operacoes.Interfaces;

type

  TModelUsuarioTipoPadrao = class(TInterfacedObject, iModelUsuarioMetodos)
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

{ TModelUsuarioTipoPadrao }

function TModelUsuarioTipoPadrao.&End: iModelUsuarioMetodos;
begin
  Result := Self;
end;

function TModelUsuarioTipoPadrao.AberturaDeCaixa: iModelUsuarioMetodos;
begin
  Result := Self;
  FNextResponsability.AberturaDeCaixa;
end;

constructor TModelUsuarioTipoPadrao.Create(Parent: iModelUsuario;
  NextResponsability: iModelUsuarioMetodos;
  ControllerUsuarioOperacoes: iControllerUsuarioOperacoes);
begin
  FControllerUsuarioOperacoes := ControllerUsuarioOperacoes;
  FParent := Parent;
  FNextResponsability := NextResponsability;
end;

constructor TModelUsuarioTipoPadrao.Create(Parent: iModelUsuario;
  NextResponsability: iModelUsuarioMetodos);
begin
  FParent := Parent;
  FNextResponsability := NextResponsability;
end;

constructor TModelUsuarioTipoPadrao.Create(Parent: iModelUsuario);
begin
  FParent := Parent;
end;

function TModelUsuarioTipoPadrao.DescontoNaVenda: iModelUsuarioMetodos;
begin

end;

function TModelUsuarioTipoPadrao.DescontoNoItem: iModelUsuarioMetodos;
begin

end;

destructor TModelUsuarioTipoPadrao.Destroy;
begin

  inherited;
end;

function TModelUsuarioTipoPadrao.FechamenoDeCaixa: iModelUsuarioMetodos;
begin

end;

function TModelUsuarioTipoPadrao.LoginDeCaixa: iModelUsuarioMetodos;
begin

end;

class function TModelUsuarioTipoPadrao.New(Parent: iModelUsuario)
  : iModelUsuarioMetodos;
begin
  Result := Self.Create(Parent);
end;

class function TModelUsuarioTipoPadrao.New(Parent: iModelUsuario;
  NextResponsability: iModelUsuarioMetodos;
  ControllerUsuarioOperacoes: iControllerUsuarioOperacoes)
  : iModelUsuarioMetodos;
begin
  Result := Self.Create(Parent, NextResponsability, ControllerUsuarioOperacoes);
end;

class function TModelUsuarioTipoPadrao.New(Parent: iModelUsuario;
  NextResponsability: iModelUsuarioMetodos): iModelUsuarioMetodos;
begin
  Result := Self.Create(Parent, NextResponsability);
end;

function TModelUsuarioTipoPadrao.SetOeparacao(ControllerUsuarioOperacoes
  : iControllerUsuarioOperacoes): iModelUsuarioMetodos;
begin

end;

end.

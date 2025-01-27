unit PDV.Model.Usuario.Tipos.Caixa;

interface

uses
  PDV.Model.Usuario.Interfaces, PDV.Model.Usuario.Metodos.Interfaces;

type

  TModelUsuarioTipoCaixa = class(TInterfacedObject, iModelUsuarioMetodos)
  private
    FParent: iModelUsuario;
    FNextResponsability: iModelUsuarioMetodos;
  public
    constructor Create(Parent: iModelUsuario;
      NextResponsability: iModelUsuarioMetodos);
    destructor Destroy; override;
    class function New(Parent: iModelUsuario;
      NextResponsability: iModelUsuarioMetodos): iModelUsuarioMetodos;
    function LoginDeCaixa: iModelUsuarioMetodosLoginDeCaixa;
    function AbrirCaixa: iModelUSuarioMetodosAbrirCaixa;
    function FecharCaixa: iModelUsuarioMetodosFecharCaixa;
    function DescontoNaVenda: iModelUsuarioMetodosDescontoNaVenda;
    function DescontoNoItem: iModelUsuarioMetodosDescontoNoItem;
  end;

implementation

{ TModelUsuarioTipoCaixa }

function TModelUsuarioTipoCaixa.AbrirCaixa: iModelUSuarioMetodosAbrirCaixa;
begin

end;

constructor TModelUsuarioTipoCaixa.Create(Parent: iModelUsuario;
  NextResponsability: iModelUsuarioMetodos);
begin
  FParent := Parent;
  FNextResponsability := NextResponsability;
end;

function TModelUsuarioTipoCaixa.DescontoNaVenda
  : iModelUsuarioMetodosDescontoNaVenda;
begin

end;

function TModelUsuarioTipoCaixa.DescontoNoItem
  : iModelUsuarioMetodosDescontoNoItem;
begin

end;

destructor TModelUsuarioTipoCaixa.Destroy;
begin

  inherited;
end;

function TModelUsuarioTipoCaixa.FecharCaixa: iModelUsuarioMetodosFecharCaixa;
begin

end;

function TModelUsuarioTipoCaixa.LoginDeCaixa: iModelUsuarioMetodosLoginDeCaixa;
begin

end;

class function TModelUsuarioTipoCaixa.New(Parent: iModelUsuario;
  NextResponsability: iModelUsuarioMetodos): iModelUsuarioMetodos;
begin
  Result := Self.Create(Parent, NextResponsability);
end;

end.

unit PDV.Model.Usuario.Tipos.Caixa;

interface

uses
  PDV.Model.Usuario.Interfaces;

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
    function SetOeparacao(Value: string): iModelUsuarioMetodos;
    function LoginDeCaixa: iModelUsuarioMetodos;
    function AberturaDeCaixa: iModelUsuarioMetodos;
    function FechamenoDeCaixa: iModelUsuarioMetodos;
    function DescontoNaVenda: iModelUsuarioMetodos;
    function DescontoNoItem: iModelUsuarioMetodos;
  end;

implementation

{ TModelUsuarioTipoCaixa }

constructor TModelUsuarioTipoCaixa.Create(Parent: iModelUsuario;
  NextResponsability: iModelUsuarioMetodos);
begin
  FParent := Parent;
  FNextResponsability := NextResponsability;
end;

destructor TModelUsuarioTipoCaixa.Destroy;
begin

  inherited;
end;

class function TModelUsuarioTipoCaixa.New(Parent: iModelUsuario;
  NextResponsability: iModelUsuarioMetodos): iModelUsuarioMetodos;
begin
  Result := Self.Create(Parent, NextResponsability);
end;

end.

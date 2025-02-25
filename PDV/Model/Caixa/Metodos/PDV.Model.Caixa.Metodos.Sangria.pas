unit PDV.Model.Caixa.Metodos.Sangria;

interface

uses
  PDV.Model.Caixa.Interfaces, PDV.Model.Usuario.Interfaces;

type

  TModelCaixaMetodosSangria = class(TInterfacedObject,
    iModelCaixaMetodosSangria)
  private
    Fparent: iModelCaixa;
  public
    constructor Create(Parent: iModelCaixa);
    destructor Destroy; override;
    class function New(Parent: iModelCaixa): iModelCaixaMetodosSangria;
    function SetValorSangria(Value: Currency): iModelCaixaMetodosSangria;
    function SetFormaSangria(Value: string): iModelCaixaMetodosSangria;
    function SetOperador(Value: iModelUsuario): iModelCaixaMetodosSangria;
    function SetDescricao(Value: string): iModelCaixaMetodosSangria;
    function &End: iModelCaixaMetodos;
  end;

implementation

{ TModelCaixaMetodosSangria }

function TModelCaixaMetodosSangria.&End: iModelCaixaMetodos;
begin

end;

constructor TModelCaixaMetodosSangria.Create(Parent: iModelCaixa);
begin
  Fparent := Parent;
end;

destructor TModelCaixaMetodosSangria.Destroy;
begin

  inherited;
end;

class function TModelCaixaMetodosSangria.New(Parent: iModelCaixa)
  : iModelCaixaMetodosSangria;
begin
  Result := Self.Create(Parent);
end;

function TModelCaixaMetodosSangria.SetDescricao(Value: string)
  : iModelCaixaMetodosSangria;
begin

end;

function TModelCaixaMetodosSangria.SetFormaSangria(Value: string)
  : iModelCaixaMetodosSangria;
begin

end;

function TModelCaixaMetodosSangria.SetOperador(Value: iModelUsuario)
  : iModelCaixaMetodosSangria;
begin

end;

function TModelCaixaMetodosSangria.SetValorSangria(Value: Currency)
  : iModelCaixaMetodosSangria;
begin

end;

end.

unit PDV.Model.Caixa.Factory;

interface

uses
  PDV.Model.Caixa.Interfaces;

type

  TModelCaixaFactory = class(TInterfacedObject, iModelCaixaFactory)
  private

  public
    constructor Create;
    destructor Destroy; override;
    class function New: iModelCaixaFactory;
    function Caixa: iModelCaixa;

  end;

implementation

uses
  PDV.Model.Caixa;

{ TModelCaixaFactory }

function TModelCaixaFactory.Caixa: iModelCaixa;
begin
  Result := TModelCaixa.New;
end;

constructor TModelCaixaFactory.Create;
begin

end;

destructor TModelCaixaFactory.Destroy;
begin

  inherited;
end;

class function TModelCaixaFactory.New: iModelCaixaFactory;
begin
  Result := Self.Create;
end;

end.

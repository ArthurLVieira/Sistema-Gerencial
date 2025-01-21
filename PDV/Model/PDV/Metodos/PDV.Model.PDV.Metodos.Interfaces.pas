unit PDV.Model.PDV.Metodos.Interfaces;

interface

uses
  PDV.Model.PDV.Interfaces;

type

  iModelPDVMetodosFactory = interface
    ['{57843779-77FD-4E94-9305-CD76F06BD907}']
    function Login(Parent: iModelPDV): iModelPDVMetodosLogin;
  end;

implementation

end.

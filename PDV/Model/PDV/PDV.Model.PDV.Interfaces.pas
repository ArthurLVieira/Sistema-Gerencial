unit PDV.Model.PDV.Interfaces;

interface

uses
  PDV.Model.Usuario.Interfaces;

type
  iModelPDVMetodosLogin = interface;
  iModelPDVMetodos = interface;

  iModelPDV = interface
    ['{D6B27104-D2A2-4DB0-A519-80D08798297E}']
    function Metodos: iModelPDVMetodos;
  end;

  iModelPDVMetodos = interface
    ['{8EC00686-A9A6-46F9-9D41-64B973D57AAB}']
    function Login: iModelPDVMetodosLogin;
  end;

  iModelPDVMetodosLogin = interface
    ['{EEB2FBE2-1F10-4185-8C46-73C1BEC208C4}']
    function SetOperador(Value: iModelUsuario): iModelPDVMetodosLogin;
    function &End: iModelPDVMetodos;
  end;

implementation

end.

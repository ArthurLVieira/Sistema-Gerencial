unit PDV.Controller.Forms;

interface

type

  TContrllerForms = class
    class procedure CreateForm(ClassName: string);
  end;

implementation

uses
  FMX.Types, FMX.Forms, System.Classes, System.SysUtils;

{ TContrllerForms }

class procedure TContrllerForms.CreateForm(ClassName: string);
var
  ObjFMX: TFmxObjectClass;
  NewForm: TCustomForm;
begin
  ObjFMX := TFmxObjectClass(GetClass(ClassName));
  try
    NewForm := (ObjFMX.Create(nil) as TCustomForm);
    try
      NewForm.ShowModal;
    finally
      NewForm.Free;
    end;
  except
    raise Exception.Create('Objeto não existe!');
  end;

end;

end.

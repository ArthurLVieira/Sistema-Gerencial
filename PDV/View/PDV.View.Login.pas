unit PDV.View.Login;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Layouts, FMX.Effects, FMX.Controls.Presentation, FMX.StdCtrls, FMX.Edit,
  FMX.ListBox;

type
  TFrmLogin = class(TForm)
    Layout1: TLayout;
    Rectangle2: TRectangle;
    Layout6: TLayout;
    Rectangle3: TRectangle;
    ShadowEffect1: TShadowEffect;
    Layout3: TLayout;
    Rectangle1: TRectangle;
    Layout8: TLayout;
    Image1: TImage;
    LblTitle: TLabel;
    Layout2: TLayout;
    Layout4: TLayout;
    Rectangle4: TRectangle;
    Label6: TLabel;
    ComboBox1: TComboBox;
    LblConfimSenha: TLabel;
    Layout10: TLayout;
    ShadowEffect2: TShadowEffect;
    Label1: TLabel;
    edtQntProduto: TEdit;
    Label2: TLabel;
    Layout5: TLayout;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmLogin: TFrmLogin;

implementation

{$R *.fmx}

end.

unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, sButton, sRadioButton,
  sGroupBox, sEdit, Unit1;

type
  TForm2 = class(TForm)
    sEdit1: TsEdit;
    sEdit2: TsEdit;
    sRadioGroup1: TsRadioGroup;
    sRadioButton1: TsRadioButton;
    sRadioButton2: TsRadioButton;
    sButton1: TsButton;
    procedure sButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.sButton1Click(Sender: TObject);
var
  FinalENC: String;
  FInalENC2: String;
begin
  FinalENC := sEdit1.Text;
  FinalENC := FinalENC + '|' + sEdit2.Text ;

  if self.sRadioButton1.checked then
  begin
    FinalENC := FinalENC + '|File';
  end
  else if self.sRadioButton2.Checked then
  begin
    FinalENC := FinalENC + '|URL';
  end;

  form1.Codec1.EncryptString(FinalENC, FInalENC2, TEncoding.UTF8);
  Form1.RichEdit1.Lines.Add(FInalENC2);


  self.sEdit1.Text := '';
  self.sEdit2.Text := '';

  self.sRadioButton1.Checked := True;


end;

end.

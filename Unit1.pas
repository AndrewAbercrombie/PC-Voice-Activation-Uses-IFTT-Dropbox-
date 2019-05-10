unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, shellapi, Vcl.ComCtrls,
  sSkinManager, sListView, Vcl.StdCtrls, uTPLb_CryptographicLibrary,
  uTPLb_BaseNonVisualComponent, uTPLb_Codec, Vcl.Menus, sEdit, sButton;

type
  TForm1 = class(TForm)
    Timer1: TTimer;
    sSkinManager1: TsSkinManager;
    sListView1: TsListView;
    RichEdit1: TRichEdit;
    Codec1: TCodec;
    CryptographicLibrary1: TCryptographicLibrary;
    PopupMenu1: TPopupMenu;
    A1: TMenuItem;
    N1: TMenuItem;
    sButton1: TsButton;
    Button1: TButton;
    Edit1: TEdit;
    procedure Timer1Timer(Sender: TObject);
    procedure A1Click(Sender: TObject);
    procedure RichEdit1Change(Sender: TObject);
    procedure sButton1Click(Sender: TObject);
    function Decrypt_BROKEN_ASS_TEXT(text:string) : string;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);


  private
    { Private declarations }
  public
    doShit: boolean;
    configPath: string;
    LINE: string;
    Working: boolean;

  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses Unit2;

procedure TForm1.Button1Click(Sender: TObject);
var
  TTD: string;
  PlainSTr: string;
begin
  TTD := edit1.text;
  PlainStr := '';

  codec1.DecryptString(PlainSTR,TTD , TENCODING.utf8);

  edit1.Text := plainSTR;

  working := false;
end;

function TForm1.Decrypt_BROKEN_ASS_TEXT(text:string) : string;
var
PlainNTS: string;
begin
  Codec1.DecryptString(PlainNTS, Text, TEncoding.UTF8);
  result := PlainNTS
end;

procedure UpdateFile(path: string);
var
  LI: TListItem;
  newFile: TextFile;
  X: Integer;
  i: Integer;
  TTD: String;
  PlainNTS: string;
  SL: TStringList;
begin



  Try
    DeleteFile(path);
  Finally

  End;

  System.AssignFile(newFile, path);
  System.Rewrite(newFile);
  WriteLn(newFile, Form1.RichEdit1.Text);
  System.CloseFile(newFile);

  LI := Form1.sListView1.Items.Add;

  if trim(Form1.RichEdit1.Text) <> '' then
  begin
    for i := 0 to Form1.RichEdit1.Lines.Count - 1 do
    begin
      form1.working := true;
      TTD := Form1.RichEdit1.Lines[i];

      ShowMessage(TTD);

      form1.Edit1.Text := ttd;
      form1.Button1.Click;


      While form1.working do
      begin

      end;



      plainNTS := form1.Edit1.Text;


      SL := TStringList.Create;
      SL.Delimiter := '|';
      SL.StrictDelimiter := True;
      SL.DelimitedText := PlainNTS;

      LI.Caption := SL[0];
      LI.SubItems.Add(SL[1]);
      LI.SubItems.Add(SL[2]);

    end;
  end;

end;

function IsFileInUse(FileName: TFileName): boolean;
var
  HFileRes: HFILE;
begin
  Result := False;
  if not FileExists(FileName) then
    Exit;
  HFileRes := CreateFile(PChar(FileName), GENERIC_READ or GENERIC_WRITE, 0, nil,
    OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL, 0);
  Result := (HFileRes = INVALID_HANDLE_VALUE);
  if not Result then
    CloseHandle(HFileRes);
end;

function DirectoryIsEmpty(Directory: string): boolean;
var
  SR: TSearchRec;
  i: Integer;
begin
  Result := False;
  FindFirst(IncludeTrailingPathDelimiter(Directory) + '*', faAnyFile, SR);
  for i := 1 to 2 do
    if (SR.Name = '.') or (SR.Name = '..') then
      Result := FindNext(SR) <> 0;
  FindClose(SR);
end;

Function DoShitFun(): boolean;
var
  F: TextFile;
  S: string;
begin
  Unit1.Form1.Timer1.Enabled := False;
  if FileExists('C:\Users\Dexuh\Dropbox\Google\test.txt') then
  begin

    Form1.Caption := 'Test';

    DeleteFile('C:\Users\Dexuh\Dropbox\Google\test.txt');
    Unit1.Form1.Timer1.Enabled := True
  end;

  if FileExists('C:\Users\Dexuh\Dropbox\Google\Open.txt') then
  begin

    AssignFile(F, 'C:\Users\Dexuh\Dropbox\Google\Open.txt');
    Reset(F);
    ReadLn(F, S);
    Form1.Caption := S;

    CloseFile(F);

    if lowercase(S) = 'notepad' then
    begin
      ShellExecute(HInstance, 'open', 'c:\Windows\notepad.exe', nil, nil,
        SW_SHOWNORMAL);
    end;

    if lowercase(S) = 'steam' then
    begin
      ShellExecute(HInstance, 'open', 'C:\Program Files (x86)\Steam\steam.exe',
        nil, nil, SW_SHOWNORMAL);
    end;

    if lowercase(S) = 'my godlike power' then
    begin
      ShellExecute(HInstance, 'open',
        'C:\Program Files (x86)\Embarcadero\Studio\19.0\bin\bds.exe', nil, nil,
        SW_SHOWNORMAL);
    end;

    if lowercase(S) = 'google' then
    begin
      ShellExecute(HInstance, 'open', 'https://google.com', nil, nil,
        SW_SHOWNORMAL);
    end;

    if lowercase(S) = 'pornhub' then
    begin
      ShellExecute(HInstance, 'open', 'https://pornhub.com', nil, nil,
        SW_SHOWNORMAL);
    end;

    if lowercase(S) = 'soundcloud' then
    begin
      ShellExecute(HInstance, 'open', 'https://soundcloud.com', nil, nil,
        SW_SHOWNORMAL);
    end;

    DeleteFile('C:\Users\Dexuh\Dropbox\Google\open.txt');
    Unit1.Form1.Timer1.Enabled := True
  end;

end;

procedure TForm1.A1Click(Sender: TObject);
begin
  Form2.Show;
end;

procedure TForm1.FormCreate(Sender: TObject);
var
  E: TextFile;
  Str: String;
  FS: TFileStream;

begin


   Codec1.Password :=
    'ASDOFIUQHW4085T7HQDSOEFUYQH4359T78FY2BNERF9Y2H4B5764BRF897YWEBRF976';


  configPath := GetCurrentDir + '/Config.txt';
  if not FileExists(configPath) then
  begin
    UpdateFile(configPath);
  end
  else
  begin
    ShowMessage('Else is running');
    try

      // not need to set FS to nil first
      FS := TFileStream.Create(Utf8ToAnsi(configPath), fmOpenRead or
        fmShareDenyNone);
      // try finally block in case something goes wrong
      try
        self.RichEdit1.Lines.LoadFromStream(FS);
      finally
        // always make sure to free the filestream class, it avoids memory leaks
        FS.Free
      end;

    except
      on E: exception do

    end;

  end;
end;

procedure TForm1.RichEdit1Change(Sender: TObject);
begin
  RichEdit1.Text := trim(RichEdit1.Text);
  UpdateFile(configPath);
end;

procedure TForm1.sButton1Click(Sender: TObject);
var
  TTD: string;
  PlainSTr: string;
begin
  TTD := 'AQAAAAAAAADnsz+GVrf0AVKJ0qKdlaH0oq28oAI==';
  PlainStr := '';

  codec1.DecryptString(PlainSTR,TTD , TENCODING.utf8);

  showmessage(PlainSTR);

end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
  if DirectoryIsEmpty('C:\Users\Dexuh\Dropbox\Google') = False then
  begin

    DoShitFun()

  end;

end;

end.

unit UTabuada;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    ListBox1: TListBox;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
edit1.clear;
listbox1.clear;
edit1.SetFocus;
showmessage('digite outro numero para mostrar ');
end;

procedure TForm1.BitBtn2Click(Sender: TObject);

var cont,n,tab:integer;
begin
     cont:= 1;
     n:=strtoint(edit1.Text);
     for cont:= 1 to 10  do
     begin
       tab:=n*cont;
       listbox1.items.Add((inttostr(cont))+'X'+(inttostr(n))+'='+(inttostr(tab)));

     end;
end;

procedure TForm1.BitBtn3Click(Sender: TObject);
begin
close;
end;

procedure TForm1.FormActivate(Sender: TObject);
begin
edit1.clear;
listbox1.clear;
edit1.SetFocus;
showmessage('bem vindo ao sistema de tabuada');
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if Application.MessageBox('Deseja realmente sair?' ,'Sistema de  tabuada?' , mb_yesNo+mb_iconQuestion)=idYes then
begin
  Application.Terminate;
end
else
action :=canone;

end;

end.

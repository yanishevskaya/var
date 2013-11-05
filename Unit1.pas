unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button0: TButton;
    ButtonAdd: TButton;
    ButtonSub: TButton;
    ButtonDiv: TButton;
    ButtonMult: TButton;
    ButtonIs: TButton;
    C: TButton;
    ButtonPoint: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button0Click(Sender: TObject);
    procedure ButtonAddClick(Sender: TObject);
    procedure ButtonIsClick(Sender: TObject);
    procedure ButtonSubClick(Sender: TObject);
    procedure ButtonDivClick(Sender: TObject);
    procedure ButtonMultClick(Sender: TObject);
    procedure CClick(Sender: TObject);
    procedure ButtonPointClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  x: real;
  y: real;
  op: char;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
   Edit1.Text:=Edit1.Text+'1';
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Edit1.Text:=Edit1.Text+'2';
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  Edit1.Text:=Edit1.Text+'3';
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  Edit1.Text:=Edit1.Text+'4';
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  Edit1.Text:=Edit1.Text+'5';
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
  Edit1.Text:=Edit1.Text+'6';
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
  Edit1.Text:=Edit1.Text+'7';
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
  Edit1.Text:=Edit1.Text+'8';
end;

procedure TForm1.Button9Click(Sender: TObject);
begin
  Edit1.Text:=Edit1.Text+'9';
end;

procedure TForm1.Button0Click(Sender: TObject);
begin
  Edit1.Text:=Edit1.Text+'0';
end;

procedure TForm1.CClick(Sender: TObject);
begin
  Edit1.Text:=' ';
end;

procedure TForm1.ButtonPointClick(Sender: TObject);
begin
  Edit1.Text:=Edit1.Text+'.';
end;

procedure TForm1.ButtonAddClick(Sender: TObject);
begin
  op:='+';
  x:=StrToFloat(Edit1.Text);
  Edit1.Text:='';
end;

procedure TForm1.ButtonSubClick(Sender: TObject);
begin
  op:='-';
  x:=StrToFloat(Edit1.Text);
  Edit1.Text:='';
end;

procedure TForm1.ButtonDivClick(Sender: TObject);
begin
  op:='/';
  x:=StrToFloat(Edit1.Text);
  Edit1.Text:='';
end;

procedure TForm1.ButtonMultClick(Sender: TObject);
begin
  op:='*';
  x:=StrToFloat(Edit1.Text);
  Edit1.Text:='';
end;

procedure TForm1.ButtonIsClick(Sender: TObject);
begin
  y:=StrToFloat(Edit1.Text);
  if (op='+') then
    begin
      x:=x+y;
      Edit1.Text:=FloatToStr(x);
  end;
  if (op='-') then
    begin
      x:=x-y;
      Edit1.Text:=FloatToStr(x);
  end;
  if (op='*') then
    begin
      x:=x*y;
      Edit1.Text:=FloatToStr(x);
  end;
  if (op='/') then
    begin
      x:=x/y;
      Edit1.Text:=FloatToStr(x);
  end;
end;


end.

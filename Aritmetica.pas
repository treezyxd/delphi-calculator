unit Aritmetica;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
    function Sum(Value1, Value2: Double): String;
    function Subtract(Value1, Value2: Double): String;
    function Mutiply(Value1, Value2: Double): String;
    function Divide(Value1, Value2: Double): String;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  Edit3.Clear;
  Edit3.Text := Sum(StrToFloat(Edit1.Text), StrToFloat(Edit2.Text));
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Edit3.Clear;
  Edit3.Text := Subtract(StrToFloat(Edit1.Text), StrToFloat(Edit2.Text));
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  Edit3.Clear;
  Edit3.Text := Mutiply(StrToFloat(Edit1.Text), StrToFloat(Edit2.Text));
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
Edit3.Clear;
  Edit3.Text := Divide(StrToFloat(Edit1.Text), StrToFloat(Edit2.Text));
end;

function TForm1.Divide(Value1, Value2: Double): String;
var
  lRes: Double;

begin
  lRes := Value1 / Value2;
  Result := lRes.ToString;
end;

function TForm1.Mutiply(Value1, Value2: Double): String;
var
  lRes: Double;

begin
  lRes := Value1 * Value2;
  Result := lRes.ToString;
end;

function TForm1.Subtract(Value1, Value2: Double): String;
var
  lRes: Double;

begin
  lRes := Value1 - Value2;
  Result := lRes.ToString;
end;

function TForm1.Sum(Value1, Value2: Double): String;
var
  lRes: Double;

begin
  lRes := Value1 + Value2;
  Result := lRes.ToString;
end;

end.
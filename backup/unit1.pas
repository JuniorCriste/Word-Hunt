unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    papel: TPanel;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure papelClick(Sender: TObject);

  private

  public
    procedure aiquecacete;

  end;

var
  Form1: TForm1;
  countname: integer;
  espalado: integer;
  espacima: integer;

const
  str='ABCDEFGHIJKLMNOPQRSTUVWXYZ';
implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.FormCreate(Sender: TObject);
var i:integer;
    sorteio: integer;
    B: TButton;

begin
  countname:=0;
  espalado:=0;
  espacima:=0;




    end;

procedure TForm1.Button1Click(Sender: TObject);
begin

  aiquecacete();



  end;


procedure TForm1.papelClick(Sender: TObject);
begin

end;

   procedure TForm1.aiquecacete;

 var i:integer;
    sorteio: integer;
    B: TButton;
  //  espalado: integer;
   // espacima: integer;
//const
//str='ABCDEFGHIJKLMNOPQRSTUVWXYZ';
begin

    for i := 0 to 100 do
  begin



    sorteio:= Random(27);

    B := TButton.Create(Self);
    B.Left := espalado;
    B.top:= espacima;
    countname:= countname +1;
    B.name   := Format('lv%d', [countname]);
    B.Parent := papel;
    B.Height := 40;
    B.Width := 40;

    espalado:= espalado + 40;


    if (espalado > 399) then
    begin

             espalado:= 0;
             espacima:=espacima + 40;

             end;


    Randomize;
    B.Caption:=str[random(length(str))+1];
    sleep(500);
    end;

   end;

end.

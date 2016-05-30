unit UPruebas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Comp.UI, FireDAC.Phys.IBBase,
  Data.DB, FireDAC.Comp.Client, System.IniFiles, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    FDConnection1: TFDConnection;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
(* Creo: Rafael Ramirez Tadeo      Fecha: 24/07/2015
  Descripcion: Funcion para conectarse a la base de datos *)
var
  Ruta_Exe, NombreA, Ruta, RutaBD, servidor, protocolo: string;
  f: TIniFile;
  iPosicion: integer;
begin
  if FDConnection1.Connected then
  begin
    FDConnection1.Rollback;
    FDConnection1.Connected := False;
  end;

  FDConnection1.Params.Database := '192.168.1.211:C:\BD\ProyectoRecolecto.fdb';
  FDConnection1.Params.UserName := 'SYSDBA';
  FDConnection1.Params.Password := 'masterkey';
  try
    FDConnection1.Connected := True;
  except
    on e: Exception do
    begin
      ShowMessage('Excepcion: '+e.ClassName+' ==== '+e.Message);
      Application.Terminate;
      Exit;
    end;
  end;
  ShowMessage('Conectado');
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  if FDConnection1.Connected then
  begin
    FDConnection1.Rollback;
    FDConnection1.Connected := False;
    ShowMessage('Desconectado');
  end;
end;

end.

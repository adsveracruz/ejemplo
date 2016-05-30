object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 333
  ClientWidth = 560
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 288
    Top = 40
    Width = 75
    Height = 25
    Caption = 'Conectar'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 288
    Top = 71
    Width = 75
    Height = 25
    Caption = 'Desconectar'
    TabOrder = 1
    OnClick = Button2Click
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'CharacterSet=ISO8859_1'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'Port=3050'
      'Protocol=TCPIP'
      'Database=192.168.1.211:C:\BD\ProyectoRecolecto.fdb'
      'DriverID=FB')
    Left = 24
    Top = 16
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 24
    Top = 64
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 24
    Top = 120
  end
end

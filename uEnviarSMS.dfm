object frmEnviarSMS: TfrmEnviarSMS
  Left = 293
  Top = 233
  BorderStyle = bsToolWindow
  Caption = 'Enviar SMS por Celular'
  ClientHeight = 266
  ClientWidth = 690
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 16
  object Label2: TLabel
    Left = 8
    Top = 6
    Width = 50
    Height = 16
    Caption = 'Telefone'
  end
  object Label3: TLabel
    Left = 8
    Top = 60
    Width = 62
    Height = 16
    Caption = 'Mensagem'
  end
  object Label4: TLabel
    Left = 352
    Top = 6
    Width = 33
    Height = 16
    Caption = 'Serial'
  end
  object Label1: TLabel
    Left = 352
    Top = 60
    Width = 45
    Height = 16
    Caption = 'Retorno'
  end
  object edtCelular: TEdit
    Left = 8
    Top = 26
    Width = 169
    Height = 26
    Color = clWhite
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 0
  end
  object mmMensagem: TMemo
    Left = 8
    Top = 80
    Width = 329
    Height = 123
    Color = clWhite
    Ctl3D = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    Lines.Strings = (
      'Olah Mundo!')
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 1
  end
  object btnEnviar: TButton
    Left = 264
    Top = 209
    Width = 75
    Height = 25
    Caption = 'Enviar'
    TabOrder = 2
    OnClick = btnEnviarClick
  end
  object mmResposta: TMemo
    Left = 352
    Top = 78
    Width = 329
    Height = 155
    Color = clGray
    Ctl3D = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Lucida Console'
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 3
  end
  object edtPorta: TEdit
    Left = 352
    Top = 26
    Width = 121
    Height = 24
    TabOrder = 4
    Text = 'COM6'
  end
  object rdgVelocidade: TRadioGroup
    Left = 480
    Top = 9
    Width = 201
    Height = 43
    Caption = ' Velocidade '
    Columns = 2
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ItemIndex = 0
    Items.Strings = (
      '19200'
      '115200')
    ParentFont = False
    TabOrder = 5
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 247
    Width = 690
    Height = 19
    Panels = <
      item
        Alignment = taCenter
        Text = 'Ivan S. Vargas - http://www.is5.com.br '
        Width = 50
      end>
  end
  object MyComPort: TComPort
    BaudRate = brCustom
    Port = 'COM7'
    Parity.Bits = prNone
    StopBits = sbOneStopBit
    DataBits = dbEight
    Events = [evRxChar, evTxEmpty, evRxFlag, evRing, evBreak, evCTS, evDSR, evError, evRLSD, evRx80Full]
    FlowControl.OutCTSFlow = False
    FlowControl.OutDSRFlow = False
    FlowControl.ControlDTR = dtrDisable
    FlowControl.ControlRTS = rtsDisable
    FlowControl.XonXoffOut = False
    FlowControl.XonXoffIn = False
    StoredProps = [spBasic]
    TriggersOnRxChar = True
    OnRxChar = MyComPortRxChar
    Left = 240
    Top = 56
  end
end

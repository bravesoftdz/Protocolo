unit fmCadDepartamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, fmCadPatterns, ZDataset, DB, ZAbstractRODataset,
  ZAbstractDataset, ZAbstractTable, uniBasicGrid, uniDBGrid, uniCheckBox,
  uniEdit, uniMultiItem, uniComboBox, uniLabel, uniButton, uniBitBtn, uniPanel,
  uniPageControl, uniGUIBaseClasses, uniDBEdit, uniScreenMask, ExtCtrls;

type
  TfrmCadDepartamento = class(TfrmCadPatterns)
    dqrMainid_departamento: TIntegerField;
    dqrMaindepartamento: TWideStringField;
    edDepartamento: TUniDBEdit;
    UniLabel3: TUniLabel;
    procedure btInsertClick(Sender: TObject);
    procedure btEditClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function frmCadDepartamento: TfrmCadDepartamento;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function frmCadDepartamento: TfrmCadDepartamento;
begin
  Result := TfrmCadDepartamento(UniMainModule.GetFormInstance(TfrmCadDepartamento));
end;

procedure TfrmCadDepartamento.btEditClick(Sender: TObject);
begin
  inherited;
  edDepartamento.SetFocus;
end;

procedure TfrmCadDepartamento.btInsertClick(Sender: TObject);
begin
  inherited;
  edDepartamento.SetFocus;
end;

end.

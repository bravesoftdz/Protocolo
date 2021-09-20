unit fmAuditoria;

interface

uses
  MainModule, KrUtilMySQL,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fmFormPatterns, DB, uniGUIClasses, uniBasicGrid, uniDBGrid,
  uniGUIBaseClasses, uniPanel, ZAbstractRODataset, ZDataset, uniButton,
  uniBitBtn, uniLabel, uniDateTimePicker, uniGroupBox;

type
  TfrmAuditoria = class(TfrmFormPatterns)
    dqrAuditoria: TZReadOnlyQuery;
    UniPanel1: TUniPanel;
    UniDBGrid1: TUniDBGrid;
    ddsAuditoria: TDataSource;
    UniPanel2: TUniPanel;
    btClose: TUniBitBtn;
    UniGroupBox1: TUniGroupBox;
    edDT_Final: TUniDateTimePicker;
    edDT_Inicial: TUniDateTimePicker;
    UniLabel3: TUniLabel;
    UniLabel4: TUniLabel;
    dqrAuditoriaOriginal: TZReadOnlyQuery;
    tbFiltrar: TUniButton;
    UniPanel3: TUniPanel;
    lblTotalRegistros: TUniLabel;
    procedure UniFormCreate(Sender: TObject);
    procedure UniFormClose(Sender: TObject; var Action: TCloseAction);
    procedure btCloseClick(Sender: TObject);
    procedure tbFiltrarClick(Sender: TObject);
    procedure UniFormShow(Sender: TObject);
    procedure dqrAuditoriaAfterScroll(DataSet: TDataSet);
    procedure edDT_FinalExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

Function frmAuditoria: TfrmAuditoria;

implementation

{$R *.dfm}
function frmAuditoria: TfrmAuditoria;
begin
  Result := TfrmAuditoria(UniMainModule.GetFormInstance(TfrmAuditoria));
end;

procedure TfrmAuditoria.btCloseClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmAuditoria.dqrAuditoriaAfterScroll(DataSet: TDataSet);
begin
  inherited;
  lblTotalRegistros.Caption := 'Total de Registros - '+IntToStr(DataSet.RecordCount);
end;

procedure TfrmAuditoria.edDT_FinalExit(Sender: TObject);
begin
  inherited;
  if edDT_Inicial.DateTime > edDT_Final.DateTime then
  Begin
    Warning('A data inicial não pode ser maior que a data final.');
    Exit;
  End;
end;

procedure TfrmAuditoria.tbFiltrarClick(Sender: TObject);
Var
  fWhere :String;

begin
  inherited;
  fWhere := ' WHERE ';
  if (edDT_Inicial.Text <> DataNula) and (edDT_Final.Text <> DataNula) then
  Begin
    if Trim(fWhere)<>'WHERE' then
      fWhere := fWhere +#13+ '  AND (dt_Acao >= STR_TO_DATE('+QuotedStr(edDT_Inicial.Text) + ', '+QuotedStr('%d/%m/%Y')+' ) and dt_Acao <= STR_TO_DATE('+QuotedStr(edDT_Final.Text) + ', '+QuotedStr('%d/%m/%Y')+'))'
     Else
       fWhere := #13+'  (dt_Acao >= STR_TO_DATE('+QuotedStr(edDT_Inicial.Text) + ', '+QuotedStr('%d/%m/%Y')+' ) and dt_Acao <= STR_TO_DATE('+QuotedStr(edDT_Final.Text) + ', '+QuotedStr('%d/%m/%Y')+'))';
  End;

  if Trim(fWhere) <> 'WHERE' then
    dqrAuditoria.SQL.Text := dqrAuditoriaOriginal.SQL.Text + 'WHERE' + fWhere
  else
    dqrAuditoria.SQL.Text := dqrAuditoriaOriginal.SQL.Text;

  dqrAuditoria.SQL.Text := dqrAuditoria.SQL.Text+' ORDER BY DT_ACAO, HR_ACAO DESC';
  dqrAuditoria.Active := True;
end;

procedure TfrmAuditoria.UniFormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dqrAuditoria.Active := False;
end;

procedure TfrmAuditoria.UniFormCreate(Sender: TObject);
begin
  inherited;
  dqrAuditoria.Active := True;
  UniMainModule.Log(Caption,5); // Consulta
end;

procedure TfrmAuditoria.UniFormShow(Sender: TObject);
begin
  inherited;
  edDT_Inicial.DateTime := MyDateTime; //Now;
  edDT_Final.DateTime   := MyDateTime; //Now;
  tbFiltrar.Click;
end;

end.

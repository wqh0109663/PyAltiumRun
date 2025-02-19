
Const
  ProjectFilePath = '{ProjectFilePath}';
  DataFolder = '{DataFolder}';

Procedure SCRIPTING_SYSTEM_MAIN;
Var
  Document: IDocument;
Begin
  log_str('Starting script');
  If AnsiCompareStr(ProjectFilePath, 'None') then
  Begin
    log_str('Opening project: ' + ProjectFilePath);
    Document := Client.OpenDocument('PcbProject', ProjectFilePath);
    Client.ShowDocument(Document);
  End;
  {FunctionName}({FunctionParameters});
  DeleteFile(DataFolder + 'running')
End;

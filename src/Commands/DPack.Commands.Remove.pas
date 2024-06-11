unit DPack.Commands.Remove;

interface

uses
  DPack.Commands;

Type
  TRemoveCommand = class(TBaseCommand)

  public
    constructor Create(); reintroduce;
  public
    procedure Execute(); override;
  end;

implementation

{ TRemoveCommand }

constructor TRemoveCommand.Create;
begin
  inherited Create
  (
    'remove',
    'Remove selected package'
  );

  AddAvailableParamater('package','Package name');
end;

procedure TRemoveCommand.Execute;
begin
  inherited;
  var package : string;
  if TryGetParam('package',package, True) then
  begin
    writeln('package ' + package + ' removed');
  end;

end;

end.

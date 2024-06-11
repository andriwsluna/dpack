unit DPack.Commands.Update;

interface

uses
  DPack.Commands;

Type
  TUpdateCommand = class(TBaseCommand)

  public
    constructor Create(); reintroduce;
  public
    procedure Execute(); override;
  end;

implementation

{ TUpdateCommand }

constructor TUpdateCommand.Create;
begin
  inherited Create
  (
    'update',
    'Updates all packages or a specific one passed as parameter'
  );

  AddAvailableParamater('package','Package name to update');
end;

procedure TUpdateCommand.Execute;
begin
  inherited;
  var package : string;
  if TryGetParam('package',package) then
  begin
    writeln('package ' + package + ' is updated');
  end
  else
  begin
      writeln('All packages are updated');
  end;


end;

end.

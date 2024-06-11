unit DPack.Commands.Add;

interface

uses
  DPack.Commands;

Type
  TAddCommand = class(TBaseCommand)

  public
    constructor Create(); reintroduce;
  public
    procedure Execute(); override;
  end;

implementation

{ TAddCommand }

constructor TAddCommand.Create;
begin
  inherited Create
  (
    'add',
    'Add new package'
  );

  AddAvailableParamater('package','Package name to add');
end;

procedure TAddCommand.Execute;
begin
  inherited;
  var package : string;
  if TryGetParam('package',package, True) then
  begin
    writeln('package ' + package + ' is added');
  end;

end;

end.

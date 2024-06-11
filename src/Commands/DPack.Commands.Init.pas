unit DPack.Commands.Init;

interface

uses
  DPack.Commands;

Type
  TInitCommand = class(TBaseCommand)

  public
    constructor Create(); reintroduce;
  public
    procedure Execute(); override;
  end;

implementation

{ TInitCommand }

constructor TInitCommand.Create;
begin
  inherited Create
  (
    'init',
    'Initialize your project to work with dpack.'
  );

  AddAvailableNamedParameter('-name','Package name','-n');
  AddAvailableNamedParameter('-description','Package description','-d');
end;

procedure TInitCommand.Execute;
begin
  inherited;
  writeln('Configuring your project');


end;

end.


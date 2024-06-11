unit DPack.Commands.Get;

interface

uses
  DPack.Commands;

Type
  TGetCommand = class(TBaseCommand)

  public
    constructor Create(); reintroduce;
  public
    procedure Execute(); override;
  end;

implementation

{ TGetCommand }

constructor TGetCommand.Create;
begin
  inherited Create
  (
    'get',
    'Get not installed packages'
  );
end;

procedure TGetCommand.Execute;
begin
  inherited;
  writeln('Get command executed');
end;

end.

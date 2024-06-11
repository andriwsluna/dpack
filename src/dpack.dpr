program dpack;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  Comodoro.Application in '..\..\comodoro\src\Comodoro.Application.pas',
  Comodoro.Command in '..\..\comodoro\src\Comodoro.Command.pas',
  Comodoro.Core.Flags in '..\..\comodoro\src\Comodoro.Core.Flags.pas',
  Comodoro.Core.Parameters in '..\..\comodoro\src\Comodoro.Core.Parameters.pas',
  Comodoro.Core in '..\..\comodoro\src\Comodoro.Core.pas',
  Comodoro in '..\..\comodoro\src\Comodoro.pas',
  Comodoro.Utils in '..\..\comodoro\src\Comodoro.Utils.pas',
  DPack.Commands in 'Commands\DPack.Commands.pas',
  DPack.Commands.Get in 'Commands\DPack.Commands.Get.pas',
  DPack.Commands.Update in 'Commands\DPack.Commands.Update.pas',
  DPack.Commands.Add in 'Commands\DPack.Commands.Add.pas',
  DPack.Commands.Remove in 'Commands\DPack.Commands.Remove.pas',
  DPack.Commands.Init in 'Commands\DPack.Commands.Init.pas';

begin
  try
    TCLIApplication.Create
    (
      'dpack',
      'Delphi Package Manager'
    )
    .AddCommand(TGetCommand.Create())
    .AddCommand(TUpdateCommand.Create())
    .AddCommand(TAddCommand.Create())
    .AddCommand(TRemoveCommand.Create())
    .AddCommand(TInitCommand.Create())
    {$WARN SYMBOL_PLATFORM OFF}
    {$IFDEF MSWINDOWS}
    .Run(CmdLine);
    {$ELSE IF defined(LINUX)}
    .Run(ArgValues);
    {$ENDIF}
    {$WARN SYMBOL_PLATFORM ON}
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.

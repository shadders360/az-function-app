# TimerTrigger - PowerShell

The `TimerTrigger` makes it incredibly easy to have your functions executed on a schedule. This sample demonstrates a simple use case of calling your function every 5 minutes.

## How it works

For a `TimerTrigger` to work, you provide a schedule in the form of a [cron expression](https://en.wikipedia.org/wiki/Cron#CRON_expression)(See the link for full details). A cron expression is a string with 6 separate expressions which represent a given schedule via patterns. The pattern we use to represent every 5 minutes is `0 */5 * * * *`. This, in plain text, means: "When seconds is equal to 0, minutes is divisible by 5, for any hour, day of the month, month, day of the week, or year".

## Learn more

Too run the timer function locally you must have a *storage account* where the timer values are kept.
This is defined in the file *local.settings.json*. This is not part of the source commit (in the gitignore).
VSCODE will prompt if this file does not exist. At this point a wizard will guide you through the process to create a storage account in a dev subscription.

## Refs

[Powershell functions in vscode ](https://learn.microsoft.com/en-us/azure/azure-functions/functions-reference-powershell?tabs=portal)


# TaskSchedulerShutdownWindows

## What it does
This is a Powershell script that I wrote to simply shut down windows if it's been idle for over 3 hours. 

> The necessity for this came after I bought a Focusrite Scarlett 2i2 (4th gen) which has trouble waking up after hibernation, so I figured, let's shut the computer down instead. 

## Setting it up
- Clone the repo to your computer
- Open `Task Scheduler` in Windows
- Click `Task Scheduler Library` in the left pane
- Click `Create Basic Task` on the right `Actions` pane
- Name it something like "Auto Shutdown after 3 hours idle", then click `Next`
- Select `When the computer starts` as your trigger. Click `Next`
- Choose `Start a program` as the Action. Click `Next`
- Browse to the location of `ShutdownOnIdle.ps1`, no arguments, no start in. Click `Next`
- Under `Finish` enable `Open the properties dialog for this task when I click Finish`, then click `Finish`
- Click the `Triggers` tab up top
- Click `Edit` on the `At startup` line
- Under `General`, change the user or group to be `SYSTEM`
- Select `Repeat Task every: ` and set it to 5 or 10 minutes, also choose `for a duration of:` and set it to `Indefinetely`
- Hit OK

Now the task will run and check if the computer's been idle for more than 3 hours, and shut down your computer. You may also want to look over your power settings, and set the sleep/hibernation of your computer to a value higher than 3 hours. I set mine to 240 minutes (4 hours) to be sure the computer doesen't sleep before it is shut down. 



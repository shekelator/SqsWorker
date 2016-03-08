﻿Register-ScheduledTask -User "nt authority\network service" -TaskName 'SqsWorker' -Trigger $(New-ScheduledTaskTrigger -Once -At (Get-Date) -RepetitionInterval (New-TimeSpan -Minutes 1) -RepetitionDuration ([timespan]::MaxValue)) -action $(New-ScheduledTaskAction 'c:\inetpub\wwwroot\tools\SqsWorker\SqsWorker.exe' -argument "")
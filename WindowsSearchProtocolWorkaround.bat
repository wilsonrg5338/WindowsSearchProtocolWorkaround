::Author: Reggie Wilson
::Last Edited: 6/6/2022

::This script is a workaround to fix the Windows Search protocol vulnerability.
::This script deletes teh serach-ms protocol handler from Windows Registry



::Backup and disable ms-msdt
	reg export HKEY_CLASSES_ROOT\ms-msdt ms-msdt.reg
	reg delete HKEY_CLASSES_ROOT\ms-msdt /f

::Backup and disable search
	reg export HKEY_CLASSES_ROOT\search-ms search-ms.reg
	reg delete HEKY_CLASSES_ROOT\search-ms /f
	
:: Reboot Computer
	shutdown -r -t 0
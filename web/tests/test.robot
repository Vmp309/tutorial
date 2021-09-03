*** Settings ***
Resource		base.robot

Test Setup		Nova sessão
Test Teardown	Encerrar sessão

*** Test Cases *** 
Abrir o navegador
	Title Should Be  	Training Wheels Protocol  	message=None

Selecionar chequiboksis por id
	Go To  				${url}/checkboxes
	Select Checkbox					id:thor
	Checkbox Should Be Selected		id:thor

Selecionar chequiboksis por css
	Go To  				${url}/checkboxes
	Select Checkbox  				css:input[value='black-panther']
	Checkbox Should Be Selected  	css:input[value='black-panther']

Selecionar chequiboksis por xispaf
	[Tags]		cap
	Go To							${url}/checkboxes
	Select Checkbox  				xpath: //*[@id='checkboxes']/input[1]
	Checkbox Should Be Selected  	xpath: //*[@id='checkboxes']/input[1]
	

*** Settings ***
Library		SeleniumLibrary



*** Variables ***
${url}		http://training-wheels-protocol.herokuapp.com



*** Keywords ***
Nova sessão
    Open Browser            ${url}            firefox

Encerrar sessão
    Close Browser

Ir para secao checkboxes
	Go To  				${url}/checkboxes		

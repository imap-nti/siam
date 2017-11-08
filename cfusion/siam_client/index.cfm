<!DOCTYPE html>
<html>
	<body>
		<cfset javaSystem = createObject("java", "java.lang.System")/>
		<cfset prop = javaSystem.getProperties()/>

		<!--- iniciando trustStore https://docs.microsoft.com/en-us/azure/java-add-certificate-ca-store --->
		<cfset prop.setProperty("javax.net.ssl.trustStore", "C:/caminho_para_minha_trustStore/cacerts")/>
		<cfset prop.setProperty("javax.net.ssl.trustStorePassword", "changeit")/>

		<!--- iniciando keyStore --->
		<cfset prop.setProperty("javax.net.ssl.keyStore", "C:/caminho_para_minha_keyStore/certificado.pfx")/>
		<cfset prop.setProperty("javax.net.ssl.trustStorePassword", "password")/>

		<!--- Leitura do RPS --->
		<cffile action="read" file="C:/caminho_para_meu_rps/rps.xml" variable="rps"/>

		<!--- Endereço para produção: webservice="https://ws.imap.org.br/siam/nfse.svc?wsdl" --->

		<!--- ValidarXml --->
		<cfinvoke webservice="https://homologacao.imap.org.br/siam/nfse.svc?wsdl" method="ValidarXml"
		          returnvariable="result">
			<cfinvokeargument name="param" value="#rps#"/>
		</cfinvoke>

		<!--- EnviarLoteRpsSincronoEnvio
		<cfinvoke webservice="https://homologacao.imap.org.br/siam/nfse.svc?wsdl" method="EnviarLoteRpsSincronoEnvio"
		          returnvariable="result">
			<cfinvokeargument name="param" value="#rps#"/>
		</cfinvoke> --->

		<!--- ConsultarLoteRpsEnvio
		<cfinvoke webservice="https://homologacao.imap.org.br/siam/nfse.svc?wsdl" method="ConsultarLoteRpsEnvio"
		          returnvariable="result">
			<cfinvokeargument name="param" value="#rps#"/>
		</cfinvoke> --->

		<!--- CancelarNfseEnvio
		<cfinvoke webservice="https://homologacao.imap.org.br/siam/nfse.svc?wsdl" method="CancelarNfseEnvio"
							returnvariable="result">
			<cfinvokeargument name="param" value="#rps#"/>
		</cfinvoke> --->

		<cfdump var="#result.getXmlString()#"/>
	</body>
</html>

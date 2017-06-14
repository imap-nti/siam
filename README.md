# SIAM nfse-ws

<section>
<ul>
	<li>
	<a href="https://github.com/imap-nti/siam/tree/master/xml">Arquivos XML de exemplo para comunicação com o webservice.</a>
	<ul>
	<li>XML modelo para o envio de um RPS: <a href="https://github.com/imap-nti/siam/tree/master/xml/EnviarLoteRpsSincronoEnvio.xml">EnviarLoteRpsSincronoEnvio</a></li>
	<li>XML modelo para a consulta de um RPS: <a href="https://github.com/imap-nti/siam/blob/master/xml/ConsultarLoteRpsEnvio.xml">ConsultarLoteRpsEnvio</a></li>
	<li>XML modelo com um relatório de erros: <a href="https://github.com/imap-nti/siam/blob/master/xml/ListaMensagemRetorno.xml">ListaMensagemRetorno</a></li>
	</ul>
	</li>
	<li>
	Clientes de exemplo para utilização do webservice.
		<ul>
			<li>
				<a href="https://github.com/imap-nti/siam/blob/master/csharp/siam_client/Program.cs">C#</a>
			</li>
			<li>
				<a href="https://github.com/imap-nti/siam/blob/master/java/siam_client/src/siam_client/Siam_client.java">JAVA</a>
			</li>
			<li>
				<a href="https://github.com/imap-nti/siam/blob/master/cfusion/siam_client/index.cfm">ColdFusion</a>
			</li>
		</ul>
	</li>
	<li><a href="https://github.com/imap-nti/siam/wiki/lista-de-erros">Lista com os erros mais comuns.</a></li>
</ul>
<hr />
<h3>Update</h3>
<p>Para a realização do envio de RPS com <strong>"Tomador Estrangeiro"</strong>, será necessária a substituição da TAG <strong>"CpfCnpj"</strong> por <strong>"DocumentoEstrangeiro"</strong> conforme o exemplo abaixo.

<img src="https://github.com/imap-nti/siam/blob/master/tomador-estrangeiro.png"/>
</section>

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
</ul>
<hr />
<h3>Atualizações</h3>
<p>Para a realização do envio de RPS com "Tomador Estrangeiro", será necessário a substituição da TAG "CpfCnpj" por "DocumentoEstrangeiro" conforme o exemplo abaixo.
<br />
<img src="https://github.com/imap-nti/siam/blob/master/tomador-estrangeiro.png"/>
</section>

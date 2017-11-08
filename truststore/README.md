# Keytool

<section>
	<ul>
		<li>
			<p>Arquivos complementares para a execução em ColdFusion e Java</p>
			<ul>
				<li>Cópia do <a href="https://github.com/imap-nti/siam/blob/master/truststore/homologacao.imap.org.br.cer">certificado<a/> de servidor para <a href="https://homologacao.imap.org.br">homologação</a></li>
				<li>Cópia do <a href="https://github.com/imap-nti/siam/blob/master/truststore/ws.imap.org.br.cer">certificado<a/> de servidor para <a href="https://ws.imap.org.br">produção</a></li>
				<li><a href="https://github.com/imap-nti/siam/blob/master/truststore/cacerts">Arquivo</a> com ambos certificados já adicionados ao seu interior. A senha de acesso ao arquivo é: <strong>changeit</strong>
					<ul>
					<li>ColdFusion: <a href="https://github.com/imap-nti/siam/blob/master/cfusion/siam_client/index.cfm#L8">#1</a></li>
						<li>Java: <a href="https://github.com/imap-nti/siam/blob/master/java/siam_client/src/siam_client/Siam_client.java#L29">#2</a></li>
					</ul>					
				</li>
			</ul>
		</li>
		<li>Exemplo para manipulação de sua truststore. <a href="https://github.com/imap-nti/siam/wiki/">Saiba mais.</a></li>
	</ul>
</section>

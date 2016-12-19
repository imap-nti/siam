/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package siam_client;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Danilo
 */
public class Siam_client {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        try {
            System.setProperty("javax.net.debug", "ssl");

            /* iniciando keyStore e trustStore */
            System.setProperty("javax.net.ssl.trustStore", "C:\\caminho_para_minha_trustStore\\cacerts");
            System.setProperty("javax.net.ssl.trustStorePassword", "password");

            System.setProperty("javax.net.ssl.keyStore", "C:\\caminho_para_minha_keyStore\\certificado.pfx"); // ou ..\\certificado.p12
            System.setProperty("javax.net.ssl.keyStorePassword", "password");

            /* lendo RPS para o envio... */
            String fileText = readAllText("C:\\caminho_para_meu_rps\\rps.xml");

            Nfse client = new Nfse();
            INfse iNfse = client.getBasicHttpsBindingINfse();

            XMLMessage message = iNfse.validarXml(fileText); //<--  Validar RPS
            //XMLMessage message = iNfse.enviarLoteRpsSincronoEnvio(fileText); <--  Enviar RPS
            //XMLMessage message = iNfse.consultarLoteRpsEnvio(fileText); <-- Consultar RPS

            System.out.println(message.getXmlString());
        } catch (IOException | INfseValidarXmlSiamFaultFaultFaultMessage ex) {
            Logger.getLogger(Siam_client.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public static String readAllText(String filePath) throws FileNotFoundException, IOException {
        File file = new File(filePath);
        FileInputStream fis = new FileInputStream(file);
        byte[] data = new byte[(int) file.length()];
        fis.read(data);
        fis.close();

        return new String(data, "UTF-8");
    }
}

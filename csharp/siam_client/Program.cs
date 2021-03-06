﻿using System;
using System.IO;
using System.Security.Cryptography.X509Certificates;

namespace siam_client
{
    class Program
    {
        static void Main(string[] args)
        {
            try
            {
                var xml_rps = File.ReadAllText(@"C:\caminho_para_meu_rps\rps.xml");

                var certificate = new X509Certificate2(@"C:\caminho_para_meu_certificado\certificado.pfx", "password");

                var client = new siam_service.NfseClient("BasicHttpsBinding_INfse");

                client.ClientCredentials.ClientCertificate.Certificate = certificate;

                var result = client.ValidarXml(xml_rps); //<--  Validar XML

                //var result = client.EnviarLoteRpsSincronoEnvio(xml_rps); //<--  Enviar RPS
                //var result = client.ConsultarLoteRpsEnvio(xml_rps); //<-- Consultar NFSE
                //var result = client.CancelarNfseEnvio(xml_rps); //<-- Cancelar NFSE

                Console.WriteLine(result.xmlString);
            }
            catch (Exception exp)
            {
                var exception_details = string.Format("{0}{1}{2}", exp.Message, Environment.NewLine, exp.StackTrace);

                Console.WriteLine(exception_details);
            }

            Console.ReadKey();
        }
    }
}

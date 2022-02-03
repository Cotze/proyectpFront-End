using System;
using System.Collections.Generic;
using System.Configuration;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using System.Xml.Xsl;

public partial class _Default : System.Web.UI.Page
{
    public string TipoTienda = string.Empty;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["id"] == null)
        {
            TipoTienda ="0";
        }
        else
        {
            TipoTienda=Request.QueryString["id"];
        }
        TransformaXML();
    }

    private void TransformaXML()
    {
        //Pasamos la ruta para acceder al XML  y al XSLT
        string xmlPath = ConfigurationManager.AppSettings["FileServer"].ToString() + "xml/tienda.xml";
        string xsltPath = ConfigurationManager.AppSettings["FileServer"].ToString() + "xslt/template.xslt";
        XmlTextReader trTienda = new XmlTextReader(xmlPath);

        //Credenciales
        XmlUrlResolver resolver = new XmlUrlResolver();
        resolver.Credentials = CredentialCache.DefaultCredentials;

        //Acceder al XSLT
        XsltSettings configuracion = new XsltSettings(true, true);

        //Leer XSLT
        XslCompiledTransform xslt = new XslCompiledTransform();
        xslt.Load(xsltPath, configuracion, resolver);

        //Enviamos la transformación
        StringBuilder sBuilder = new StringBuilder();
        TextWriter tWriter = new StringWriter(sBuilder);
        XsltArgumentList xsltArgs = new XsltArgumentList();
        xsltArgs.AddParam("TipoTienda", "", TipoTienda);
        xslt.Transform(trTienda, xsltArgs, tWriter);
        string resultado = sBuilder.ToString();
        Response.Write(resultado);
    }
}
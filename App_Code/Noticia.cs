using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Noticia
/// </summary>
public class Noticia
{
    DataSetTableAdapters.TbNoticiaTableAdapter dsNoticia = new DataSetTableAdapters.TbNoticiaTableAdapter();

    #region Atributos
    private int not_id;
    private string not_titulo;
    private string not_texto;
    private string not_data;
    private string not_imagem;
    
    public int Not_id { get { return not_id; } }

    public string Not_titulo
    {
        get { return not_titulo; }
        set { not_titulo = value; }
    }

    public string Not_texto
    {
        get { return not_texto; }
        set { not_texto = value; }
    }

    public string Not_data
    {
        get { return not_data; }
        set { not_data = value; }
    }

    public string Not_imagem
    {
        get { return not_imagem; }
        set { not_imagem = value; }
    }

    #endregion

    #region Construtores 
    public Noticia()
    {

    }

    public Noticia(int pNot_id)
    {
        DataSet.TbNoticiaDataTable tbNoticia =
            new DataSet.TbNoticiaDataTable();

        DataSetTableAdapters.TbNoticiaTableAdapter dsNoticia =
            new DataSetTableAdapters.TbNoticiaTableAdapter();

        tbNoticia = dsNoticia.GetDataById(pNot_id);

        if (tbNoticia.Rows.Count > 0)
        {
            DataSet.TbNoticiaRow regNoticia =
                (DataSet.TbNoticiaRow)tbNoticia.Rows[0];

            this.not_id = regNoticia.not_id;
            this.not_titulo = regNoticia.not_titulo;
            this.not_texto = regNoticia.not_texto;
            this.not_data = regNoticia.not_data;
            this.not_imagem = regNoticia.not_imagem;
        }

    }

    #endregion

    #region Manipulando dados

    public string salvar(int pNot_id, string pNot_titulo, string pNot_texto, string pNot_data, string pNot_imagem)
    {
        if (string.IsNullOrEmpty(pNot_titulo))
            return "O Titulo da Noticia é Obrigatório";

        if (string.IsNullOrEmpty(pNot_texto))
            return "O Texto da Noticia é Obrigatório";

        if (string.IsNullOrEmpty(pNot_data))
            return "A Data da Noticia é Obrigatório";

        if (string.IsNullOrEmpty(pNot_imagem))
            return "A Imagem da Noticia é Obrigatório";

        try
        {
            if (pNot_id > 0)
                dsNoticia.Update(pNot_titulo, pNot_texto, pNot_data, pNot_imagem, pNot_id);
            else
                dsNoticia.Insert(pNot_titulo, pNot_texto, pNot_data, pNot_imagem);
        }
        catch (Exception e)
        {
            return "Erro ao inserir a Noticia: " + e.Message;
        }
        return "";
    }

    #endregion
}
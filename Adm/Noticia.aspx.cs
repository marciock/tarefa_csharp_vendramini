using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Adm_Noticia : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            MultiViewNoticia.ActiveIndex = 0;
            habilitarCampos(false);
        }
        // BARRAS DE EDIÇÃO
        BarraEdicao.BtnNovo.Click += new EventHandler(btnNovoClick);
        BarraEdicao.BtnAlterar.Click += new EventHandler(btnAlterarClick);
        BarraEdicao.BtnCancelar.Click += new EventHandler(btnCancelarClick);
        BarraEdicao.BtnGravar.Click += new EventHandler(btnSalvarClick);
        BarraEdicao.BtnExcluir.Click += new EventHandler(btnExcluirClick);

    }
    protected void btnLista_Click(object sender, EventArgs e)
    {
        MultiViewNoticia.ActiveViewIndex = 0;
    }

    protected void btnCadastrar_Click(object sender, EventArgs e)
    {
        MultiViewNoticia.ActiveViewIndex = 1;
    }

    private void atualizaCampos(int pNotId)
    {
        if (pNotId > 0)
        {
            Noticia noticia = new Noticia(pNotId);
            campoId.Value = noticia.Not_id.ToString();
            txtNotTitulo.Text = noticia.Not_titulo;
            txtNotTexto.Text = noticia.Not_texto;
            txtNotData.Text = noticia.Not_data;
            txtNotImagem.Text = noticia.Not_imagem;
        }
        else
        {
            campoId.Value = "0";
            txtNotTitulo.Text = "";
            txtNotTexto.Text = "";
            txtNotData.Text = "";
            txtNotImagem.Text = "";

        }
    }

    private void habilitarCampos(bool habilitar)
    {
        txtNotTitulo.Enabled = habilitar;
        txtTexto.Enabled = habilitar;
        txtData.Enabled = habilitar;
        txtImagem.Enabled = habilitar;
    }

    private int codigoSelecionado()
    {
        if (GridView1.SelectedDatakey != null)
            return int.Parse(GridView1.SelectedDataKey[0].ToString());
        else
            return 0;
    }
    protected void btnNovoClick(object sender, EventArgs e)
    {
        atualizaCampos(0);
        habilitarCampos(true);
    }
    protected void btnAlterarClick(object sender, EventArgs e)
    {
        atualizaCampos(0);
        habilitarCampos(true);
    }
    protected void btnCancelarClick(object sender, EventArgs e)
    {
        atualizaCampos(0);
        habilitarCampos(true);
    }
    protected void btnExcluirClick(object sender, EventArgs e)
    {
        Noticia noticia = new Noticia();
        string retorno = noticia.excluir(int.Parse(campoID.Value));

        if (string.IsNullOrEmpty(retorno))
        {
            atualizaCampos(0);
            ObjectDataSource1.DataBind();
            GridView1.DataBind();
        }
        else
        {
            mostrarMensagem(retorno);
        }
            
    }
    private void mostrarMensagem(string mensagem)
    {
        ScriptManager.RegisterStartupScript(this, this.GetType(),
            Guid.NewGuid().ToString(), "alert('" + mensagem + "')", true);
    }

    protected void GridView1_SelectIndexChanged(object sender, EventArgs e)
    {
        atualizaCampos(codigoSelecionado());
        btnCadastrar_Click(null, null);
    }

}
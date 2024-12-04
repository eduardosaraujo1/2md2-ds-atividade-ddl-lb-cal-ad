using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _2md2_ds_atividade_ddl_lb_cal_ad
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private void handleError(string msg)
        {
            lblMsgErro.Text = msg;
        }

        private void evaluateDayLabel()
        {
            // Obter dados (subtrações por 1 para ignorar o valor padrão "Selecionar"
            int index = ddlDays.SelectedIndex - 1;
            string text = ddlDays.Text;
            int total = ddlDays.Items.Count - 1;

            // Se a opção selecionada for negativa, valor padrão provavelmente foi selecionado. Redefina valores dos labels
            if (index < 0)
            {
                posicaoListaDias.Text = "N/A";
                posicaoListaMeses.Text = "N/A";
                textoSelecionadoDias.Text = "N/A";
                return;
            }

            // Colocar dados nos campos
            posicaoListaDias.Text = index.ToString();
            textoSelecionadoDias.Text = text;
            totalItensDias.Text = total.ToString();
        }

        private void evaluateMonthLabel()
        {
            // Obter dadods
            int index = lbMonths.SelectedIndex;
            string text = lbMonths.Text;
            int total = lbMonths.Items.Count;

            // Posição do mês é negativa quando uma falta de seleção ocorre
            if (index < 0)
            {
                textoSelecionadoMeses.Text = "N/A";
                totalItensDias.Text = "N/A";
                totalItensMeses.Text = "N/A";
                return;
            }

            // Colocar dados nos campos
            posicaoListaMeses.Text = index.ToString();
            textoSelecionadoMeses.Text = text;
            totalItensMeses.Text = total.ToString();
        }

        private void refreshDisplay()
        {
            evaluateMonthLabel();
            evaluateDayLabel();
        }

        protected void add_Click(object sender, EventArgs e)
        {
            try
            {
                CultureInfo culture = new CultureInfo("pt-BR");
                string day = calendar.SelectedDate.ToString("dd");
                string month = calendar.SelectedDate.ToString("MMMM", culture);

                // Adicionar dia para lista SE não já estiver
                if (ddlDays.Items.FindByValue(day) == null)
                {
                    ddlDays.Items.Add(day);
                }

                // Adicionar mês à lista SE não já estiver
                if (lbMonths.Items.FindByValue(month) == null)
                {
                    lbMonths.Items.Add(month);
                }
            } catch (Exception error)
            {
                handleError(error.Message);
            }
        }

        protected void eliminate_Click(object sender, EventArgs e)
        {
            try
            {
                CultureInfo culture = new CultureInfo("pt-BR");
                // Obter o dia e o mês selecionado
                ListItem day = ddlDays.SelectedItem;
                ListItem month = lbMonths.SelectedItem;

                // Remover mês, não ocorrem falhar se nenhum item estiver selecionado (eu acho)
                lbMonths.Items.Remove(month);

                // Ignorar se o item selecionado for "Selecionar"
                if (ddlDays.SelectedItem.Value != "Selecionar")
                {
                    ddlDays.Items.Remove(day);
                }

                // Reavaliar quais são os valores dos labels
                refreshDisplay();
            } catch (Exception error)
            {
                handleError(error.Message);
            }
        }

        protected void resetList_Click(object sender, EventArgs e)
        {
            try
            {
                // Limpar lista de dias (incluir padrão)
                ddlDays.Items.Clear();
                ddlDays.Items.Add("Selecionar");

                // Limpar lista de meses
                lbMonths.Items.Clear();

                // Redefinir labels
                refreshDisplay();
            }
            catch (Exception error)
            {
                handleError(error.Message);
            }
        }

        protected void reset_Click(object sender, EventArgs e)
        {
            try
            {
                // Remover seleção calendario
                calendar.SelectedDate = Convert.ToDateTime("01/01/0001");

                // Remover seleções de listas
                ddlDays.SelectedIndex = -1;
                lbMonths.SelectedIndex = -1;

                // Atualizar exibição de dados
                refreshDisplay();
            }   
            catch (Exception error)
            {
                handleError(error.Message);
            }
        }

        protected void ddlDays_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                evaluateDayLabel();
            }
            catch (Exception error)
            {
                handleError(error.Message);
            }
        }

        protected void lbMonths_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                evaluateMonthLabel();
            }
            catch (Exception error)
            {
                handleError(error.Message);
            }
        }
    }
}
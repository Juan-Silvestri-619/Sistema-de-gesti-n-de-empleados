using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DOMAIN
{
    public class PuestoLaboral
    {
        #region Propiedades
        public int IdPuesto { get; set; }
        public string Puesto { get; set; }
        public decimal SalarioBase { get; set; }
        #endregion

        #region Métodos Públicos
        //Método constructor que permite traer los registros, por ejemplo, de una BD.
        public PuestoLaboral(int id, string puesto, decimal salario)
        {
            IdPuesto = id;
            Puesto = ValidarTexto(puesto);
            SalarioBase = ValidarSalario(salario);
        }
        //Método constructor que permite crear un nuevo puesto.
        public PuestoLaboral(string puesto, decimal salario)
        {
            Puesto = ValidarTexto(puesto);
            SalarioBase = ValidarSalario(salario);
        }
        //Permite aumentar el salario en base al porcentaje asignado.
        public decimal AumentarSalarioBase(decimal porcentaje)
        {
            decimal AumentarSalario = 0;

            if (porcentaje <= 0)
                throw new ArgumentException("El valor debe ser mayor a cero");

            AumentarSalario = SalarioBase + (SalarioBase * porcentaje / 100);

            return AumentarSalario; 
        }
        #endregion

        #region Métodos Privados 
        private string ValidarTexto(string texto)
        {
            if (string.IsNullOrWhiteSpace(texto))
                throw new ArgumentException("El contenido no puede estar vacío");

            return texto;
        }
        private decimal ValidarSalario(decimal valor)
        {
            if (valor < 0)
                throw new ArgumentException("El valor no puede ser menor a cero");

            return valor;
        }
        #endregion
    }
}

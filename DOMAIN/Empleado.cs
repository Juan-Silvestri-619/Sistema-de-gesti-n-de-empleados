using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DOMAIN
{
    public class Empleado
    {
        #region Propiedades
        public int IdEmpleado { get; private set; }
        public string Nombre { get; private set; }
        public string Apellido { get; private set; }
        public DateTime FechaIngreso { get; private set; }
        public bool Estado { get; private set; }
        public PuestoLaboral PuestoLaboral { get; private set; }
        #endregion

        #region Métodos Públicos
        //Método constructor que permite traer los registros, por ejemplo, de una BD
        public Empleado(int id, string nombre, string apellido, DateTime fechaIngreso,
            bool estado, PuestoLaboral puestoLaboral)
        {
            IdEmpleado = id;
            Nombre = ValidarTexto(nombre);
            Apellido = ValidarTexto(apellido);
            FechaIngreso = ValidarFecha(fechaIngreso);
            Estado = estado;
            PuestoLaboral = ValidarPuesto(puestoLaboral);
        }
        //Método constructor que permite crear un nuevo Empleado
        public Empleado(string nombre, string apellido, PuestoLaboral puestoLaboral)
        {
            Nombre = ValidarTexto(nombre);
            Apellido = ValidarTexto(apellido);
            FechaIngreso = DateTime.Now;
            Estado = true;
            PuestoLaboral = ValidarPuesto(puestoLaboral);
        }
        //Permite deshabilitar un empleado. Está planteado de dicha forma por lo siguiente:
        //1. Lo echan de la empresa o se retira. 
        public void DesactivarEmpleado()
        {   
            Estado = false;
        }
        #endregion

        #region Métodos Privados
        private string ValidarTexto(string texto)
        {
            if (string.IsNullOrWhiteSpace(texto))
                throw new ArgumentException("No se permiten textos vacíos");
            return texto;
        }
        private DateTime ValidarFecha(DateTime fecha)
        {
            if (fecha > DateTime.Now)
                throw new ArgumentException("No está permitido fechas que superen a la fecha actual");
            
            return fecha;
        }
        private PuestoLaboral ValidarPuesto(PuestoLaboral puesto)
        {
            if (puesto == null)
                throw new ArgumentNullException(nameof(puesto), "no puede ser nulo");

            return puesto;
        }
        #endregion
    }
}

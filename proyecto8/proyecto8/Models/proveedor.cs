//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace proyecto8.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class proveedor
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public proveedor()
        {
            this.proveedor_producto = new HashSet<proveedor_producto>();
        }
    
        public int rut_ptoveedor { get; set; }
        public string nombre_proveedor { get; set; }
        public string direccion_proveedor { get; set; }
        public Nullable<int> telefono_proveedor { get; set; }
        public string email_proveedor { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<proveedor_producto> proveedor_producto { get; set; }
    }
}

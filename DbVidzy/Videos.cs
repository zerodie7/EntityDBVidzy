//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace DbVidzy
{
    using System;
    using System.Collections.Generic;
    
    public partial class Videos
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public System.DateTime ReleaseDate { get; set; }
        public Nullable<byte> GenresId { get; set; }
        public byte Classification { get; set; }
    
        public virtual Genres Genre { get; set; }
    }
}

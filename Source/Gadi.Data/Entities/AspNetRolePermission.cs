namespace Gadi.Data.Entities
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class AspNetRolePermission
    {
        [Key]
        [Column(Order = 0)]
        public string RoleId { get; set; }

        [Key]
        [Column(Order = 1)]
        public string PermissionId { get; set; }
    }
}

namespace Gadi.Data.Entities
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("DocumentType")]
    public partial class DocumentType
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public DocumentType()
        {
            Documents = new HashSet<Document>();
        }

        public int DocumentTypeId { get; set; }

        [Required]
        [StringLength(200)]
        public string Name { get; set; }

        [Required]
        [StringLength(1000)]
        public string BasePath { get; set; }

        public bool IsEnquiry { get; set; }

        public bool IsCounselling { get; set; }

        public bool IsAdmission { get; set; }

        public bool IsExpense { get; set; }

        public bool IsTrainer { get; set; }

        public bool IsFixAsset { get; set; }

        public bool IsBankDepositeDocument { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Document> Documents { get; set; }
    }
}

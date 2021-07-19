using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

#nullable disable

namespace CleanArchitecture.EntityModel.Entities
{
    [Table("Employee")]
    public partial class Employee
    {
        [Key]
        public long Id { get; set; }
        [StringLength(50)]
        public string Name { get; set; }
        [Column(TypeName = "smalldatetime")]
        public DateTime? DateOfJoining { get; set; }
        public int? DeptId { get; set; }

        [ForeignKey(nameof(DeptId))]
        [InverseProperty(nameof(Department.Employees))]
        public virtual Department Dept { get; set; }
    }
}

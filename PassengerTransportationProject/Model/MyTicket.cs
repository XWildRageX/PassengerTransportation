//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace PassengerTransportationProject.Model
{
    using System;
    using System.Collections.Generic;
    
    public partial class MyTicket
    {
        public int TicketID { get; set; }
        public string PhoneNumber { get; set; }
        public Nullable<int> PassportNumber { get; set; }
        public Nullable<int> PlaceNumber { get; set; }
        public Nullable<decimal> CostTicket { get; set; }
        public Nullable<int> NationalityID { get; set; }
        public Nullable<int> RouteID { get; set; }
        public Nullable<int> TransporterID { get; set; }
        public Nullable<int> PassengerID { get; set; }
    
        public virtual Nationality Nationality { get; set; }
        public virtual Passenger Passenger { get; set; }
        public virtual Route Route { get; set; }
        public virtual Transporter Transporter { get; set; }
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Survey
{
    public class User
    {
        public int Id { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string NameCompetition { get; set; }
        public string WorkNominationText { get; set; }
        public string WorkNominationValue { get; set; }
        public string Discipline { get; set; }
        public string Tested { get; set; }
        public string testedLVL { get; set; }
        public string CompanyName { get; set; }
        public string Position { get; set; }
        public string City { get; set; }
        public string Region { get; set; }
        public string Phone { get; set; }
        public string Email { get; set; }
        public string Statistic { get; set; }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebInClass3
{
    public class Student
    {
        public int StudentID { get; set; }
        public string Name { get; set; }
        public double Credits { get; set; }
        public string Phone { get; set; }

        public Student(int studentid, string name, double credits, string phone)
        {
            StudentID = studentid;
            Name = name;
            Credits = credits;
            Phone = phone;
        }
    }
}
using PZ3_NetworkService.ViewModel;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;

namespace PZ3_NetworkService.Model
{
    public class Ventil:BindableBase
    {
        public static int counter = 0;
        private int id;
        private String name;
        private String photoUri;        //za lokaciju
        private String errorPhotoUri;
        private String typename;
        private double val;
        public String Name
        {
            get { return name; }
            set { name = value; }
        }

        
        public String PhotoUri
        {
            get
            {
                return NetworkDataViewModel.appPath + "img/" + photoUri + ".jpg";
            }
            set
            {
                if (photoUri != value)
                {
                    photoUri = value;
                    OnPropertyChanged("PhotoUri");
                }
            }
        }
        public string ErrorPhotoUri
        {
            get
            {
                return NetworkDataViewModel.appPath + "img/"+ "Err" + errorPhotoUri + ".jpg";
            }
            set
            {
                if (errorPhotoUri != value)
                {
                    errorPhotoUri = value;
                    OnPropertyChanged("ErrorPhotoUri");
                }
            }
        }
        public String TypeName
        {
            get
            {
                return typename;
            }
            set
            {
                if (typename != value)
                {
                    PhotoUri = value;
                    typename = value;
                    OnPropertyChanged("TypeName");
                }
                
            }
        }
        public double Val
        {
            get
            {
                return val;
            }
            set
            {
                if (val != value)
                {
                    val = value;
                    OnPropertyChanged("Val");
                } 
            }
        }
        public int Id { get => id; set => id = value; }
       

        public Ventil(int idv, string n, string t, string tn, double v, string errorPhoto)
        {
            Id = idv;
            Name = n;
            PhotoUri = t;
            TypeName = tn;
            Val = v;
            ErrorPhotoUri = errorPhoto;
        }
        public override string ToString()
        {
            return String.Format("{0} {1} {2} {3}", Id, Name, PhotoUri, Val);
        }
    }
}

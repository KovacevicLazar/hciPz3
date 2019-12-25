using PZ3_NetworkService.Model;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;

namespace PZ3_NetworkService.ViewModel
{
    public class NetworkDataViewModel : BindableBase
    {
        public static String appPath = AppDomain.CurrentDomain.BaseDirectory.Remove(AppDomain.CurrentDomain.BaseDirectory.Length - 10); //lokacija projekta
    
        public MyICommand AddCommand { get; set; }
        public MyICommand DeleteCommand { get; set; }
        public MyICommand ApplyFilterCommand { get; set; }
        public MyICommand ResetFilterCommand { get; set; }

        bool rbvece = true, rbmanje = false; //koji rb je aktiviran..
        public bool Rbvece { get { return rbvece; } set { rbvece = value; } }
        public bool Rbmanje { get { return rbmanje; } set { rbmanje = value; } }

        static ObservableCollection<Ventil> sviVentili = new ObservableCollection<Ventil>();  //SVI VENTILI KOJI SU DODATI
        public static ObservableCollection<Ventil> SviVentili { get { return sviVentili; } set { sviVentili = value; } }

        static ObservableCollection<Ventil> ventili = new ObservableCollection<Ventil>(); //Samo oni koje treba prikazati nakon filtriranja
        public static ObservableCollection<Ventil> Ventili  { get{ return ventili; } set{ ventili = value; } }

        public static BindingList<String> Tipovi { get; set; }  //lista tipova za combo

        public Ventil selectedVentil;
        public Ventil SelectedVentil { get { return selectedVentil; } set { selectedVentil = value; DeleteCommand.RaiseCanExecuteChanged(); } }

        private String tipimg; // koristim za lokaciju slike tipa ventila
        public String Tipimg
        {
            get
            {
                return appPath + "img/" + tipimg + ".jpg";
            }
            set
            {
                if (value != tipimg)
                {
                    tipimg = value;
                    OnPropertyChanged("Tipimg");
                }
            }
        }
        
        //podaci koje bajndujemo iz dela za dodavanje novog ventila..trebaju nam za pravljenje novog objekta
        String name, tip , idBind;
        int id=0;
        public String Name { get => name; set => name = value; }
        public String Tip { get => tip; set { Tipimg = value; tip = value; }  }
        public String IdBind { get { return idBind; } set { idBind = value; } }
        //za filtriranje
        static String filtertype;
        public static String FilterType { get { return filtertype; } set { filtertype = value; } }
        int id1 = 0; 
        String idfilter;
        public String IdFilter { get { return idfilter; } set { idfilter = value; } }

       

        public NetworkDataViewModel()
        {
            Tipovi = new BindingList<String>(); //tipovi ventila
            Tipovi.Add("Elektromagnetni ventil");
            Tipovi.Add("Kuglasti ventil");
            Tipovi.Add("Zaporni ventil");
       
            AddCommand = new MyICommand(OnAdd);
            DeleteCommand = new MyICommand(OnDelete, CanDelete);
            ApplyFilterCommand = new MyICommand(OnApplyFilter);
            ResetFilterCommand = new MyICommand(OnResetFilter);
        }

        private void OnAdd()
        {
            if (!AddTypeValidate())
            {
                MessageBox.Show("Izaberite Tip.");
                return;
            }
            else if(!AddNameValidate())
            {
                MessageBox.Show("Unesite Naziv.");
                return;
            }
            else if(!AddIdValidate())
            {
                MessageBox.Show("Uneli ste pogrešno ID, ili ovaj ID već postoji.");
                return;
            }
            else
            {    
               SviVentili.Add(new Ventil(id, Name, Tip, Tip, 0,Tip));
            }
            OnResetFilter();
        }

        private void OnApplyFilter()
        {
            if(!TypeValidate() && !IdValidate())
            {
                MessageBox.Show("Izaberite tip ili proverite da li ste dobro uneli id.");
                return;
            }

            Ventili.Clear();
            foreach (Ventil v in SviVentili)
            {
                if (TypeValidate()) //unet tip
                {
                    if (IdValidate())   //unet id..
                    {
                        if (Rbvece)    //radiobuton vece od
                        {
                            if ( (v.TypeName.Equals(FilterType)  && v.Id > id1))
                            {
                                Ventili.Add(v);
                            }
                        }
                        else        //Rbmanje  IsChecked
                        {
                            if (v.TypeName.Equals(FilterType) && v.Id < id1)
                            {
                                Ventili.Add(v);
                            }
                        }
                    }
                    else
                    {
                        if (v.TypeName.Equals(FilterType))  //ako id nije unet izdvajamo samo po tipu
                        {
                            Ventili.Add(v);
                        }
                    }
                }
                else        //nije unet tip
                {
                    if (IdValidate())   //dobro unet id
                    {
                        if (Rbvece)    //Rbvece  IsChecked
                        {
                            if (v.Id > id1)
                            {
                                Ventili.Add(v);
                            }
                        }
                        else        //Rbmanje  IsChecked
                        {
                            if (v.Id < id1)
                            {
                                Ventili.Add(v);
                            }
                        }
                    }
                }
            }
        }
        private bool IdValidate() //da li je dobro unet id u filteru
        {
            if (Int32.TryParse(IdFilter, out id1) && id1 > 0)
            {
                return true;
            }
            return false;
        }

        private bool AddTypeValidate() //da li je izabran tip prilikom dodavanja
        {
            if (Tip != null)
            {
                return true;
            }
            return false;
        }

        private bool AddNameValidate() //da li je unet naziv prilikom dodavanja
        {
            if (Name == null || Name.ToString().Trim().Equals(""))
            {
                return false;
            }
            return true;
        }

        private bool AddIdValidate() //da li je dobro unet ID prilikom dodavanja
        {
            if (Int32.TryParse(IdBind, out id) && id > 0)
            {
                foreach(Ventil v in SviVentili)
                {
                    if (v.Id == id)
                        return false;
                }

                return true;
            }
            return false;
        }

        private bool TypeValidate() //da li je izabran tip
        {
            if (FilterType != null)
            {
                return true;
            }
            return false;
        }

        private void OnResetFilter()
        {
            Ventili.Clear();
            
            foreach (Ventil v in SviVentili)
            {
                Ventili.Add(v);
            }
        }
        private bool CanDelete()
        {
            return SelectedVentil != null;     //aktiviraj dugme za brisanje
        }
        private void OnDelete()
        {
            SviVentili.Remove(SelectedVentil);
            Ventili.Remove(SelectedVentil);
        }


    }
}

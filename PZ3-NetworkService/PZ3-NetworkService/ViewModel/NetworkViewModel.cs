using PZ3_NetworkService.Model;
using PZ3_NetworkService.Views;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Linq;
using System.Net;
using System.Net.Sockets;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;

namespace PZ3_NetworkService.ViewModel
{
    class NetworkViewModel : BindableBase
    {
        public MyICommand<ListView> SelectionChangedCommand { get; set; }
        public MyICommand MouseLeftButtonUpCommand { get; set; }
        public MyICommand<Canvas> DropCommand { get; set; }
        public MyICommand<Canvas> RemoveCommand { get; set; }
        public static UserControl UserControl { get; set; }

        private static Ventil draggedItem = null;
        private static Ventil selectedItem = null;
        private static bool dragging = false;

        public static bool Dragging { get { return dragging; } set { dragging = value; } }
        public static Ventil DraggedItem { get { return draggedItem; } set { draggedItem = value; } }
        public static Ventil SelectedItem { get { return selectedItem; } set { selectedItem = value; } }


        private static BindingList<Ventil> sviVentili = new BindingList<Ventil>();
        public static BindingList<Ventil> SviVentili
        {
            get
            {
                return sviVentili;
            }
            set
            {
                sviVentili = value;
            }
        }


        private static ObservableCollection<Ventil> ventiliSaKanvasa = new ObservableCollection<Ventil>();
        public static ObservableCollection<Ventil> VentiliSaKanvasa { get => ventiliSaKanvasa; set => ventiliSaKanvasa = value; }


        private static Dictionary<Canvas, Ventil> canvasGrid = new Dictionary<Canvas, Ventil>();
        public static Dictionary<Canvas, Ventil> CanvasGrid { get => canvasGrid; set => canvasGrid = value; }
      
  
        public NetworkViewModel()
        {
            SelectionChangedCommand = new MyICommand<ListView>(SelectionChanged);
            MouseLeftButtonUpCommand = new MyICommand(MouseLeftButtonUp);
            DropCommand = new MyICommand<Canvas>(Drop);
            RemoveCommand = new MyICommand<Canvas>(Remove);
 
            SviVentili.Clear();
            CanvasGrid.Clear();

            foreach (Ventil v1 in NetworkDataViewModel.SviVentili)
            {
                SviVentili.Add(v1);
            }

            //bool vecPostoji = false;
            //foreach (Ventil v1 in NetworkDataViewModel.SviVentili)
            //{
            //    foreach (Ventil v2 in ventiliSaKanvasa)
            //    {
            //        if (v1.Id == v2.Id)
            //        {
            //            vecPostoji = true;
            //            break;
            //        }
            //    }
            //    if (!vecPostoji)
            //    {
            //        SviVentili.Add(v1);
            //    }
            //    vecPostoji = false;
            //}
            //CanvacRefresh();

        }


        private void SelectionChanged(ListView t)
        {
            if (!Dragging)
            {
                Dragging = true;
                DraggedItem = SelectedItem;
                DragDrop.DoDragDrop(t, DraggedItem, DragDropEffects.Copy | DragDropEffects.Move);
            }
        }

        private void MouseLeftButtonUp()
        {
            DraggedItem = null;
            SelectedItem = null;
            Dragging = false;
        }
        
        private void Drop(Canvas sender)
        {
            if (DraggedItem != null)
            {
                if (((Canvas)sender).Resources["taken"] == null && !CanvasGrid.ContainsValue(DraggedItem))
                {
                    CanvasGrid.Add((Canvas)sender,(Ventil)DraggedItem);
                    Uri imgUri = new Uri(DraggedItem.PhotoUri, UriKind.Relative);
                    BitmapImage imageBitmap = new BitmapImage(imgUri);
                    ((Canvas)sender).Background = new ImageBrush(imageBitmap);
                    ((Canvas)sender).Resources.Add("taken", true);
                    ((TextBlock)(sender).Children[0]).Text = " ID[" + DraggedItem.Id.ToString() + "]  Name[" + DraggedItem.Name + "]";


                    for (int i = 0; i < SviVentili.Count; i++)
                    {
                        if (SviVentili[i].Id == DraggedItem.Id)
                        {

                            VentiliSaKanvasa.Add(SviVentili[i]);
                            SviVentili.RemoveAt(i);
                            break;
                        }
                    }
                    OnPropertyChanged("SviVentili");
                }
                else if(CanvasGrid.ContainsValue(DraggedItem))
                {
                    MessageBox.Show("Ovaj objekat se već nalazi na nekom mestu.");
                }
                SelectedItem = null;
                Dragging = false; 
            }
        }
        private void Remove(Canvas sender)
        {
            if (((Canvas)sender).Resources["taken"] != null)
            {
                string[] lineParts = ((TextBlock)(sender).Children[0]).Text.Split('[', ']');  //ID[1] Name[1]
                int id = Int32.Parse(lineParts[1]);

                foreach (Ventil r in ventiliSaKanvasa.ToList())
                {
                    if (r.Id == id)
                    {
                        SviVentili.Add(r);
                        ventiliSaKanvasa.Remove(r);
                    }
                }
                CanvasGrid.Remove(sender);
                ((Canvas)sender).Background = Brushes.DarkGray;
                ((Canvas)sender).Resources.Remove("taken");
                ((TextBlock)(sender).Children[0]).Text = "Slobodno mesto";
            }
        }


        //public static void CanvacRefresh()
        //{
        //    for (int i = 0; i < Canvases.Count; i++)
        //    {
        //        Ventil v = canvasGrid[(Canvas)Canvases[i]];
        //        UserControl.Dispatcher.Invoke((Action)(() => //change picture
        //        {
                    
        //                BitmapImage logo = new BitmapImage();
        //                logo.BeginInit();
        //                logo.UriSource = new Uri(v.ErrorPhotoUri);
        //                logo.EndInit();
        //                Canvases[i].Background = new ImageBrush(logo);
                    
        //        }));
        //    }
        //}


        public static void ChangePhotoAndValue(int rb, double pritisak)
        {
            Ventil vent = NetworkDataViewModel.SviVentili[rb];
            int idVentila = vent.Id;


            if (pritisak < 5 || pritisak > 16)
            {
                foreach (var KeyValue in CanvasGrid)
                {
                    UserControl.Dispatcher.Invoke((Action)(() => //change picture
                    {
                        string[] lineParts = ((TextBlock)((Canvas)KeyValue.Key).Children[0]).Text.Split('[', ']');  //ID[1] Name[1]
                        int id = Int32.Parse(lineParts[1]);
                        if (id == idVentila)
                        {
                            Ventil v = KeyValue.Value;
                            BitmapImage logo = new BitmapImage();
                            logo.BeginInit();
                            logo.UriSource = new Uri(v.ErrorPhotoUri);
                            logo.EndInit();
                            KeyValue.Key.Background = new ImageBrush(logo);
                        }
                    }));
                }
            }
            else
            {
                foreach (var KeyValue in CanvasGrid)
                {
                    UserControl.Dispatcher.Invoke((Action)(() => 
                    {
                        string[] lineParts = ((TextBlock)((Canvas)KeyValue.Key).Children[0]).Text.Split('[', ']');  //ID[1] Name[1]
                        int id = Int32.Parse(lineParts[1]);
                        if (id == idVentila)
                        {
                            Ventil v = KeyValue.Value;
                            BitmapImage logo = new BitmapImage();
                            logo.BeginInit();
                            logo.UriSource = new Uri(v.PhotoUri);
                            logo.EndInit();
                            KeyValue.Key.Background = new ImageBrush(logo);
                        }
                    }));
                }
            }
        }
    }
}

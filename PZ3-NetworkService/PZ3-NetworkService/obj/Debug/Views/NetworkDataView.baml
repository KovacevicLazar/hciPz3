   M S B A M L   `   `   `  ����M  IPZ3-NetworkService, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullC&clr-namespace:PZ3_NetworkService.ViewsPZ3_NetworkService.Views  5      ?$clr-namespace:PZ3_NetworkService.VMLPZ3_NetworkService.VML  5      .    (PZ3_NetworkService.Views.NetworkDataView   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      8local&clr-namespace:PZ3_NetworkService.Views     5      4vml$clr-namespace:PZ3_NetworkService.VML     5      -   'PZ3_NetworkService.VML.ViewModelLocator    AutoHookedUpViewModel  . 
�������$��710.5��5	   2   $��570.5��6@   .��5
      � $��0,0,0,0q�6    � RowDefinitions 5   
   �� 5      $
��Auto �6   6,   �� 5      $
��Auto �6   6,   �� 5      $
��Auto �6   $��29��6*   6;   �� 5      $
��Auto �6   $��7��6*   6:   .+�5   
   ��  �� Orientation$ 
Horizontal=�6   $��10,10,10,10q�6.   .+�5      �� $	��701��6   $
��Left=�6%   $��	0,0,0,246q�6@   .+�5      �� $��0,0,10,0q�6   
�������$��60��6E   .+�5      �� $
��Bold"�6   $��FILTER:��6.   $	��214��6@   $
��Left=�6L   6i   �� 5      $ 
Horizontal=�6!   .+�5      �� $��Tip ventila:��6    $
��Left=�67   $��66��6S   $��0,0,0,0q�6^   $��26��6o   �� 5      $��Center=�6#    � ToolTip$3 -Kliknite za izbor jednog od ponudjenih tipova��6@   $	��146��6�   $��23��6�   $��Center=�6�   ��6x   �� *Tipovi+ �� SelectedItem 6�   �� *
FilterType+ �� Mode$ TwoWay=�6�   �� 5      $	��Id:��6    $
��Left=�6.   $	��Top=�6I   $��24��6a   $��0,3,0,0q�6l   �� 5      $��0,0,5,0q�6%   .+�5      	� $��Veći od  :��6*   
������� d� 	IsChecked 6R   �� *Rbvece+6q   	� 5      $��	Manji od:��6*   
������� 6Q   �� *	Rbmanje+6q   5      �� 5      $��38��6I   $��24��6T   $��Center=�6`   ��6"   �� *
IdFilter+$ TwoWay=�6`   �� 5       $\ VKlikom na ovo dugme prikazace se svi ventili koji zadovoljavaju prethodne kriterijume.��6I   $
��Bold"�6�   $��12(�6�   $��Primeni filter��6�   
�������$��83��6�   $��5 0 0 0q�6   $��20��6  ��6!   �� *ApplyFilterCommand+6  �� 5!      $E ?Klikom na ovo dugme u listi se prikazuju svi postojeci ventili.��6H   $
��Bold"�6�   
�������$��Poništi filter��6�   $��75��6�   $��5 0 0 0q�6�   $��20��6�   ��6!   �� *ResetFilterCommand+6�   5"      5#      &   System.Windows.Controls.DataGrid  5$      -   5          Name$ 	dg_tabela��5$      
�������   
IsReadOnly . 	   AutoGenerateColumns	 .  $	��305��6�   $	��Top=�6�   $��	0,10,10,0q�6  ��6E   �� *	Ventili+$ TwoWay=� 6r   �� 
 �� Path$
 SelectedVentil�$ TwoWay=�   Columns 5%      0  *System.Windows.Controls.DataGridTextColumn  5&      ,  &System.Windows.Controls.DataGridColumn   Header$	 ID:��6D      Width5  /System.Windows.Controls.DataGridLengthConverter$	 100 6Q   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6-   �� *Id+   ElementStyle 5'      �� 5(   "    �� 
TargetType" ��6(   .�5)   &   ��  �� Property �@��TextAlignment �� Value$ Center=�6F   �� 5*   &    � ��$ Center=�6J   5+   #   5-      4  .System.Windows.Controls.DataGridTemplateColumn  5.      $ Izgled ventila:��62   $	 100 6K      CellTemplate 5/      �� 50   "   .R�51   &   �� $��50��6U   $��50��6a   ��6,   �� *
PhotoUri+$ TwoWay=�6a   52   #   54        56      $ Naziv:��6F   $ * 6V    6-   �� *Name+ 57      �� 58   "   " ��6(   .�59   &   ��  �@��TextAlignment$ Center=�6F   �� 5:   &    � ��$ Center=�6J   5;   #   5=        5?      $ Tip ventila:��6J   $	 130 6`    6-   �� *
TypeName+ 5@      �� 5A   "   " ��6(   .�5B   &   ��  �@��TextAlignment$ Center=�6F   �� 5C   &    � ��$ Center=�6J   5D   #   5F        5H      $ 	Pritisak:��6E   $ 80 6X    6-   �� *Val+ 5I      �� 5J   "   " ��6(   .�5K   &   ��  �@��TextAlignment$ Center=�6F   �� 5L   &    � ��$ Center=�6J   5M   #   5O      5Q      5R      �� 5S      $	��146��6   $��-150,380,0,91q�6%   .+�5T      �� $��Dodaj��6   $' !Klikni za dodavanje novog ventila��6)   $
��Bold"�6U   
�������$��	10,0,10,5q�6�   $��34��6�   ��6y   �� *
AddCommand+6�   �� 5U      $��Ukloni��6   $8 2Klikni za uklanjanje selektovanog ventila iz liste��6*   $
��Bold"�6h   
�������$��34��6�   $��
10,5,10,10q�6�   ��6�   �� *DeleteCommand+6�   5V      �� 5W      $	��148��6   $��-440,380,0,91q�6%   
�������.+�5Y      �� -   5         ��Name$ labelizgled��5Y      $
��Bold"�6-   $��Izgled Ventila:��6?   $
��Left=�6Y   $��90��6u   $��0,0,0,0q�6�   $��26��6�   �� 5Z      -   5         ��Name$ TypePriview��5Z      $ Slika ventila��6-   $
��Left=�6_   $	��104��6z   $	��Top=�6�   $	��116��6�   $��	22,15,0,0q�6�   ��6E   �� *Tipimg+6�   5[      �� 5]      $��-1000,380,0,91q�6   $	��399��61   
�������.+�5^      �� $
��Bold"�6   $��Dodaj novi:��6+   $
��Left=�6B   $	��277��6]   �� 5_      $ 
Horizontal=�6   .+�5`      �� $��ID  Ventila    :��6   $
��Left=�67   $��81��6S   $��60,0,0,0q�6^   $��25��6p   �� 5a      $  Unesite ceo pozitivan broj��6C   $	��192��6i   $��23��6u   $��Center=�6�   ��6   �� *IdBind+$ TwoWay=�6�   5b      �� 5c      $ 
Horizontal=�6   $��30��66   .+�5d      �� $��Naziv Ventila:��6   $
��Left=�65   $��81��6Q   $��60,5,0,0q�6]   �� 5e      -   5         ��Name$ Nemebox��5e      $ Unesite naziv ventila��6/   $
��Left=�6O   $	��192��6j   $��23��6v    �� TextWrapping$
 Wrap=�6�   $��Center=�6�   $��0,4,0,3q�6�   ��6�   �� *Name+$ TwoWay=�6�   5f      �� 5g      $ 
Horizontal=�6   .+�5h      �� $��Tip Ventila    :��6   $
��Left=�67   $��81��6S   $��60,0,0,0q�6^   �� 5i      $
��Left=�6   $3 -Kliknite za izbor jednog od ponudjenih tipova��6;   $	��191��6�   $��22��6�   ��6s   �� *Tipovi+ 6�   �� *Tip+$ TwoWay=�6�   5j      5k      5l      5n      5o      
   M S B A M L   `   `   `  ����M  IPZ3-NetworkService, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullC&clr-namespace:PZ3_NetworkService.ModelPZ3_NetworkService.Model  5      K*clr-namespace:PZ3_NetworkService.ViewModelPZ3_NetworkService.ViewModel  5      ?$clr-namespace:PZ3_NetworkService.VMLPZ3_NetworkService.VML  5      c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35qPclr-namespace:System.Windows.Interactivity;assembly=System.Windows.InteractivitySystem.Windows.Interactivity 5
      *    $PZ3_NetworkService.Views.NetworkView   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      7data&clr-namespace:PZ3_NetworkService.Model     5      @	viewModel*clr-namespace:PZ3_NetworkService.ViewModel     5      4vml$clr-namespace:PZ3_NetworkService.VML     5      ^iPclr-namespace:System.Windows.Interactivity;assembly=System.Windows.Interactivity     5
      -   'PZ3_NetworkService.VML.ViewModelLocator    AutoHookedUpViewModel  . $��710.5��5      $��570.5��6-    � DataContext 5      3  -PZ3_NetworkService.ViewModel.NetworkViewModel  5   
   .��5      � $��
0,10,10,10q�6   .+�5   
   ��  �� Orientation$ Vertical=�6   $
��Left=�6,   $��0,0,0,34q�6G   $	��483��6Y   .+�5      �� $ 
Horizontal=�6   .+�5      �� $ Vertical=�6   $��5,5,5,5q�64   .+�5      �� -   5        $��Canvas1��5   7   $	��146��6   $	��134��6*   
������� J� 	AllowDrop . .+�5      ��  �� Bottom$ 0��6$   $��14(�66   $��Center=�6D   $��Slobodno mesto��6a   
 �� Top$	 115��6w   .  (System.Windows.Interactivity.Interaction   Triggers 5      /  )System.Windows.Interactivity.EventTrigger  5         	EventName$
 Drop��6-   .  (System.Windows.Interactivity.TriggerBase   Actions. 5   "   6  0System.Windows.Interactivity.InvokeCommandAction  	   Command	 68   �� *DropCommand+
   CommandParameter
 6X   ��  �� ElementName$ Canvas1��5      5      �� 5      $��Oslobodi��6    � ToolTip$7 1Klikom na dugme uklanja se ventil sa ove pozicije��60   $
��Bold"�6l   
�������$��17(�6�   $��28��6�   $	��146��6�   ��6�   �� *RemoveCommand+��6�   �� $ Canvas1��5      5      �� 5!      $ Vertical=�6   $��5,5,5,5q�64   .+�5"      �� -   5        $��Canvas_1��5"   6   $	��146��6   $	��134��6)   
������� . .+�5#      �� $ 0��6$   $��14(�66   $��Center=�6D   $��Slobodno mesto��6a   $	 115��6w    5$        5%      $
 Drop��6-   . 5&   "     	 68   �� *DropCommand+
 6X   �� $ Canvas_1��5'      5)      �� 5*      $��Oslobodi��6   $7 1Klikom na dugme uklanja se ventil sa ove pozicije��60   
�������$
��Bold"�6   $��17(�6�   $��28��6�   $	��146��6�   ��6�   �� *RemoveCommand+��6�   �� $ Canvas_1��6  5+      �� 5-      $ Vertical=�6   $��5,5,5,5q�64   .+�5.      �� -   5        $��Canvas_2��5.   6   $	��146��6   $	��134��6)   
������� . .+�5/      �� $ 0��6$   $��14(�66   $��Center=�6D   $��Slobodno mesto��6a   $	 115��6w    50        51      $
 Drop��6-   . 52   "     	 68   �� *DropCommand+
 6X   �� $ Canvas_2��53      55      �� 56      $��Oslobodi��6   $7 1Klikom na dugme uklanja se ventil sa ove pozicije��60   $
��Bold"�6l   
�������$��17(�6�   $��28��6�   $	��146��6�   ��6�   �� *RemoveCommand+��6�   �� $ Canvas_2��6  57      �� 58      $ Vertical=�6   $��5,5,5,5q�64   59      �� 5;      $ 
Horizontal=�6   .+�5=      �� $ Vertical=�6   $��5,5,5,5q�64   .+�5>      �� -   5        $��Canvas_4��5>   6   $	��146��6   $	��134��6)   
������� . .+�5?      �� $ 0��6$   $��14(�66   $��Center=�6D   $��Slobodno mesto��6a   $	 115��6w    5@        5A      $
 Drop��6-   . 5B   "     	 68   �� *DropCommand+
 6X   �� $ Canvas_4��5C      5E      �� 5F      $��Oslobodi��6   $7 1Klikom na dugme uklanja se ventil sa ove pozicije��60   $
��Bold"�6l   
�������$��17(�6�   $��28��6�   $	��146��6�   ��6�   �� *RemoveCommand+��6�   �� $ Canvas_4��6  5G      �� 5I      $ Vertical=�6   $��5,5,5,5q�64   .+�5J      �� -   5        $��Canvas_5��5J   6   $	��146��6   $	��134��6)   
������� . .+�5K      �� $ 0��6$   $��14(�66   $��Center=�6D   $��Slobodno mesto��6a   $	 115��6w    5L        5M      $
 Drop��6-   . 5N   "     	 68   �� *DropCommand+
 6X   �� $ Canvas_5��5O      5Q      �� 5R      $��Oslobodi��6   $7 1Klikom na dugme uklanja se ventil sa ove pozicije��60   $
��Bold"�6l   
�������$��17(�6�   $��28��6�   $	��146��6�   ��6�   �� *RemoveCommand+��6�   �� $ Canvas_5��6  5S      �� 5U      $ Vertical=�6   $��5,5,5,5q�64   .+�5V      �� -   5        $��Canvas_6��5V   6   $	��146��6   $	��134��6)   
������� . .+�5W      �� $ 0��6$   $��14(�66   $��Center=�6D   $��Slobodno mesto��6a   $	 115��6w    5X        5Y      $
 Drop��6-   . 5Z   "     	 68   �� *DropCommand+
 6X   �� $ Canvas_6��5[      5]      �� 5^      $��Oslobodi��6   $7 1Klikom na dugme uklanja se ventil sa ove pozicije��60   $
��Bold"�6l   
�������$��17(�6�   $��28��6�   $	��146��6�   ��6�   �� *RemoveCommand+��6�   �� $ Canvas_6��6  5_      �� 5`      $ Vertical=�6   $��5,5,5,5q�64   5b      �� 5d      $ 
Horizontal=�6   $	��177��62   $��0,0,10,0q�6?   .+�5f      �� $ Vertical=�6   $��5,5,5,5q�64   .+�5g      �� -   5        $��Canvas_8��5g   6   $	��146��6   $	��134��6)   
������� . .+�5h      �� $ 0��6$   $��14(�66   $��Center=�6D   $��Slobodno mesto��6a   $	 115��6w    5i        5j      $
 Drop��6-   . 5k   "     	 68   �� *DropCommand+
 6X   �� $ Canvas_8��5l      5n      �� 5o      $��Oslobodi��6   $7 1Klikom na dugme uklanja se ventil sa ove pozicije��60   
�������$
��Bold"�6~   $��17(�6�   $��28��6�   $	��146��6�   ��6�   �� *RemoveCommand+��6�   �� $ Canvas_8��6  5p      �� 5r      $ Vertical=�6   $��5,5,5,5q�64   .+�5s      �� -   5        $��Canvas_9��5s   6   $	��146��6   $	��134��6)   
������� . .+�5t      �� $ 0��6$   $��14(�66   $��Center=�6D   $��Slobodno mesto��6a   $	 115��6w    5u        5v      $
 Drop��6-   . 5w   "     	 68   �� *DropCommand+
 6X   �� $ Canvas_9��5x      5z      �� 5{      $��Oslobodi��6   $7 1Klikom na dugme uklanja se ventil sa ove pozicije��60   
�������$
��Bold"�6   $��17(�6�   $��28��6�   $	��146��6�   ��6�   �� *RemoveCommand+��6�   �� $ Canvas_9��6  5|      �� 5~      $ Vertical=�6   $��5,5,5,5q�64   .+�5      �� -	   5        $��	Canvas_10��5   6   $	��146��6   $	��134��6)   
������� . .+�5�      �� $ 0��6$   $��14(�66   $��Center=�6D   $��Slobodno mesto��6a   $	 115��6w    5�        5�      $
 Drop��6-   . 5�   "     	 68   �� *DropCommand+
 6X   �� $ 	Canvas_10��5�      5�      �� 5�      $��Oslobodi��6   $7 1Klikom na dugme uklanja se ventil sa ove pozicije��60   $
��Bold"�6l   
�������$��17(�6�   $��28��6�   $	��146��6�   ��6�   �� *RemoveCommand+��6�   �� $ 	Canvas_10��5�      �� 5�      $ Vertical=�6   $��5,5,5,5q�64   5�      5�      �� 5�   
   $��
483,0,0,10q�6   .+�5�      �� -
   5         ��Name$ listView��5�      $ Lista ventila��6*   $��0,5,5,5q�6B   
�������$	��509��6�   ��6i   �� *
SviVentili+ �� Mode$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=� �� SelectedItem 6�   �� *SelectedItem+��5�      �� 5�      .R�5�      �� $ 
Horizontal=�6%   .+�5�      �� $��65��6A   $��65��6L   $��Right=�6X   $��Center=�6t   ��6$   �� *
PhotoUri+6t   �� 5�      $
��Id: ��6(   $��18(�64   $��Center=�6B   $��Center=�6_   �� 5�      $��18(�6<   $��Center=�6J   $��Center=�6g   ��6(   �� *Id+6g   �� 5�      $�� Name: ��6(   $��18(�67   $��Center=�6E   $��Center=�6b   �� 5�      $��18(�6>   $��Center=�6L   $��Center=�6i   ��6(   �� *Name+6i   5�      5�       5�        5�      $ SelectionChanged��6%   . 5�        	 60   �� *SelectionChangedCommand+
 6\   �� $ listView��5�        5�      $ MouseLeftButtonUp��6%   . 5�        	 60   �� *MouseLeftButtonUpCommand+5�      5�      5�      5�      5�      
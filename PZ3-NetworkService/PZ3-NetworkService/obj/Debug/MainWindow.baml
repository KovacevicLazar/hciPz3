   M S B A M L   `   `   `  ����M  IPZ3-NetworkService, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:PZ3_NetworkServicePZ3_NetworkService  5   	   C&clr-namespace:PZ3_NetworkService.ViewsPZ3_NetworkService.Views  5   	   K*clr-namespace:PZ3_NetworkService.ViewModelPZ3_NetworkService.ViewModel  5   	   #    PZ3_NetworkService.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   2local clr-namespace:PZ3_NetworkService     5   	   8views&clr-namespace:PZ3_NetworkService.Views     5   	   @	viewModel*clr-namespace:PZ3_NetworkService.ViewModel     5   	     � Title$  Pritisak ventila��5
   	   $	��800��6"   $	��650��6.    � DataContext 5      6   0PZ3_NetworkService.ViewModel.MainWindowViewModel  5   
   6*    � 	Resources 5       �� DataType3  -PZ3_NetworkService.ViewModel.NetworkViewModel*   $PZ3_NetworkService.Views.NetworkView7   1PZ3_NetworkService.ViewModel.NetworkDataViewModel.   (PZ3_NetworkService.Views.NetworkDataView5   /PZ3_NetworkService.ViewModel.DataChartViewModel,   &PZ3_NetworkService.Views.DataChartView��%�   (��       5      *, +)(�� 7     5      *, +)(�� n     5      *, +)�� 5   
   "  6   .R�5        6"   5      �� 5   
   "  6   .R�5        6&   5      �� 5   
   "  6   .R�5        6$   5      5      .��5      �� $
��Auto=�6   $
��Auto=�6E   .��5   
   �  � RowDefinitions 5      �� 5       $
��Auto �6    60   �� 5!      $
��Auto �6    60   .+�5#      ]� $��0��6   $��5q�6%   .+�5$      o� $	��Top=�6   $��36��6,   
�������.@�5%      m� $��Network View��6   
�������$��14(�6G   $
��Bold"�6U    m� CommandParameter$ networkview��6�   $��36��6�   $��Center=�6�   $	��130��6�    m� Command 6g   �� *
NavCommand+6�   m� 5&      $��Network Data��6   
�������$��14(�6H   $
��Bold"�6V   $ networkdata��6�   $��36��6�   $��Center=�6�   $	��130��6�    6h   �� *
NavCommand+6�   m� 5'      $�� Data Chart��6   
�������$��14(�6F   $
��Bold"�6T   $ 	datachart��6�   $��36��6�   $��Center=�6�   $	��130��6�    6f   �� *
NavCommand+6�   5(      5)      � 5+      -   5         �Name$ MainContent��5+      $��1��6(   .+�5,      �� ��6!   �� *CurrentViewModel+6H   5-      5.      5/      50      
   M S B A M L   `   `   `  ����U  QЕжедневник v.1.1, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullK*clr-namespace:Ежедневник_v._1._1Ежедневник_v._1._1  5   	   -    'Ежедневник_v._1._1.MainWindow   5   	   W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   <local*clr-namespace:Ежедневник_v._1._1     5   	     � Title$  
MainWindow��5   	   $	��400��6   $	��750��6)   .��5	      � .+�5
   
   (  "System.Windows.Controls.DatePicker  -   5        $��
datePicker��5
      $
��Left=�6'   $	��Top=�6B   $��	10,10,0,0q�6Z   $	��125��6�      SelectedDate 6m   �� *SelectedDate+6�   �� 5   
   -   5        $��noteListBox��5      $
��Left=�6U   $	��Top=�6p   $	��250��6�   $	��260��6�   $��	10,50,0,0q�6�    �� DisplayMemberPath$ Title��6�    �� SelectedItem 6�   �� *SelectedNote+�� 5   
   -   5        $��titleTextBox��5      $
��Left=�6&   $	��Top=�6A   $	��300��6Y   $��30��6e   $��
270,10,0,0q�6q   �� 5   
   -   5        $��descriptionTextBox��5      $
��Left=�6,   $	��Top=�6G   $	��300��6_   $	��200��6k   $��
270,50,0,0q�6x    �� TextWrapping$
 Wrap=�6�   �� 5   
   -   5        $��Добавить��5      $
��Left=�6$   $	��Top=�6?   $	��101��6W   $��30��6c   $��270,260,0,0q�6o   6�   �� 5   
   -   5        $��Обновить��5      $
��Left=�6$   $	��Top=�6?   $	��101��6W   $��30��6c   $��376,260,0,0q�6o   6�   �� 5   
   -   5        $��Удалить��5      $
��Left=�6#   $	��Top=�6>   $	��101��6V   $��30��6b   $��482,260,0,0q�6n   6�   5      5      
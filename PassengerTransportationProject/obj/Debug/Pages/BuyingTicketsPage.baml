   M S B A M L   `   `   `  ����Y  UPassengerTransportationProject, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null[2clr-namespace:PassengerTransportationProject.Pages$PassengerTransportationProject.Pages  5      <    6PassengerTransportationProject.Pages.BuyingTicketsPage   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      Dlocal2clr-namespace:PassengerTransportationProject.Pages     5      _ [MaterialDesignThemes.Wpf, Version=4.9.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5        N� 
Background
  �����.��5      � .+�5   
   ��  �� Orientation$ Vertical=�6   $��Center=�6,   $��Center=�6I   .+�5      �� $��22(�6   $��Tahoma)�6&   $
��Bold"�6;   $��Center=�6M   $
��0 20q�6j   $8��2Укажите необходимые данные��6x   �� 5      -   5         ��Name$ NumberPhoneTextBox��5   �   .  (MaterialDesignThemes.Wpf.TextFieldAssist!   CharacterCounterVisibility$ 	Collapsed=�6    �� 	MaxLength$ 11��6�    � ToolTip$O IУкажите номер телефона для связи с вами.��6�    �� SelectionBrush
 ����)  #MaterialDesignThemes.Wpf.HintAssist   
IsFloating .  $	��330��6i  $��Center=�6u  $��50��6�     Hint$! Номер телефона��6�  $
��0 10q�6�   !  MaterialDesignOutlinedTextBox#��[  6�  �� 5      -   5        $ PassportNumberTextBox��5   �   $ 	Collapsed=�6   
 ���� .  $	��330��6+  $��Center=�67  $��50��6R  $! Номер паспорта��6^  $ 4��6�  $
��0 10q�6�  #��[  6�  �� 5      -   5        $��NationalityComboBox��5   �   $��50��6<   $	��330��6H    " MaterialDesignOutlinedComboBox#��[ 6T    .  	 �� DisplayMemberPath$	 Nationality1��6�   $ Гражданство��6�   $
��0 10q�6"  
 �� SelectedItem
 6   �� *Nationality+6"  �� 5      -   5        $��TypeComboBox��5   �   $��50��6   $	��330��6#   #��[ 6/    .   �� SelectedIndex$ 0��6�   $ Тип вагона��6�   $
��0 10q�6�   .@�5      �� $��Купе��6   �� 5      $��Плацкарт��6   5      �� 5      -   5         ��Name$ 	BuyButton��5      $	��150��6@   $��47��6L   
�������$
��0 20q�6l   ���#279667$��Купить��6�   5      5      5      
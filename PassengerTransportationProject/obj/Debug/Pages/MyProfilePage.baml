   M S B A M L   `   `   `  ����Y  UPassengerTransportationProject, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null[2clr-namespace:PassengerTransportationProject.Pages$PassengerTransportationProject.Pages  5      8    2PassengerTransportationProject.Pages.MyProfilePage   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      _ [MaterialDesignThemes.Wpf, Version=4.9.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      >local2clr-namespace:PassengerTransportationProject.Pages  5        N� Title$  MyProfilePage��5
      .��5      � .+�5   
   �� $��Center=�6   $��Center=�62   .+�5      �� $��Мои данные��6   $��Tahoma)�6*   $��30(�6>   $
��Bold"�6L   $
��0 15q�6^   �� 5      
������� �� CornerRadius$ 5��6(   $	��440��69   $	��800��6F   ._�5      �� $��15q�6   .+�5      ��  �� Orientation$ 
Horizontal=�6!   .+�5      �� $
��0 20q�6%   $ Vertical=�63   .+�5      �� $��Имя��6(   $��15(�63   $��Tahoma)�6A   $��Medium"�6U   $��0 0 0 5q�6i   �� 5      -   5        $��NameTextBox��5   [   �� 	MaxLength$ 50��6=   .  (MaterialDesignThemes.Wpf.TextFieldAssist!   CharacterCounterVisibility$ 	Collapsed=�6L   $��
ExtraLight"�6�    �� SelectionBrush
 ����)  #MaterialDesignThemes.Wpf.HintAssist   
IsFloating .   !  MaterialDesignOutlinedTextBox#��[  6n  $
��Left=�6�  $	��150��6�  ��6&   �� *Name+6�  5      �� 5      $��10 20q�6%   $ Vertical=�64   .+�5      �� $��Фамилия��6(   $��15(�67   $��Tahoma)�6E   $��Medium"�6Y   $��0 0 0 5q�6m   �� 5      -   5        $��SurnameTextBox��5   ]  $ 	Collapsed=�6x   $ 49��6�   $��
ExtraLight"�6�   
 ���� .  #��[  6s  $
��Left=�6�  $	��150��6�  ��6&   �� *	Surname+6�  5      �� 5      $
��0 20q�6%   $ Vertical=�63   .+�5      �� $��Отчество��6(   $��15(�68   $��Tahoma)�6F   $��Medium"�6Z   $��0 0 0 5q�6n   �� 5      -   5        $��PatronymicTextBox��5   `  $ 	Collapsed=�6B   $ 49��6�   $��
ExtraLight"�6�   
 ���� .  #��[  6y  $
��Left=�6�  $	��150��6�  ��6&   �� *
Patronymic+6�  5      5      �� 5      $ Vertical=�6!   .+�5       �� $ 
Horizontal=�6%   .+�5!      �� .+�5"   "   �� $��Tahoma)�6,   $��Дата рождения��6@   $��15(�6U   $��Medium"�6c   (  "System.Windows.Controls.DatePicker  5#   "   -   5        $��DateBirthPicker��5#      � Language$ ru-RU�6-   |�.  $��
ExtraLight"�6Q    .  $��50��6�   $	��175��6�    $  MaterialDesignOutlinedDatePicker#��[ 6�   $
��Left=�6�   $��	0 10 0 20q�6     Text 60  �� *	DateBirth+	 �� StringFormat$	 {0:yyyy.MM.dd}��
   CalendarStyle
 5$   &   �� 5%   *    �� 
TargetType&   System.Windows.Controls.Calendar"  60    " MaterialDesignCalendarPortrait �� BasedOn# [ 6F    �� 	Resources 5&   .     PrimaryHueMidBrush �� Color��%+   &	       �� 5'   2   $ #279667��6]   5(   /   5)   +   5+   #   5,      5-      �� 5.      .+�5/      �� $��Tahoma)�6(   $��Пол��6<   $��15(�6G   $��Medium"�6U   �� 50      $ Vertical=�6)   $	��0 5q�6@   .+�51   "   	� -   5        $��MaleRButton��51   .   $��0 0 0 5q�6A   .��52   &   �� $��
ExtraLight"�60   $��Мужской��6I   $��0 -2 0 0q�6X   53   #   	� 54   "   -   5        $��FemaleRButton��54   .   $��Center=�6C   .��55   &   �� $��
ExtraLight"�60   $��Женский��6I   $��0 -2 0 0q�6X   56   #   57      58      �� 59      $
��0 10q�6%   $ 
Horizontal=�63   .+�5:      �� $ Vertical=�6)   .+�5;   "   �� $��Tahoma)�6,   $��Пароль *��6@    � ToolTip$' !Обязательное поле��6P   $��15(�6l   $��Medium"�6z   $��0 0 0 5q�6�   G� 5<   "   -   5         G�Name$ PasswordTextBox��5<   �   $ 	Collapsed=�6.    G� 	MaxLength$ 49��6t    G� SelectionBrush
 ���� .  $	��150��6�   $��Center=�6�   $��50��6  $��Center=�6   + 'MaterialDesignOutlinedRevealPasswordBox#��[ 6�  0  *MaterialDesignThemes.Wpf.PasswordBoxAssist   Password 6:  �� *
Password+{�6y  ��  �� ElementName$# RevealPasswordFloatingEnabled�� �� Path$ 	IsChecked�6�  5=      �� 5>      $ Vertical=�6)   $
��10 0q�6@   .+�5?   "   �� $��Tahoma)�6,   $��Логин *��6@   $' !Обязательное поле��6O   $��15(�6k   $��Medium"�6y   $��0 0 0 5q�6�   �� 5@   "   -   5        $��LoginTextBox��5@   �   $��
ExtraLight"�6*   $ 49��6Y   $ 	Collapsed=�6h   
 ���� .  #��[  6  $
��Left=�6B  $	��150��6]  ��6B   �� *Login+6]  5A      �� 5B      -	   5         ��Name$ SaveButtonButton��5B   D   $��
300 25 0 0q�6^   $	��130��6s   $��47��6   
����������#279667$��Сохранить��6�   5C      5D      5E      5F      5G      5H      5I      
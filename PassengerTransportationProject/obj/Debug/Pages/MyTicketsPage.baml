   M S B A M L   `   `   `  ����Y  UPassengerTransportationProject, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null[2clr-namespace:PassengerTransportationProject.Pages$PassengerTransportationProject.Pages  5      8    2PassengerTransportationProject.Pages.MyTicketsPage   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      _ [MaterialDesignThemes.Wpf, Version=4.9.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      :d2http://schemas.microsoft.com/expression/blend/2008  5      >local2clr-namespace:PassengerTransportationProject.Pages  5      -   5          N� 
Background
  �����.��5      �  � RowDefinitions 5   
   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      .+�5   
   �� $)��#Мои билеты на поезд��6   $
��Bold"�60   $��30(�6B   $��Center=�6P   $	��Top=�6m   $��	20 20 0 0q�6�   ]� 5   
   $��2��6   .+�5      �� $	��Top=�6   .+�5      �� -   5        $��MessageTextblock��5   k   $��Center=�6   $
��Bold"�69   $��15(�6K   $��0 20 0 0q�6Y   6k   5      �� 5      -   5        $��MyTicketsListview��5   -   $	��Top=�6   ��.  ��5      �� 5       �� 
TargetType" ��6   .�5      ��  �� Property � �� �� Value
 ���� 67   �� 5       � �� 5      �� 5   "    �� 
TargetType" ��62   .R�5   &   �� 5   #   5       5!      ��5#      �� 5$      .R�5%      #  MaterialDesignThemes.Wpf.Card  $	��650��6.   $	��250��6:   $	��0 5q�6G   .��5&      �� .+�5'   "   ��  �� Orientation$ 
Horizontal=�6-   $��Center=�6F   .+�5(   &   �� $ Vertical=�61   $��20 0 0 0q�6H   .+�5)   *   �� $ Vertical=�65   .+�5*   .   �� .+�5+   2   �� $��Отправление��6<   $��20(�6O   $��Center=�6]   $
��Bold"�6z   $��	10 20 0 0q�6�   �� 5,   2   $��Center=�6y   $��16(�6�   $��	10 0 10 0q�6�   ��6<   �� *-+Route.StationDeparture.NameDepartureStation+6�   5-   /   �� 5.   .   $��Center=�6�   $��20(�6�   $
��Bold"�6�   $
��10 0q�6�   ��68   �� *Route.DateDepartureStation+ �� StringFormat$ {0:dd.MM.yyyy HH:mm}��6�   5/   +   �� 50   *   $ Vertical=�65   .+�51   .   �� .+�52   2   �� $��Прибытие��6<   $��20(�6L   $
��Bold"�6Z   $��Center=�6l   $��	10 20 0 0q�6�   �� 53   2   $��Center=�6s   $��16(�6�   $��	10 0 10 0q�6�   ��6<   �� *'%Route.StationTarget.NameTargetStation+6�   54   /   �� 55   .   $��20(�6�   $��Center=�6�   $
��Bold"�6�   $
��10 0q�6�   ��68   �� *Route.DateTargetStation+$ {0:dd.MM.yyyy HH:mm}��6�   56   +   57   '   �� 58   &   $ Vertical=�61   .+�59   *   �� $ 
Horizontal=�65   $��Center=�6N   .+�5:   .   �� $$��Номер для связи: ��68   $��Center=�6Q   $��20(�6n   $
��Bold"�6|   $��	10 20 0 0q�6�   �� 5;   .   $��16(�6U   $��2 24 0 0q�6d   ��68   �� *PhoneNumber+6d   5<   +   �� 5=   *   $ 
Horizontal=�65   $��Center=�6N   .+�5>   .   �� $#��Номер паспорта: ��68   $��Center=�6P   $��20(�6m   $
��Bold"�6{   $��	10 20 0 0q�6�   �� 5?   .   $��16(�6X   $��2 24 0 0q�6g   ��68   �� *PassportNumber+6g   5@   +   �� 5A   *   $ 
Horizontal=�65   $��Center=�6N   .+�5B   .   �� $!��ФИО Машиниста: ��68   $��Center=�6O   $��20(�6l   $
��Bold"�6z   $��	10 20 0 0q�6�   �� 5C   .   $��16(�6Z   $��2 24 0 0q�6i   ��68   �� *Transporter.Name+6i   5D   +   �� 5E   *   $ 
Horizontal=�65   $��Center=�6N   .+�5F   .   �� $��Гражданство: ��68   $��Center=�6M   $��20(�6j   $
��Bold"�6x   $��	10 20 0 0q�6�   �� 5G   .   $��16(�6b   $��2 24 0 0q�6p   ��68   �� *Nationality.Nationality1+6p   5H   +   5I   '   5J   #   �� 5K   "   $ 
Horizontal=�6-   $��Center=�6F   .+�5L   &   �� $��Цена билета: ��60   $��Center=�6E   $��20(�6b   $
��Bold"�6p   $��	10 20 0 0q�6�   �� 5M   &   $��16(�6L   $
��Bold"�6Z   $��2 24 0 0q�6l   ��60   �� *
CostTicket+6l   �� 5N   &    $   MaterialDesignSubtitle2TextBlock#��[  60   $	��₽��6j   $��
2 25.5 0 0q�6s   5O   #   �� 5P   "   $��Right=�6-   $ 
Horizontal=�6I   .+�5Q   &   '  !MaterialDesignThemes.Wpf.PackIcon  $��SellMyTicket��6V   -   5           Kind$ Trash=�5Q   >   $��20��6K   
���\\��	 � Cursor$
	 Hand��6�   $��20��6�   
 � ToolTip$
 Продать билет��6�   $��
0 -10 10 0q�6�     5R   &   $��PrintTicket��6X   -   5        $ Printer=�5R   >   $��20��6M   ���#279667$
	 Hand��6�   $��20��6�   $%
 Распечтать билет��6�   $��
0 -10 10 0q�6�   5S   #   5T      5U      5V      5X      5Y      5Z      5[      
   M S B A M L   `   `   `  ����Y  UPassengerTransportationProject, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null[2clr-namespace:PassengerTransportationProject.Pages$PassengerTransportationProject.Pages  5      5    /PassengerTransportationProject.Pages.RoutesPage   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      _ [MaterialDesignThemes.Wpf, Version=4.9.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      Dmc;http://schemas.openxmlformats.org/markup-compatibility/2006  5      :d2http://schemas.microsoft.com/expression/blend/2008  5      >local2clr-namespace:PassengerTransportationProject.Pages  5        N� 
Background
  �����.��5      �  � RowDefinitions 5   
   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      .+�5   
   �� $"��Билеты на поезд��6   $
��Bold"�6,   $��30(�6>   $��Center=�6L   $	��Top=�6i   $��
20 20 0 40q�6�   �� 5   
   $��1��6   $��Center=�6"   $	��Top=�6?   .+�5      ��  �� Orientation$ 
Horizontal=�6   .+�5      �� .+�5      �� -   5        $��FromComboBox��5   �   $��50��6I   $	��170��6U    "  MaterialDesignOutlinedComboBox#��[  6a   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Откуда��6�    �� DisplayMemberPath$ NameDepartureStation��6�   $��0 0 10 0q�6�    �� SelectedItem 6   �� *StationDeparture+6�   5      �� 5      .+�5      �� -   5        $��
ToComboBox��5   �   $��50��6F   $	��170��6R   #��[  6^   $ Куда��6�   $ NameTargetStation��6�    6   �� *StationTarget+6�   5      �� 5      -   5        $��SearchTicketButton��5   0   $��Найти билеты��6   ���#279667
�������$
��Bold"�6�   $��45��6�   $��10 0 0 0q�6�   $��Center=�6�   5      5      ]� 5   
   $��2��6   .+�5      �� $	��Top=�6   .+�5      �� -   5        $��MessageTextblock��5   k   $��Center=�6   $
��Bold"�69   $��15(�6K   $��0 20 0 0q�6Y   6k   5       �� 5!      -   5        $��TicketsListview��5!   -   $	��Top=�6   ��.  ��5"      �� 5#       �� 
TargetType" ��6   .�5$      ��  �� Property � �� �� Value
 ���� 67   �� 5%       � �� 5&      �� 5'   "   	 �� 
TargetType"	 ��62   .R�5(   &   �� 5)   #   5+      5,      ��5.      �� 5/      .R�50      #  MaterialDesignThemes.Wpf.Card  $	��650��6.   $	��200��6:   $	��0 5q�6G   .��51      �� .+�52   "   �� $ 
Horizontal=�6-   $��60 0 0 0q�6F   .+�53   &   �� $ Vertical=�61   .+�54   *   �� .+�55   .   �� $��Отправление��68   $��20(�6K   $��Center=�6Y   $
��Bold"�6v   $��
10 20 10 0q�6�   �� 56   .   $��Center=�6o   $��16(�6�   $��
10 10 10 0q�6�   ��68   �� *'%StationDeparture.NameDepartureStation+6�   57   +   �� 58   *   $��Center=�6~   $��20(�6�   $
��Bold"�6�   $
��10 0q�6�   ��64   �� *DateDepartureStation+
 �� StringFormat$
 {0:dd.MM.yyyy HH:mm}��6�   59   '   �� 5:   &   $ Vertical=�61   .+�5;   *   �� .+�5<   .   �� $��Прибытие��68   $��20(�6H   $
��Bold"�6V   $��Center=�6h   $��
10 20 10 0q�6�   �� 5=   .   $��Center=�6i   $��16(�6�   $��
10 10 10 0q�6�   ��68   �� *!StationTarget.NameTargetStation+6�   5>   +   �� 5?   *   $��20(�6{   $��Center=�6�   $
��Bold"�6�   $
��10 0q�6�   ��64   �� *DateTargetStation+$
 {0:dd.MM.yyyy HH:mm}��6�   5@   '   �� 5A   &   $ Vertical=�61   .+�5B   *   �� $��Цена��64   $��Center=�6@   $��20(�6]   $
��Bold"�6k   $��
10 20 10 0q�6}   �� 5C   *   .+�5D   .   �� $ 
Horizontal=�69   .+�5E   2   �� $��Плацкарт: ��6<   $��16(�6N   $��	10 10 0 0q�6]   �� 5F   2   $��16(�6^   $
��Bold"�6l   $��2 10 0 0q�6~   ��6<   �� *ReservedSeatCost+6~   �� 5G   2    $  MaterialDesignSubtitle2TextBlock#��[ 6<   $	��₽��6v   $��
2 11.4 0 0q�6   5H   /   �� 5I   .   $ 
Horizontal=�69   .+�5J   2   �� $��
Купе: ��6<   $��16(�6J   $��10 5 0 0q�6Y   �� 5K   2   $��16(�6]   $
��Bold"�6k   $��2 5 0 0q�6}   ��6<   �� *CompartmentCost+6}   �� 5L   2   #��[ 6<   $	��₽��6v   $��2 6 0 0q�6   5M   /   5N   +   5O   '   5P   #   �� 5Q   "   $��	BuyTicket��6b   -   5        $��Купить��5Q   )   
����������#279667$	��120��6�   $
��Bold"�6�   $��Center=�6�   $��	0 30 10 0q�6�   $��45��6�   5R      5S      5T      5V      5W      5X      5Y      
   M S B A M L   `   `   `  ����J  FGreenLight-2023, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullA%clr-namespace:GreenLight_2023.WindowsGreenLight_2023.Windows  5   	   U/clr-namespace:GreenLight_2023.WindowUserControl!GreenLight_2023.WindowUserControl  6=   -    'GreenLight_2023.Windows.MenuAdminWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   7local%clr-namespace:GreenLight_2023.Windows     5   	   Mwindowusercontrol/clr-namespace:GreenLight_2023.WindowUserControl     6=     � Title$  MenuAdminWindow��5   	   $	��840��6"   $
��1400��6/    � WindowStartupLocation$ CenterScreen=�6<    � AllowsTransparency .  � WindowStyle$
 None=�6{   
������  � 	Resources 5	       �� DataType:   4GreenLight_2023.WindowUserControl.UCWindowInfoVrachi � DataContext��%r   (��       5
   9   *, +)�� 6
   UCMainWindowPrepTemplate��"  69   .R�5         63   �� 5      5      .��5      � ��5   
   �� 5       �� EndPoint$ 0.5,1&�6"    �� 
StartPoint$ 0.5,0&�63   .+�5   
   �� 	 �� CornerRadius$	 25��6   ��5      �� 5      $ 0.5,1&�6&   
 � MappingMode$
 RelativeToBoundingBox=�67   $ 0.5,0&�6[   .��5      �  � Color$ 	#FF3A8003��6#    � Offset$ 0.264Q�65   � 5      -   5        AnimationColor3��$ 	#FF97E45A��5   <   $ 0.905Q�6N   � 5      $ 	#FF97E45A��6#   $ 0.858Q�65   5      ._�5      �  � ColumnDefinitions 5      �� 5      $	��200 �6'   �� 5      .+�5      �  � RowDefinitions 5       �� 5!      $	��200 �6(   �� 5"      �� 5#      �� 5$      �� 5&      $	��100 �6)   .+�5(      �� 
�������$��5��60   $	 25 10 10 25��6A   �� 5*      -   5        $��1��5*      $��0��6*   $��20,20,105,90q�6:   $�� ��6Q   
���������5+      �� 5,       �� ImageSource$A ;/GreenLight-2023;component/Resources/Images/icon_doctor.png��6)   5.      �� 50      -   5        $
��Logo��50       � Cursor$
 Hand��6(   $��0��66   $��0��6F   $+��%/Resources/Images/logo_GreenLight.png��6S   $��Center=�6�   $	��123��6�   $��Center=�6�   $	��128��6�   �� 51      -   5        $
��exit��51      $
 Hand��6(   $��0��66   $��4��6F   $ ��/Resources/Images/exit.png��6S   $
��Left=�6w   $��30 0 0 0q�6�   $��40��6�   $��Center=�6�   $��40��6�   52      �� 54      $��1��6!   ��61   �� 55      56      57      58      
   M S B A M L   `   `   `  ����J  FGreenLight-2023, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullA%clr-namespace:GreenLight_2023.WindowsGreenLight_2023.Windows  5   	   /    )GreenLight_2023.Windows.SignInAndUpWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   7local%clr-namespace:GreenLight_2023.Windows     5   	   _ [MaterialDesignThemes.Wpf, Version=4.8.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	     � Title$  SignInAndUpWindow��5	   	   $	��358��6#   $	��745��60    � WindowStartupLocation$ CenterScreen=�6<    � WindowStyle$
 None=�6a    � AllowsTransparency . 
������ .��5
      �  � ColumnDefinitions 5   
   �� 5      �� 5      .+�5   
   ��  �� CornerRadius$ 5��6   $��2��6"   ��5      �� 5       �� RelativeTransform 5      V� 5      .~�5      ��  �� CenterY$	 0.5Q�6-    �� CenterX$	 0.5Q�6;   �� 5      	 �� CenterX$		 0.5Q�6,   
 �� CenterY$	
 0.5Q�6:   �� 5       �� Angle$ -8.13Q�6.    �� CenterX$	 0.5Q�6<    �� CenterY$	 0.5Q�6J   T� 5      5      .��5      �  � Color$ 	#FF3A8003��5       � Offset$ 0.169Q�5      � 5      -   5        AnimationColor3��$ 	#FF97E45A��5       $ 0.566Q�5!      � 5"      -   5        AnimationColor2��$ White��5$      $ 1Q�5%      5&      5(      �� 5)   
   -   5        $��	icon_Exit��5)       � Cursor$
 Hand��6!   $%��/Resources/Images/icon_Exit.png��6/   $��Right=�6�   $��	0 25 25 0q�6�   $��24��6�   $	��Top=�6�   $��2��6�   � 5+   
   $��20 20 20 20q�6   .+�5,      �� $��Medium"�6   $��Вход��6(   $��24(�67   $
��Left=�6E   $��	50 20 0 0q�6`   $	��Top=�6s   
�������$��Roboto)�6�   �� 5-      -   5        $��label_ShowRegister��5-   �   $��Medium"�6   $��Регистрация��6(   $��24(�6>   $��Right=�6L   $��	0 20 50 0q�6h   $	��Top=�6{   $
 Hand��6�   
�������$��Roboto)�6�   '  !MaterialDesignThemes.Wpf.PackIcon  5/      
�������$��	0 0 0 100q�69   $��35��6L   $��35��6W      Kind$ 
UserCircle=�6c   $��Center=�6u   �� 50      -   5        $��textbox_Login��51      $��Roboto)�52      $��Regular"�53      $��18(�54      
�������
������ $	��280��57      $
��Left=�58      $��37��59      $�� 0 0 0 2q�5:      ���	#FF138300 �� 
CaretBrush �#4BEFD1 �� SelectionBrush
 ��� �$��Center=�5>      $��	35 0 0 90q�5?      .  (MaterialDesignThemes.Wpf.TextFieldAssist   HasClearButton .    UnderlineBrush �#187AFD��50      �� *
Username+ �� UpdateSourceTrigger$ PropertyChanged=�5A      �� 5C      $
��Left=�6   $��	45 0 0 95q�63   $��Center=�6F   $��35��6a   $	��120��6m    J� IsHitTestVisible .  $��18(�6�   $��Введите логин��6�   
���������5D      �� 5E       �� 
TargetType" ��6   .�5F      ��  �� Property � y� �� Value$ 	Collapsed=�67    �� Triggers 5G      �� 5H       �� Binding 6*   �� *Text+ �� ElementName$ textbox_Login�� �� Value  6]   .a�5I   "   ��  � y�$ Visible=�6?   5J      5L      5N        5Q      
�������$��0 90 0 0q�69   $��35��6K   $��35��6V   $	 Key=�6b   $��Center=�6m   G� 5R      -   5         G�Name$ textbox_Password��5R      $��40��65   $	��280��6A    . ���	#FF138300  G� 
CaretBrush  �#4BEFD1$�� 0 0 0 2q�5W      ! G� SelectionBrush
! ��� �$��18(�5Y      
�������
������ $��Center=�5\      $��	25 90 0 0q�5]       �#187AFD5^      �� 5_      -   5        " ��Name$" border_SignIn��5_      $��2q�6P   $	��170��6d   $��40��6p   $ 20��6|   $��Bottom=�6�   $��0 0 0 10q�6�   $��Center=�6�   $
 Hand��6�   ��5`      �� 5a      # �� 
StartPoint$# 0.5,0&�6*   $ �� EndPoint$$ 0.5,1&�6=   .��5b      � $ White��6'   $ 0Q�5c   '   � 5d      $ 	#FF317D1D��6'   $ 1Q�5e   '   5f      ��5h      �� 5i      " ��6   .�5j      ��  � ��
 ���� 67    5k      �� 5l       6*   �� *IsMouseOver+$ border_SignIn�� true6d   .a�5m   "   ��  � �� 5n   &   �� 5o   *   $# 0.5,0&�6>   $$ 0.5,1&�6Q   .��5p   .   � $ 	#FF6DC82A��6;   $ 0Q�5q   '   � 5r   .   $ 	#FF61B325��6;   $ 1Q�5s   '   5t   +   5v   #   5w      5y      ._�5{      �� $��
Войти��6   $��19(�6(   
�������$!��Bahnschrift Light Condensed)�6I   $��Center=�6r   $��Center=�6�   5|      5}      �� 5   
   $+��%/Resources/Images/logo_GreenLight.png��6   $��Center=�6?   $��Center=�6\   $	��300��6w   $��0 20 0 0q�6�   $��1��6�   5�      5�      
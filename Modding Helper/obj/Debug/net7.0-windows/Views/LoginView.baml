   M S B A M L   `   `   `  ����I  EModding Helper, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null;"clr-namespace:Modding_Helper.ViewsModding_Helper.Views  5   	   E'clr-namespace:Modding_Helper.ViewModelsModding_Helper.ViewModels  5   	   M+clr-namespace:Modding_Helper.CustomControlsModding_Helper.CustomControls  5   	   $    Modding_Helper.Views.LoginView   5   	   W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      5   	   R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   4local"clr-namespace:Modding_Helper.Views     5   	   >
viewModels'clr-namespace:Modding_Helper.ViewModels     5   	   Fcustomcontrols+clr-namespace:Modding_Helper.CustomControls     5   	   -   5          � Title$  	LoginView��5
   	   $	��550��6   $	��800��6(    � WindowStyle$
 None=�5   	    � 
ResizeMode$ NoResize=�5   	    � WindowStartupLocation$ CenterScreen=�5   	   
������  � AllowsTransparency$
 True��5   	    � 	Resources 5         BooleanToVisibilty��%   &	        �� 5   
   6'   5      y�5      �� 5   
    �� Path$ IsViewVisible�6    �� Mode$ TwoWay=�6'    �� 	Converter# [  65   .��5      �� 	 �� CornerRadius$	 12��6   ��5   
   �� 5      
 �� ImageSource$
 /Images/back-image.jpg��6    j� Stretch$
 None=�5      ._�5    
   �� $	 10��6   $��1q�5!       J� Opacity$
 0.95Q�5"      ��5#      �� 5$       �� 
StartPoint$	 0,0&�6&    �� EndPoint$	 1,1&�67   .��5%      �   winBorderColor1 � Color# [ 6#    � Offset$ 0Q�6L   � 5&        winBorderColor2# [ 6#   $
 0.75Q�6L   � 5'        winBorderColor3# [ 6#   $ 1Q�6L   5(      ��5+      �� 5,      $	 0,1&�6&   $	 1,0&�67   .��5-      �   primaryBackColor1# [ 6#   $ 0Q�6N   � 5.        primaryBackColor2# [ 6#   $
 0.75Q�6N   5/      ._�52      �  � RowDefinitions 53      �� 54      $��30 �6$   �� 55      .+�58      �  � ColumnDefinitions 59      �� 5:      �� 5;      $��25 �6+   �� 5<      $��25 �6+   �� 5=      $��5 �6+   .+�5@      �� $��LOG IN��6    
�������$��10(�5B       $��
Montserrat)�5C       $��0��5D       $��Center=�5E       $��10,0,0,0q�5F       �� 5H      -   5         ��Name$ btnMinimize��5H      $��0q�5I      $��-��5J      
�������$��16(�5L      $��Monotserrat)�5M       � Cursor$
 Hand��5N      $��1��5O      ��5R      �� 5S       �� 
TargetType" ��6$   .�5T   "   ��  �� Property � �� �� Value �#28AEED6?    �� Triggers 5U   "   P� 5V   &    P� Property �@J�IsMouseOver P� Value$
 True��6E   . �5W   *   ��  � �� �#278BEF6G   5X   '   5Z      ��5]      �� 5^       �� 
TargetType" ��6.   .R�5_   "   �� $��18��6)   $��18��64   $	 9��5`   )   #��z��5a   )   ._�5b   &   �� $��Center=�67   $��Center=�5c   7   5d   #   5e      5h      �� 5j      -   5        $ btnClose��5j      $��0q�5k      $��X��5l      
�������$��12(�5n      $��Monotserrat)�5o      $
 Hand��5p      $��2��5q      ��5t      �� 5u      " ��6$   .�5v   "   ��  � �� �#DA34AE6?    5w   "   P� 5x   &    �@J�IsMouseOver$
 True��6E   . �5y   *   ��  � �� �#C62DAE6G   5z   '   5|      ��5      �� 5�      " ��6.   .R�5�   "   �� $��18��6)   $��18��64   $	 9��5�   )   #��z��5�   )   ._�5�   &   �� $��Center=�67   $��Center=�5�   7   5�   #   5�      5�      5�      �� 5�      $	��250��6   $��2��5�   !    �� Orientation$ Vertical=�5�   !   $��0,35,0,0q�5�   !   .+�5�      �� $��/Images/Logo.png��6   $	��100��5�      $	��100��6(   �� 5�      $��RJ CODE��6    
�������$��25(�5�       $��Medium"�5�       $��
Montserrat)�5�       $��Center=�5�       �� 5�      $P��JLearning  to  code  is  useful  no  matter what your career ambitions are.��6    
�������$��12(�5�       $��Medium"�5�       $��
Montserrat)�5�       $
��Wrap=�5�        �� TextAlignment$ Center=�5�       $��0,5,0,0q�5�       �� 5�      $��Username��6    
�������$��12(�5�       $��Medium"�5�       $��
Montserrat)�5�       $��0,35,0,0q�5�       �� 5�      -   5         ��Name$ txtUser��5�      $��13(�5�      $��Medium"�5�      $��
Montserrat)�5�      
������� �� 
CaretBrush
 �����
�������$��0,0,0,1q�5�      $��28��5�      $��Center=�5�      $��0,5,0,0q�5�      $��20,0,0,0q�5�      ��5�      �� *
Username+  �� UpdateSourceTrigger$  PropertyChanged=�.��5�   1   ��5�      �� 5�      $
 /Images/user-icon.png��6)   $
 None=�5�   )   ! j� 
AlignmentX$
! Left=�5�   )   .��5�   .   5�      �� 5�      $��Password��6    
�������$��12(�5�       $��Medium"�5�       $��
Montserrat)�5�       $��0,15,0,0q�5�       7   1Modding_Helper.CustomControls.BindablePasswordBox  5�      $��28��5�   9   $��0,5,0,0q�5�   9   "   Password" 5�   9   �� *
Password+$ TwoWay=�$  PropertyChanged=�5�      �� 5�      ���#D7596D$��12(�5�       $��Medium"�5�       $��
Montserrat)�5�       $��0,10,0,0q�5�       $
��Wrap=�5�       ��5�       �� *ErrorMessage+5�       �� 5�      -   5        $ btnLogin��5�      $��0q�5�      $��LOG IN��5�      
�������$��12(�5�      $��Monotserrat)�5�      $
 Hand��5�      $��2��5�      $��0,30,0,0q�5�      ��5�      �� *LoginCommand+��5�      �� 5�      " ��6$   .�5�   "   ��  � �� �#462AD86?    5�   "   P� 5�   &    �@J�IsMouseOver$
 True��6E   . �5�   *   ��  � �� �#28AEED6G   5�   '   5�      ��5�      �� 5�      " ��6.   .R�5�   "   �� $	��150��6)   $��40��65   $	 20��5�   )   #��z��5�   )   ._�5�   &   �� $��Center=�67   $��Center=�5�   7   5�   #   5�      5�      �� 5�      $ 
Horizontal=�6!   $��Center=�5�   !   $��0,15,0,0q�5�   !   .+�5�      �� $��Forgot Password?��6$   
�������$��12(�5�   $   $��Medium"�5�   $   $��
Montserrat)�5�   $   �� 5      $��Reset��6$   
�������$��12(�5  $   $��Medium"�5  $   $��
Montserrat)�5  $   $
 Hand��5  $   $��8,0,0,0q�5  $   5     5     5	     5
     5     5     
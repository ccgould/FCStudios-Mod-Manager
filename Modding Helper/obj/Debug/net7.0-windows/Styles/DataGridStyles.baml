   M S B A M L   `   `   `  ����W  SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089X TFontAwesome.Sharp, Version=6.3.0.0, Culture=neutral, PublicKeyToken=d16d1e4e568ec10f   DataGridRowStyle1  �� 
TargetType)   #System.Windows.Controls.DataGridRow �� Property �� Value �� 
TargetType ��Name �� Padding �� CornerRadius J� SnapsToDevicePixels?  9System.Windows.Controls.Primitives.SelectiveScrollingGrid � ColumnDefinitions	 � RowDefinitions?  9System.Windows.Controls.Primitives.DataGridCellsPresenter
    
ItemsPanelA  ;System.Windows.Controls.Primitives.DataGridDetailsPresenter    DetailsVisibility$   SelectiveScrollingOrientation&   System.Windows.Controls.DataGrid#   RowDetailsScrollingConverter �� 	Converter;  5System.Windows.Controls.SelectiveScrollingOrientation   Vertical �� ConverterParameter �� RelativeSource �� AncestorType:  4System.Windows.Controls.Primitives.DataGridRowHeader!   HeadersVisibilityConverter7  1System.Windows.Controls.DataGridHeadersVisibility
   Row �� Triggers P� Property P� Value ]� 
Conditions �� Property �� Value  gridEditButton  gridRemoveButton �� BasedOn  gridButtonIcon!  FontAwesome.Sharp.IconImage   OptionMark.Static.Background �� Color  OptionMark.Static.Border  OptionMark.Static.Glyph # OptionMark.MouseOver.Background  OptionMark.MouseOver.Border 	 OptionMark.MouseOver.Glyph !
 OptionMark.Pressed.Background  OptionMark.Pressed.Border  OptionMark.Pressed.Glyph " OptionMark.Disabled.Background  OptionMark.Disabled.Border  OptionMark.Disabled.Glyph  CheckBoxStyle1 �Name F�Name J� Opacity  �� Stretch! ��Name" ��Name# �� Triggers$ �� 
TargetName% �� 
ResourceId& �� TypeInTargetAssembly' �Name( � Points  DataGridStyle15	  /System.Windows.Controls.DataGridLengthConverter) ��Name*   SelectAllCommand
+   AllG
  ASystem.Windows.Controls.Primitives.DataGridColumnHeadersPresenter, 
 Name-   Column. ��Name/ �� CanContentScroll0 ��Name1 �� ScrollableHeight2 � Maximum3 �� Orientation4 �� ViewportHeight5 �� ViewportSize*6 �� #ComputedVerticalScrollBarVisibility7 � Value8 �� Mode9 �� ScrollableWidth: �� ViewportWidth,; �� %ComputedHorizontalScrollBarVisibility  DataGridCellStyle1*  $System.Windows.Controls.DataGridCell  ColumnHeaderGripperStyle  DataGridColumnHeaderStyle1=  7System.Windows.Controls.Primitives.DataGridColumnHeader< n�Name�� 5      H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation       :x,http://schemas.microsoft.com/winfx/2006/xaml      5      Ffa=http://schemas.awesome.incremented/wpf/xaml/fontawesome.sharp  5      %�(  &	        &	 �    &	 N    7  &	 @	    &	 �	    &	 �	    &	 
    &	 =
    &	 `
    &		 �
    &	
 �
    &	 �
    &	 �
    &	     &	 2    &	 U    &	 x    7  7  7  7  7 	 7 	 7  7  7  7  7 
 7  7  (��     5�      $"% DataGridSelectAllButtonStyle��"&  )&	 �    &	 �"    &	 d$    &	 v%    7  7  �� 5      "    6&   .�5   
   ��  � ��$ 0 4 0 0q�6#   �� 5   
    � �� �#FFFFFF6'   �� 5   
    �@J�SnapsToDevicePixels$
 true��60   �� 5	   
    �@=�ErrorTemplate 65   Z� �� 5
   
    �@  ValidationErrorTemplate 5      �� 5      .R�5      �� 
���  ��$��2,0,0,0q�61   $��!��6B   $��Center=�6K   5      5      �� 5   
    � �� 5      �� 5      "   6"   .R�5      �� $ 
DGR_Border��6   $	 0 8q�61   $ 5��6?   #��z��6P   $��0q�6z   $
 True��6�   ._�5         5      �� 5   "   $
��Auto �63   �� 5   "   $��* �63   	 5      �� 5   "   $��* �60   �� 5   "   $
��Auto �60   .+�5        $��1��65   #��z
 6E   # z 6o     5      $��1��67   $��1��6G   #y�z 6k   6T   �� *AreRowDetailsFrozen+# Z # Z  �� "  6k    5       $��2��60   $ Vertical=�6A   y�6�   �� *HeadersVisibility+# Z # Z  �� "  5!      5"      5#      5%       5'   
   P� 5(       �@J�IsMouseOver$
 True��6-   . �5)      ��  � �� �#623ED06/   �� 5*       � �� �#ffffff6/   5+      P� 5,       �@  
IsSelected$
 True��6,   . �5-      ��  � �� �#623ED06/   �� 5.       � �� �#ffffff6/   5/      ]� 50       51      �� 52       �@  
IsSelected$
 true��66   �� 53       �@��IsSelectionActive$ false��6F   ./�55      ��  � �� �#dfdfdf6/   56      58      �� 5:      "  ��6#   .�5;   
   ��  � �� �#512DA86'   �� 5<   
    � �� �#4A148C6(   �� 5=   
    � �� �#ffffff6'   �� 5>   
    �@�FocusVisualStyle 6-   Z� �� 5?   
    � ��$ Center=�6.   �� 5@   
    � �� 5A      �� 5B      " ��6"   .R�5C      �� #��z��6   #��z��6G   $ 5q�6s   $��1q�6   $ 5��6�   ._�5D      �� $��Center=�6+   $��Center=�6F   5E      5F      5H       5I   
   P� 5J       �@J�IsMouseOver$
 True��6-   . �5K      ��  � �� �#673AB76/   5L      5N      �� 5Q      "  ��6%   8   .�5R   
   ��  � �� �#D32F2F6'   �� 5S   
    � �� �#B71C1C6(    5T   
   P� 5U       �@J�IsMouseOver$
 True��6-   . �5V      ��  � �� �#F443366/   5W      5Y      �� 5\      "   6#   .�5]   
   ��  � ��$ Center=�6.   �� 5^   
    � ��$ 12��6"   �� 5_   
    � ��$ 12��6#   5`      �� 5c      $ 	#FFFFFFFF��6;   �� 5d      $ 	#FF707070��67   �� 5e      $ 	#FF212121��66   �� 5f      $ 	#FFF3F9FF��6>   �� 5g      $ 	#FF5593FF��6:   �� 5h      $ 	#FF212121��69   �� 5i      $ 	#FFD9ECFF��6<   �� 5j      $ 	#FF3C77DD��68   �� 5k      $ 	#FF212121��67   �� 5l      $ 	#FFE6E6E6��6=   �� 5m      $ 	#FFBCBCBC��69   �� 5n      $ 	#FF707070��68   �� 5o      "  ��6#   .�5p   
   ��  �@�FocusVisualStyle 6-   Z� �� 5q   
    � ��8   6'   �� 5r   
    � �� �#DAE2EA6(   �� 5s   
    � ��# � ��6'   �� 5t   
    � ��$ 1q�6,   �� 5u   
    � �� 5v      �� 5w      " ��6"   .R�5x      � $ templateRoot��6   
������ $
 True��6J    5y      �� 5z      $
��Auto �6/   �� 5{      $��* �6/   .+�5}      �� $ checkBoxBorder��6!   $ 3��69   $ 1q�6J   #��z��6V   #��z��6�   #��z��6�   #��z��6�   $��1q�6#  #��z��6.  ._�5~      � $ markGrid��6#   .+�5   "   F� $ 
optionMark��6'   Y�����4� �� Ѽ�G dԊ Ѩ�D dԊ �    ^>O ��z r�5 ��@ ��\ 
ܺ��� @�j�  �>��4� �� 8�� $��1q�6�   $ 0Q�6  $
  None=�6  �� 5�   "   $! indeterminateMark��6,   8�� $��2q�6w   $ 0Q�6�   5�      5�      �� 5�      $" contentPresenter��6+   $��1��6E   $|�False��6U   #��z��6g   #��z��6�   $
��True��6�   # z 6�   #��z��6$  5�      # 5�      P� 5�       � ��$
 true��68   . �5�      ��  6A   Z�  �@�FocusVisualStyle�� 5�       � ��$ 4,-1,0,0q�68   5�      P� 5�       �@J�IsMouseOver$
 true��69   . �5�      �� $$ checkBoxBorder��6;   8   � ��6W   �� 5�      $$ checkBoxBorder��6<    � �� �#9575CD6X   �� 5�      $$ 
optionMark��65   8   � ��6M   �� 5�      $$ indeterminateMark��65   8   � ��6T   5�      P� 5�       � {�$ false��67   . �5�      �� $$ checkBoxBorder��6;   8   � ��6W   �� 5�      $$ checkBoxBorder��6<   8   � ��6X   �� 5�      $$ 
optionMark��65   8   � ��6M   �� 5�      $$ indeterminateMark��65   8 	  � ��6T   5�      P� 5�       � ��$
 true��67   . �5�      �� $$ checkBoxBorder��6;   8 
  � ��6W   �� 5�      $$ checkBoxBorder��6<    � �� �#9575CD6X   �� 5�      $$ 
optionMark��65   8   � ��6M   �� 5�      $$ indeterminateMark��65   8   � ��6T   5�      P� 5�       �@d�	IsChecked$
 trueY�67   . �5�      �� $$ 
optionMark��68    �@J�Opacity$ 1Q�6P   �� 5�      $$ indeterminateMark��68    �@J�Opacity$ 0Q�6W   5�      P� 5�       67   Z�  �@d�	IsChecked. �5�      �� $$ 
optionMark��68    �@J�Opacity$ 0Q�6P   �� 5�      $$ indeterminateMark��68    �@J�Opacity$ 1Q�6W   5�      5�      5�      5�      �� 5�      "  ��6{   .�5�   
   ��  � �� 5�      �� 5�      " ��6"   .R�5�      � .+�5�      �� $! Border��6$   #��� ��64   $
 True��6u   � 5�      $' Arrow��6"   
���   �$��Right=�6>   $��8,8,3,3q�6Z   $
 0.15Q�6k   ( �   ��� ��� ��� ��� $  Uniform=�6�   $��Bottom=�6�   5�      # 5�      P� 5�       �@J�IsMouseOver$
 True��69   . �5�      �� $$ Border��67   # � ��6K    � ��5�      P� 5�       � ��$
 True��67   . �5�      �� $$ Border��65   # � ��6I    � ��5�      P� 5�       � {�$ False��67   . �5�      �� $$ Arrow��6;    � y�$ 	Collapsed=�6N   5�      5�      5�      5�      �� 5�      "   6#   .�5�   
   ��  � ��
 ���� 6'   �� 5�   
    � �� �#2225286'   �� 5�   
    � ��$ 0q�6,   �� 5�   
     �@ RowDetailsVisibilityMode$ VisibleWhenSelected=�65   �� 5�   
    � ��$
 true��6:   �� 5�   
    �@��PanningMode$
 Both=�65   �� 5�   
    �@��IsFlicksEnabled$ False��63   �� 5�   
    �@ AutoGenerateColumns$ False��60   �� 5�   
    �@ HeadersVisibility$ Column=�6.   �� 5�   
    � ��$ 0 10 0 0q�6#   �� 5�   
    � ��$ 5��6%   �� 5�   
    �@ SelectionMode$ Single=�6*   �� 5�   
    �@ SelectionUnit$ FullRow=�6*   �� 5�   
    �@ CanUserAddRows$ False��6+   �� 5�   
    �@ CanUserDeleteRows$ False��6.   �� 5�   
    �@ CanUserReorderColumns$ False��62   �� 5�   
    �@ CanUserResizeRows$ False��6.   �� 5�   
    � ��$ 13(�6%   �� 5�   
    �@ GridLinesVisibility$
 None=�60   �� 5�   
    �@ ColumnWidth$ *	 6(   �� 5�   
    � �� 5�      �� 5�      "  6"   .R�5�      �� #��z��6   #��z��6G   #��z��6{   # z��6�   $
 True��6�   ._�5�      �� $) DG_ScrollViewer��6'   $|�false��6@   ��5�      �� 5�   "   " ��62   .R�5�   &   �  5�   *   �� 5�   .   $
��Auto �6?   �� 5�   .   $��* �6?   �� 5�   .   $
��Auto �6?   	 5�   *   �� 5�   .   $
��Auto �6<   �� 5�   .   $��* �6<   �� 5�   .   $
��Auto �6<   .+�5�   *   �� #��Z* 61   $|�false��6`   ��6r   C� *�� $"% DataGridSelectAllButtonStyle��"&  +y�6�   �� *HeadersVisibility+# Z # Z+  �� "  ��6�  �� *CellsPanelHorizontalOffset+ �� "  
  5�   *   $!, PART_ColumnHeadersPresenter��6I   $��1��6n   y�6~   �� *HeadersVisibility+# Z # Z-  �� "  �� 5�   *   $!. PART_ScrollContentPresenter��6A   $��2��6f   #/ z��6z   $��1��6�   �� 5�   *   $0 PART_VerticalScrollBar��64   $��2��6T   #2 z1 6d   $3 Vertical=�6�   $��1��6�   #5 z4 6�   #y�z6 6D  7 6�   �� *VerticalOffset+$8 OneWay=� �� *TemplatedParent+6D  � 5�   *   $��1��6/   $��2��6?    5�   .   �� 5�   2   ��6C   �� **(NonFrozenColumnsViewportHorizontalOffset+ �� "  �� 5�   2   $��* �6C   .+�5�   .   �� $0 PART_HorizontalScrollBar��68   $��1��6Z   #2 z9 6j   $3 
Horizontal=�6�   #5 z: 6�   #y�z; 6?  7 6�   �� *HorizontalOffset+$8 OneWay=� �� *TemplatedParent+6?  5�   +   5�   '   5�   #   .��5�      �� # z 6-   5�      5�      5�      5       5  
   ]� 5      5     �� 5      �@��
IsGrouping$
 true��66   �� 5     " �@%�IsVirtualizingWhenGrouping$ false��6X   ./�5     ��  � ��$ false��6B   5     5
     �� 5     "   6'   .�5  
   ��  � ��
 ���� 6'   �� 5  
    � ��$ Center=�6.   �� 5  
    �@�FocusVisualStyle 6-   Z� �� 5  
    � ��$
 15 0q�6#   �� 5  
    � �� 5     �� 5     "  6"   .R�5     �� #��z��6   $��0q�6G   $
 True��6[   ._�5     �� # z 6+   5     5     5     5     �� 5     "  n�6-   .�5  
   ��  � ��$ 8��6"   �� 5  
    � ��
 ���� 6'   �� 5  
    �@�Cursor$ SizeWE��6#   �� 5   
    � �� 5!     �� 5"     " n�6"   .R�5#     �� #��z��6   # z��6G   5$     5&     5'     �� 5)     "   6/   .�5*  
   ��  � ��$ Center=�65   �� 5+  
    � ��
 ���� 6'   �� 5,  
    � �� �#69717D6'   �� 5-  
    � ��$ 
15 0 15 10q�6#   �� 5.  
    � �� 5/     �� 50     "  6"   .R�51     � .+�55     n� $< PART_LeftHeaderGripper��6    $
��Left=�6@   8��  6[   n� 56     $< PART_RightHeaderGripper��6    $��Right=�6A   8�� 6]   57     58     5:     5;     5?     
   M S B A M L   `   `   `  ????B  >gmPluck, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:gmPluckgmPluck  5          gmPluck.MainWindow   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      'localclr-namespace:gmPluck     5      -   5          ? Title$  
MainWindow??5   	   $	??600??6   $	??400??6)    ? WindowStyle$
 None=?5	   	    ? 
ResizeMode$ NoResize=?5
   	   
??????  ? 	Resources 5         TreeViewItemStyle ?? 
TargetType ?? Property ?? Value ?? Mode-  'System.Windows.Input.KeyboardNavigation  CheckBoxItemTemplate ?? ItemsSource	 ?? Orientation
 d? 	IsChecked?? 5   
   %v  &	        &	 V    ?? 5      " Q?6.   .?5      ??  ?@Q?
IsExpanded$
 True??6/   ?? 5       ?@Q?
IsSelected 6/   ?? *IsInitiallySelected+$ OneTime=??? 5       ?@ AcceptsReturn$
 True??6E   ?? 5       ? ??$ 16(?6-   ?? 5       ? ??$ 10, 0, 0, 0q?6+   ?? 5       ? ?? ?#fff6/   5      ?? 5       6D   ?? *
Children+$ OneTime=?.R?5      ?? $	 
Horizontal=?6   .+?5      ?? $|?False??6   $??Center=?6Q   
 61   ?? *	IsChecked+6Q   ?? 5      $	??2,0q?6N   ??6'   ?? *Name+$ OneTime=?6N   5      5      5      .??5"      ?  ? ColumnDefinitions 5#   
   ?? 5$      $??25 ?6   ?? 5%      $	??350 ?6   ?? 5&      $??25 ?6    ? RowDefinitions 5(   
   ?? 5)      $??75 ?6   ?? 5*      $	??475 ?6   ?? 5+      .+?5-   
   ?? $??0??5.   	   $??3??5/   	   $??3??50   	    ?? CornerRadius$ 15??51   	   ???#c75fbd$??5q?53   	   ??55      ?? 56       ?? 
StartPoint$
 0, 0&?6&    ?? EndPoint$
 0, 2&?68   .??57      ?  ? Color$ #2a2a2a??6#    ? Offset$	 0.0Q?63   6B   ? 58      $ #121212??6#   $ 1Q?63   6@   59       J? Clip 5;      ?? 5<       ?? RadiusX$ 15Q?6$    ?? RadiusY$ 15Q?5=       ?? Rect$ 0,0,400,600?5>      5@      ?? 5B   
   $??1??6   $??1??6   
?????? ._?5C      R? -   5         R?Name$
 tree??5F      $#??./Fonts/#Varela Round Regular)?5C      $	??425??5D      $??Center=?6$   $??0, 15, 0, 0q?5E      $??
20,20,0,20q?6,   $	??Top=?5G      $	??400??5H      
?????? #??[  5K      #??[ 5L      5M      ?? 5O   
   $??0??5P   	   $??3??5Q   	   ???#c75fbd$ 	15,15,0,0??5S   	   ._?5U      ?? $??30(?6   $#??./Fonts/#Varela Round Regular)?6&   $??Center=?6Q   $??Center=?6l   	gmPluck6?   5V      5W      5X      
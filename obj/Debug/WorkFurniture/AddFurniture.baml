   M S B A M L   `   `   `  ����I  EOrderFurniture, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullK*clr-namespace:OrderFurniture.WorkFurnitureOrderFurniture.WorkFurniture  5   	   /    )OrderFurniture.WorkFurniture.AddFurniture   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   <local*clr-namespace:OrderFurniture.WorkFurniture     5   	     � Title$  AddEcuipments��5   	   $��249.467��6   $	��420��60    � WindowStartupLocation$ CenterScreen=�6<    � 
ResizeMode$ NoResize=�6a    � WindowStyle$
 None=�6w   
���OO/�.��5	      � .+�5   
   �� -   5        $
��Save��5      
������ 
���   �$
��Left=�6M   $��326,215,0,0q�6h   $	��Top=�6}   $��74��6�   $��18��6�   6�   �� 5   
   -   5        
������ 
������ $
��Left=�5   D   $��
35,217,0,0q�6_   $	��Top=�6s   $��53��6�   $��15��6�   .��5      �� $1��+/OrderFurniture;component/Resourse/back.png��6   6K   5      �� 5   
   -   5         ��Name$ ChekMark��5   ?   
������ 
���   �$
��Left=�6Q   $��20��6l   $��
156,19,0,0q�6x    �� TextWrapping$
 Wrap=�6�   $	��Top=�6�   $	��224��6�   ��6�   �� *	Article+6�   �� 5   
   
������ 
���   �$
��Left=�6@   $��20��6[   $��
156,43,0,0q�6g   $
 Wrap=�6{   $	��Top=�6�   $	��224��6�   ��6�   �� *Name+6�   �� 5   
   -   5         ��Name$ ArticleLabel��5      $��Артикул��6&   $
��Left=�68   $��	96,16,0,0q�6S   $	��Top=�6f    J� RenderTransformOrigin$ 0.456,0.131&�6~   �� 5   
   $��Наименование��6   $
��Left=�6'   $��	58,40,0,0q�6B   $	��Top=�6U   $ 0.456,0.131&�6m   �� 5   
   -   5        $ ChekMark_Copy��5   ?   
������ 
���   �$
��Left=�6V   $��20��6q   $��
156,70,0,0q�6}   $
 Wrap=�6�   $	��Top=�6�   $	��224��6�   ��6�   �� *Count+6�   �� 5   
   
������ 
���   �$
��Left=�6@   $��20��6[   $��
156,94,0,0q�6g   $
 Wrap=�6{   $	��Top=�6�   $	��224��6�   ��6�   �� *Unit+6�   �� 5   
   $��Количество��6   $
��Left=�6%   $��	77,67,0,0q�6@   $	��Top=�6S   $ 0.456,0.131&�6k   �� 5   
   $'��!Единицы измерения��6   $
��Left=�6,   $��	29,91,0,0q�6G   $	��Top=�6Z   $ 0.456,0.131&�6r   �� 5   
   -   5        $ ChekMark_Copy1��5   ?   
������ 
���   �$
��Left=�6W   $��20��6r   $��156,121,0,0q�6~   $
 Wrap=�6�   $	��Top=�6�   $	��224��6�   ��6�   �� *Price+6�   �� 5   
   $#��Закупочная цена��6   $
��Left=�6*   $��
47,118,0,0q�6E   $	��Top=�6Y   $ 0.456,0.131&�6q   �� 5   
   $)��#Основной поставщик��6   $
��Left=�6-   $��
22,142,0,0q�6H   $	��Top=�6\   $ 0.456,0.131&�6t   �� 5   
   -   5         ��Name$ CBoxTypeNameSupplier��5   �   
������ 
���   �	 �� SelectedValuePath$
	 Name��6p   
 �� DisplayMemberPath$

 Name��6�   $
��Left=�6�   $��157,147,0,0q�6�   $	��Top=�6�   $	��225��6  $��23��6   �� SelectedValue 6@   �� *
Supplier+ �� Mode$ TwoWay=�6   5      5      
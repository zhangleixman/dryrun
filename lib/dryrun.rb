 r e q u i r e   ' t m p d i r '  
 r e q u i r e   ' f i l e u t i l s '  
 r e q u i r e   ' d r y r u n / g i t h u b '  
 r e q u i r e   ' d r y r u n / v e r s i o n '  
 r e q u i r e   ' d r y r u n / a n d r o i d _ p r o j e c t '  
 r e q u i r e   ' h i g h l i n e / i m p o r t '  
 r e q u i r e   ' o p e n s s l '  
 r e q u i r e   ' o p e n 3 '  
 r e q u i r e _ r e l a t i v e   ' d r y r u n / d e v i c e '  
 r e q u i r e   ' o p t p a r s e '  
 r e q u i r e   ' c o l o r i z e '  
  
 m o d u l e   D r y r u n  
     c l a s s   M a i n A p p  
         d e f   i n i t i a l i z e ( a r g u m e n t s )  
             o u t d a t e d _ v e r i f i c a t i o n  
  
             @ u r l   =   % w ( - h   - - h e l p   - v   - - v e r s i o n   - w   - - w i p e ) . i n c l u d e ? ( a r g u m e n t s . f i r s t )   ?   n i l   :   a r g u m e n t s . s h i f t  
  
             #   d e f a u l t s  
             @ a p p _ p a t h   =   n i l  
             @ c u s t o m _ m o d u l e   =   n i l  
             @ f l a v o u r   =   ' '  
             @ t a g   =   n i l  
             @ b r a n c h   =   ' m a s t e r '  
             @ d e v i c e s   =   [ ]  
             @ c l e a n u p   =   f a l s e  
  
             #   P a r s e   O p t i o n s  
             c r e a t e _ o p t i o n s _ p a r s e r ( a r g u m e n t s )  
         e n d  
  
         d e f   c r e a t e _ o p t i o n s _ p a r s e r ( a r g s )  
             a r g s . o p t i o n s   d o   | o p t s |  
                 o p t s . b a n n e r   =   ' U s a g e :   d r y r u n   G I T _ U R L   [ O P T I O N S ] '  
                 o p t s . s e p a r a t o r     ' '  
                 o p t s . s e p a r a t o r     ' O p t i o n s '  
  
                 o p t s . o n ( ' - m   M O D U L E _ N A M E ' ,   ' - - m o d u l e   M O D U L E _ N A M E ' ,   ' C u s t o m   m o d u l e   t o   r u n ' )   d o   | c u s t o m _ m o d u l e |  
                     @ c u s t o m _ m o d u l e   =   c u s t o m _ m o d u l e  
                 e n d  
  
                 o p t s . o n ( ' - b   B R A N C H _ N A M E ' ,   ' - - b r a n c h   B R A N C H _ N A M E ' ,   ' C h e c k o u t   c u s t o m   b r a n c h   t o   r u n ' )   d o   | b r a n c h |  
                     @ b r a n c h   =   b r a n c h  
                 e n d  
  
                 o p t s . o n ( ' - f ' ,   ' - - f l a v o u r   F L A V O U R ' ,   ' C u s t o m   f l a v o u r   ( e . g .   d e v ,   q a ,   p r o d ) ' )   d o   | f l a v o u r |  
                     @ f l a v o u r   =   f l a v o u r . c a p i t a l i z e  
                 e n d  
  
                 o p t s . o n ( ' - p   P A T H ' ,   ' - - p a t h   P A T H ' ,   ' C u s t o m   p a t h   t o   a n d r o i d   p r o j e c t ' )   d o   | a p p _ p a t h |  
                     @ a p p _ p a t h   =   a p p _ p a t h  
                 e n d  
  
                 o p t s . o n ( ' - t   T A G ' ,   ' - - t a g   T A G ' ,   ' C h e c k o u t   t a g / c o m m i t   h a s h   t o   c l o n e   ( e . g .   " v 0 . 4 . 5 " ,   " 6 f 7 d d 4 b " ) ' )   d o   | t a g |  
                     @ t a g   =   t a g  
                 e n d  
  
                 o p t s . o n ( ' - c ' ,   ' - - c l e a n u p ' ,   ' C l e a n   t h e   t e m p o r a r y   f o l d e r   b e f o r e   c l o n i n g   t h e   p r o j e c t ' )   d o  
                     @ c l e a n u p   =   t r u e  
                 e n d  
  
                 o p t s . o n ( ' - w ' ,   ' - - w i p e ' ,   ' W i p e   t h e   t e m p o r a r y   d r y r u n   f o l d e r ' )   d o  
                     w i p e _ t e m p o r a r y _ f o l d e r  
                 e n d  
  
                 o p t s . o n ( ' - h ' ,   ' - - h e l p ' ,   ' D i s p l a y s   h e l p ' )   d o  
                     p u t s   o p t s . h e l p  
                     e x i t  
                 e n d  
  
                 o p t s . o n ( ' - v ' ,   ' - - v e r s i o n ' ,   ' D i s p l a y s   t h e   v e r s i o n ' )   d o  
                     p u t s   D r y r u n : : V E R S I O N  
                     e x i t  
                 e n d  
  
                 o p t s . p a r s e !  
             e n d  
         e n d  
  
         d e f   o u t d a t e d _ v e r i f i c a t i o n  
             r e t u r n   i f   D r y r u n U t i l s . u p _ t o _ d a t e  
  
             i n p u t   =   n i l  
  
             b e g i n  
                 i n p u t   =   a s k   " \ n # { ' Y o u r   D r y r u n   v e r s i o n   i s   o u t d a t e d ,   w a n t   t o   u p d a t e ? ' . y e l l o w }   # { ' [ Y / n ] : ' . w h i t e } "  
             e n d   u n t i l   % w ( y   n   s ) . i n c l u d e ? ( i n p u t . d o w n c a s e )  
  
             D r y r u n U t i l s . e x e c u t e ( ' g e m   u p d a t e   d r y r u n ' )   i f   i n p u t . c a s e c m p   ' y '  
         e n d  
  
         d e f   p i c k _ d e v i c e  
             @ d e v i c e   =   n i l  
  
             i f   ! G e m . w i n _ p l a t f o r m ?  
                 @ s d k   =   ` e c h o   $ A N D R O I D _ H O M E ` . d e l e t e ( " \ n " )  
                 @ s d k   + =   ' / p l a t f o r m - t o o l s / a d b '  
             e l s e  
                 @ s d k   =   ` e c h o   % A N D R O I D _ H O M E % ` . d e l e t e ( " \ n " )  
                 @ s d k   + =   ' / p l a t f o r m - t o o l s / a d b . e x e '  
             e n d  
  
             D r y r u n U t i l s . s d k ( @ s d k )  
  
             p u t s   ' S e a r c h i n g   f o r   d e v i c e s . . . ' . y e l l o w  
  
             @ d e v i c e s   =   D r y r u n U t i l s . r u n _ a d b ( ' d e v i c e s ' )  
  
             i f   @ d e v i c e s . n i l ?   | |   @ d e v i c e s . e m p t y ?  
                 p u t s   ' K i l l i n g   a d b ,   t h e r e   m i g h t   b e   a n   i s s u e   w i t h   i t . . . '  
                 D r y r u n U t i l s . r u n _ a d b ( ' k i l l - s e r v e r ' )  
                 @ d e v i c e s   =   D r y r u n U t i l s . r u n _ a d b ( ' d e v i c e s ' )  
             e n d  
  
             p u t s   ' N o   d e v i c e s   a t t a c h e d ,   b u t   I \ ' l l   r u n   a n y w a y '   i f   @ d e v i c e s . e m p t y ?  
  
             i f   @ d e v i c e s . s i z e   > =   2  
                 p u t s   ' P i c k   y o u r   d e v i c e   ( 1 , 2 , 3 . . . ) : '  
  
                 @ d e v i c e s . e a c h _ w i t h _ i n d e x . m a p   {   | k e y ,   i n d e x |   p u t s   " # { i n d e x . t o _ s . g r e e n }   -     # { k e y . n a m e }   \ n "   }  
  
                 i n p u t   =   g e t s . c h o m p  
  
                 @ d e v i c e   =   i f   i n p u t . m a t c h ( / ^ \ d + $ / )   & &   i n p u t . t o _ i   < =   ( @ d e v i c e s . l e n g t h   -   1 )   & &   i n p u t . t o _ i   > =   0  
                                         @ d e v i c e s [ i n p u t . t o _ i ]  
                                     e l s e  
                                         @ d e v i c e s . f i r s t  
                                     e n d  
             e l s e  
                 @ d e v i c e   =   @ d e v i c e s . f i r s t  
             e n d  
  
             D r y r u n U t i l s . d e v i c e ( @ d e v i c e )  
             p u t s   " P i c k e d   # { @ d e v i c e . n a m e . t o _ s . g r e e n } "   u n l e s s   @ d e v i c e . n i l ?  
         e n d  
  
         d e f   a n d r o i d _ h o m e _ i s _ d e f i n e d  
             @ s d k   =   i f   ! G e m . w i n _ p l a t f o r m ?  
                               ` e c h o   $ A N D R O I D _ H O M E ` . d e l e t e ( ' \ n ' )  
                           e l s e  
                               ` e c h o   % A N D R O I D _ H O M E % ` . d e l e t e ( ' \ n ' )  
                           e n d  
             ! @ s d k . e m p t y ?  
         e n d  
  
         d e f   w i p e _ t e m p o r a r y _ f o l d e r  
             t m p d i r   =   D i r . t m p d i r   +   ' / d r y r u n / '  
             p u t s   ' W i p i n g   '   +   t m p d i r . r e d  
             F i l e U t i l s . r m _ r f   t m p d i r  
             p u t s   ' F o l d e r   t o t a l l y   r e m o v e d ! ' . g r e e n  
             e x i t   1  
         e n d  
  
         d e f   c a l l  
             u n l e s s   a n d r o i d _ h o m e _ i s _ d e f i n e d  
                 p u t s   " \ n W A R N I N G :   y o u r   # { ' $ A N D R O I D _ H O M E ' . y e l l o w }   i s   n o t   d e f i n e d \ n "  
                 p u t s   " \ n h i n t :   i n   y o u r   # { ' ~ / . b a s h r c ' . y e l l o w }   o r   # { ' ~ / . b a s h _ p r o f i l e ' . y e l l o w }     a d d : \ n     # { " e x p o r t   A N D R O I D _ H O M E = ' / U s e r s / c e s a r f e r r e i r a / L i b r a r y / A n d r o i d / s d k / ' " . y e l l o w } "  
                 p u t s   " \ n N o w   t y p e   # { ' s o u r c e   ~ / . b a s h r c ' . y e l l o w } \ n \ n "  
                 e x i t   1  
             e n d  
  
             i f   @ u r l . n i l ?  
                 p u t s   ' Y o u   n e e d   t o   i n s e r t   a   v a l i d   G I T   U R L '  
                 e x i t   1  
             e n d  
  
             @ u r l   =   @ u r l . s p l i t ( ' ? ' ) . f i r s t  
             @ u r l . c h o p !   i f   @ u r l . e n d _ w i t h ?   ' / '  
  
             p i c k _ d e v i c e  
  
             g i t h u b   =   G i t h u b . n e w ( @ u r l )  
  
             u n l e s s   g i t h u b . v a l i d ?  
                 p u t s   " # { @ u r l . r e d }   i s   n o t   a   v a l i d   g i t   @ u r l "  
                 e x i t   1  
             e n d  
  
             #   c l o n e   t h e   r e p o s i t o r y  
             r e p o s i t o r y _ p a t h   =   g i t h u b . c l o n e ( @ b r a n c h ,   @ t a g ,   @ c l e a n u p )  
  
             a n d r o i d _ p r o j e c t   =   A n d r o i d P r o j e c t . n e w ( r e p o s i t o r y _ p a t h ,   @ a p p _ p a t h ,   @ c u s t o m _ m o d u l e ,   @ f l a v o u r ,   @ d e v i c e )  
  
             #   i s   a   v a l i d   a n d r o i d   p r o j e c t ?  
             u n l e s s   a n d r o i d _ p r o j e c t . v a l i d ?  
                 p u t s   " # { @ u r l . r e d }   i s   n o t   a   v a l i d   a n d r o i d   p r o j e c t "  
                 e x i t   1  
             e n d  
  
             p u t s   " U s i n g   c u s t o m   a p p   f o l d e r :   # { @ a p p _ p a t h . g r e e n } "   i f   @ a p p _ p a t h  
             p u t s   " U s i n g   c u s t o m   m o d u l e :   # { @ c u s t o m _ m o d u l e . g r e e n } "   i f   @ c u s t o m _ m o d u l e  
  
             #   c l e a n   a n d   i n s t a l l   t h e   a p k  
             a n d r o i d _ p r o j e c t . i n s t a l l  
  
             p u t s   " \ n >   I f   y o u   w a n t   t o   r e m o v e   t h e   a p p   y o u   j u s t   i n s t a l l e d ,   e x e c u t e : \ n # { a n d r o i d _ p r o j e c t . u n i n s t a l l _ c o m m a n d . y e l l o w } \ n \ n "  
         e n d  
     e n d  
 e n d  

#! @Chapter Examples and Tests

#! @Section IsZero

#! @Example
LoadPackage( "CategoriesWithAmbientObjects", false );
#! true
LoadPackage( "ModulePresentationsForCAP", ">= 2023.10-01", false );
#! true
QQ := HomalgFieldOfRationalsInSingular( );;
R := QQ * "x,y";
#! Q[x,y]
M := AsLeftPresentation(
  HomalgMatrix( "[ 1, x, 0, 1 ]", 2, 2, R ) );
#! <An object in Category of left presentations of Q[x,y]>
Ag := CategoryWithAmbientObjects( CapCategory( M ) );
#! CategoryWithAmbientObjects( Category of left presentations of Q[x,y] )
pi := AsGeneralizedMorphismByCospan( CoverByFreeModule( M ) );
#! <A morphism in Generalized morphism category of
#!  Category of left presentations of Q[x,y] by cospan>
iota := PseudoInverse( pi );
#! <A morphism in Generalized morphism category of
#!  Category of left presentations of Q[x,y] by cospan>
Mg := ObjectWithAmbientObject( iota, Ag );
#! <An object in Category of left presentations of Q[x,y]>
#!  with an ambient object
Display( Mg );
#! 1,x,
#! 0,1
#! 
#! An object in Category of left presentations of Q[x,y]
DisplayEmbeddingInAmbientObject( Mg );
#! 0,0,
#! 0,0
#! 
#! A monomorphism in Category of left presentations of Q[x,y]
#! @EndExample

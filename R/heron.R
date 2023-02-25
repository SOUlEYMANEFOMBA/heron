

#' Demi_périmetre
#'
#' @param a la longueur du premier côte du traingle
#' @param b la longueur du deuxième côte du traingle
#' @param c la longueur du troisième côte du traingle
#'
#' @return renvoie le demi-périmètre du triangle
#' @noRd
#'
#' @examples
#' a=1;b=1;c=1
#' demi_perimetre(a,b,c)
#'


demi_perimetre=function(a,b,c){
  p=(a+b+c)/(2)
  return(p)
}


#' Air d'un triangle( formule heron)
#'
#' Cette fonction permet de retouner l'air d'un traingle en utilisant la formule d'héron
#'
#' @param a la longueur du premier côte du traingle
#' @param b la longueur du deuxième côte du traingle
#' @param c la longueur du troisième côte du traingle
#'
#' @return  renvoie l'air d'un triangle en utilisant la formule d'héron si les paramètre sont numeric
#'  et supérieur à zéro sinon renvoie un message d'erreur
#' @export
#'
#' @examples
#' a=3;b=6;c=7
#' air_triangle(a,b,c)
#'
#' a="d"; b=1;C=1
#' air_triangle(a,b,c)
#'
air_triangle=function(a,b,c){
  vect=c(a,b,c)
  if (is.numeric(vect)==FALSE | (a<= 0| b<=0 | c<=0)){
    warning("a or b or c is (not numeric)/zeros/negative")

    }else {
   p=demi_perimetre(a,b,c)
    s=p*(p-a)*(p-b)*(p-c)
    return(sqrt(s))}
}





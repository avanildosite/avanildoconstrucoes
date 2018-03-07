#!/bin/bash
#galeria de fotus feita em shel script

titolo='Galaria de imagem avanildo.com.br '
pastaGaleria="http://avanildo.com.br/galeria"

echo "
<!DOCTYPE html>

<html lang='pt-br'>
  
<head>
<!-- configurar pagina -->
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <link rel='stylesheet' href='http://avanildo.com.br/css/bootstrap.css'>
     <link rel='stylesheet' href='http://avanildo.com.br/galeria/css/stilo.css'>
     <link rel='stylesheet' href='http://avanildo.com.br/galeria/css/avanildo.css'>
    <link rel='stylesheet' href='http://avanildo.com.br/galeria/css/mediaboxWhite.css' type='text/css' media='screen' />    
    <script src='http://avanildo.com.br/js/jquery.min.js'></script>
    
    
    <script src='http://avanildo.com.br/js/bootstrap.min.js'></script>
    <script src='http://avanildo.com.br/js/dados.js'></script>
    <script src='http://avanildo.com.br/bd/dados.js'></script>
    <script src='http://avanildo.com.br/js/bootbox.min.js'></script>
<!-- configurar metas tag pagina -->
    <link rel='canonical' href='$site' />
    <meta name='robots' content='index, follow' />
    <meta http-equiv='Content-Type' content='text/html; charset=utf-8' />
    <title> $titolo   </title>
    <meta name='author' content='Avanildo' />
    <meta http-equiv='content-language' content='pt-br' />
    <meta name='description' content=' $descriçao' />
    <meta name='keywords' content='' />
    <meta name='p:domain_verify' content='dd0d8a10871f92ef62114717a0208bb2'/>
<!--configuraçao de og: -->
    <meta property='og:locale' content='pt_BR' />
    <meta property='og:type' content='$site' />
    <meta property='og:title' content=' ' />
    <meta property='og:description' content='#descricao' />
    <meta property='og:url' content='' />
    <meta property='og:site_name' content='$nome' />
    <meta property='article:publisher' content='https://www.facebook.com/Avanildo-Construções-740769606031967/' />


<noscript>
    Você esta sem suporte Java Script, ative-o para visualizar melhor este site.
</noscript> 


</head>
<body>


<div class='container'>
<header class='container-fluid'>
   
    <div class='row azul'> 
     <div class='col-md-4 logo '>
                
          <script>document.write(logo)</script>  
        
    </div>
    <div class='col-md-4 centro'>
        <script>document.write(telefone)</script> 
    </div>
  
    <div class='col-md-4  centro'>
                
           <script>document.write(watsapp)</script>    
 <!--
     <img  src='http://avanildo.com.br/theme/avanildo-flui/images/watsap.png' align='middle'  height='100' alt='Watssap' onclick='wats()'> (19)9-8219-3013
  -->
    </div>
  </div>   
</header>
 
<nav class='navbar navbar-inverse' >
  <div class='container-fluid' >
    <div class='navbar-header'>
      <button type='button' class='navbar-toggle' data-toggle='collapse' data-target='#myNavbar'>
        <span class='icon-bar'></span>
        <span class='icon-bar'></span>
        <span class='icon-bar'></span>                        
      </button>
     </div>
    
    
    <div class='collapse navbar-collapse' id='myNavbar'>
      <ul class='nav navbar-nav'>
              <script> montarmenu(horizontal) </script>
      </ul>
      
    </div>
  </div>
</nav>
   <!-- Pagina principal -->
<div class='container-fluid text-center'>    
   <div class='row content'>
         
<!--menssagem do site fim de ano  feita por avanildo macedo-->

<script> //document.write(aviso)</script>
     
     <h1 class='well'>  Galeria de foto Avanildo Construções    </h1>   <!-- titolo da pagina   -->
      <div id='Message' class='Message'>
				
		</div>    
    
     <nav role='navigation' style='text-align:left'></nav>
	  <aside></aside>
     <hr>
    <div class='col-sm-12 text-left'>  
       <!--imagem  aqui -->    
       <main id='container'>
			<ul id='gallery'> "


function imagem
{
   for x in $(ls -1 *.jpg );
    do
      
          echo "<li><a href='$x'><img src='$x' width='320' height='320' alt='Imagem $x' /></a></li>"         
      
    done
}

imagem

echo "
		</ul>
		</main>
		<nav class='clear' role='navigation'></nav>
		<a href='#top' id='backtop'>Topo</a>
    
    </div>  
  
    

    </div>
 
 
  </div>

 <!-- Roda pe -->
  <footer class='azul '> 
   <div class='row'>
       <div class='col-sm-4'>
        <script> document.write(t1_rodape)</script>           
           <ul style='list-style: none; text-align:left' class='l1'>           
               <script> montarmenu(_rodape)  //document.write(rodape);</script>
           </ul>
       </div>
       <div class='col-sm-4 l1' >
   
        <script> document.write(t2_rodape)</script>           
           <ul style='list-style: none; text-align:left;' class='l1'>           
               <script> montarmenu(rodape1)  </script>
           </ul>
       </div>   
   
       
       <div class='col-sm-4 '>
             
            <script> document.write(t3_rodape)</script>           
           <ul style='list-style: none; text-align:left;' class='l1'>           
               <script> montarlista(rodape2)  //document.write(rodape);</script>
           </ul>
   
       </div>
   
   
   </div>   
     
   
      <script src='$pastaGaleria/js/lazy.js'></script>
		<script src='$pastaGaleria/js/script.js'></script>
		<script src='$pastaGaleria/js/mootools1.5.0.js'></script>
		<script src='$pastaGaleria/js/mediabox1.5.4.js'></script>
  </footer>


</div>
 

</body>
</html>
" 
 

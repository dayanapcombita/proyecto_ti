<?php
 include_once("header.php");
?>
 <div class="container">  
			<form action='carpeta/Repuestos.php' method='post'>
     <legend>Repuesto:</legend>
    <div class="form-group row">
      <label class="col-2" for="Nombre">Nombre</label>
      <div class="col-4">
         <input type="text" class="form-control name="Nombre" aria-describedby="emailHelp" placeholder="">
      </div>
    </div>
    <div class="form-group row">
      <label class="col-2" for="exampleInputPassword1">Marca</label>
      <div class="col-4" >
          <input type="text" class="form-control" name="Marca" placeholder=""  >
       </div>
    </div>
    <div class="form-group row">
      <label class="col-2" for="exampleInputPassword1">Stock</label>
      <div class="col-4">
      <input type="text" class="form-control" name="Stock" placeholder=""  >
     </div>
    </div>
    <div class="form-group row">
      <label class="col-2" for="exampleInputPassword1">Punto_reorden </label>
      <div class="col-4">
       <input type="text" class="form-control" name="Punto_reorden" placeholder="">
     </div>
    </div>
   
    <button type="submit" class="btn btn-primary">Registrar</button>
  </form>
	
</div>
				
        </body>

        
        </html>
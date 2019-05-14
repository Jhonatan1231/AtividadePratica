<?php 
	include("cabecalho.php")
	?>
<div class="container">
 	<div class="row">
		<div class="col-sm-12">
		&nbsp;
</div>
</div>
 <div class="row">
		<div class="col-sm-12">
		<h2>Cadastro de Vendedores</h2>
</div>
</div>
	<div class="row">
		<div class="col-sm-12">
			<div class="row">
				<div class="col-sm-6">
					<div class="form-group">
					    <label for="nome">Nome:</label>
					    <input type="text" class="form-control" id="nome" name="nome">
			  		</div>
				</div>
				<div class="col-sm-6">
					<div class="form-group">
			  		  <label for="telefone">Celular:</label>
			 		   <input type="tel" class="form-control" id="celular" name="celular">
				  </div>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-6">
				  <div class="form-group">
				    <label for="curso">Email:</label>
				    <input type="text" class="form-control" id="email" name="email">
				  </div>
				</div>
				<div class="col-sm-6">
				  <div class="form-group">
				    <label for="curso">Comissão:</label>
				    <input type="text" class="form-control" id="comissao" name="comissao">
				  </div>
				</div>
				<div class="col-sm-6">
				</div>
			</div>
				</div>
			  <button type="submit" class="btn btn-primary">CADASTRAR</button>
			</form> 	
		</div><!--fecha coluna principal-->
	</div><!--fecha linha principal-->
</div><!--fecha container-->
<?php
include("rodape.php")
?>

</body>
</html> 
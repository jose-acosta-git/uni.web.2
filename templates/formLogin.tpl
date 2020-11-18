{include 'head.tpl'}
{include 'header.tpl'}

<section class="container justify-content-center">
  <form method="POST" action="login" class="col form-translucent">
    <div class="form-group">
      <label for="exampleInputEmail1" class="texto-blanco">Correo electrónico</label>
      <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="email" required>
    </div>
    <div class="form-group">
      <label for="exampleInputPassword1" class="texto-blanco">Password</label>
      <input type="password" class="form-control" id="password" name="password" required>
    </div>
    {if $error}
      <div class="alert alert-danger">
          {$error}
      </div>
    {/if}
    <button type="submit" class="btn btn-primary">Submit</button>
  </form>
</section>

{include 'footer.tpl'}
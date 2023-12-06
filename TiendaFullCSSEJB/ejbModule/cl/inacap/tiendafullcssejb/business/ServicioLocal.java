package cl.inacap.tiendafullcssejb.business;

import java.util.List;

import javax.ejb.Local;

import cl.inacap.tiendafullcssejb.model.Categoria;
import cl.inacap.tiendafullcssejb.model.Producto;
import cl.inacap.tiendafullcssejb.model.Sucursal;
import cl.inacap.tiendafullcssejb.model.Usuario;

@Local
public interface ServicioLocal {
	public String saveSucursal(Sucursal su);
	public List<Sucursal> getAllSucursal();
	public void deleteSucursal(int id);
	public void updateSucursal(Sucursal su);
	
	public String saveProducto(Producto pr);
	public List<Producto> getAllProducto();
	public void deleteProducto(int id);
	public void updateProducto(Producto pr);
	
	public String saveCategoria(Categoria ca);
	public List<Categoria> getAllCategoria();
	public String deleteCategoria(int id);
	public void updateCategoria(Categoria ca);
	
	public List<Usuario> getAllUsuario();
	public String saveUsuario(Usuario us);
}


 
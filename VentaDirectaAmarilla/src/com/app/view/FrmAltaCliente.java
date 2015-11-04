package com.app.view;

import java.awt.EventQueue;

import javax.swing.JButton;
import javax.swing.JComboBox;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JTabbedPane;
import javax.swing.JTextField;
import javax.swing.border.EmptyBorder;

public class FrmAltaCliente extends JFrame {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private JPanel contentPane;
	private JTextField txtCodigoCliente;
	private JTextField txtApellido;
	private JTextField txtNombre;
	private JTextField txtRazonSocial;
	private JTextField txtTelefono;
	private JTextField txtCalle;
	private JTextField txtNumero;
	private JTextField txtPiso;
	private JTextField txtDepartamento;
	private JLabel lblCalle;
	private JLabel lblNumero;
	private JLabel lblPiso;
	private JLabel lblDepartamento;
	private JLabel lblProvincia;
	private JComboBox cmbLocalidad;
	private JLabel lblLocalidad;
	private JTextField txtNumeroDocumento;
	private JComboBox cmbTipoDocumento;
	private JLabel lblTipoNIF;
	private JLabel lblNumeroDocumento;
	private JTextField txtSucursal;
	private JLabel lblSucursal;
	private JTextField txtEdificio;
	private JTextField txtBarrio;
	private JTextField txtManzana;
	private JTextField txtParcela;
	private JTextField txtSector;
	private JTextField txtCasa;
	private JTextField txtChacra;
	private JTextField txtQuinta;
	private JComboBox cmbViaPago;
	private JComboBox cmbCondicionIVA;
	private JLabel lblViaPago;
	private JLabel lblCondicionIva;
	private JPanel panelUbicacionGeografica;
	private JTextField txtLatitud;
	private JTextField txtLongitud;
	private JLabel lblLatitud;
	private JLabel lblLongitud;
	private JLabel lblEmail;
	private JTextField txtEmail;

	private static FrmAltaCliente instancia;
	private JButton btnNuevaDireccin;
	
	public static FrmAltaCliente getInstancia(){
		if (instancia==null){
			instancia = new FrmAltaCliente();
		}
		return instancia;
	}
	
	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					FrmAltaCliente frame = new FrmAltaCliente();
					frame.setVisible(true);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
	}

	/**
	 * Create the frame.
	 */
	public FrmAltaCliente() {
		setResizable(false);
		setTitle("Alta de Cliente");
		setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
		setBounds(100, 100, 569, 363);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		setContentPane(contentPane);
		contentPane.setLayout(null);
		
		JTabbedPane tabbedPane = new JTabbedPane(JTabbedPane.TOP);
		tabbedPane.setBounds(10, 11, 510, 271);
		contentPane.add(tabbedPane);
		
		JPanel panelDatosPrincipales = new JPanel();
		tabbedPane.addTab("Datos Principales", null, panelDatosPrincipales, null);
		panelDatosPrincipales.setLayout(null);
		
		txtCodigoCliente = new JTextField();
		txtCodigoCliente.setEditable(false);
		txtCodigoCliente.setBounds(89, 11, 86, 20);
		panelDatosPrincipales.add(txtCodigoCliente);
		txtCodigoCliente.setColumns(10);
		
		JLabel lblCodigo = new JLabel("C\u00F3digo");
		lblCodigo.setBounds(10, 14, 46, 14);
		panelDatosPrincipales.add(lblCodigo);
		
		txtApellido = new JTextField();
		txtApellido.setBounds(90, 42, 302, 20);
		panelDatosPrincipales.add(txtApellido);
		txtApellido.setColumns(10);
		
		txtNombre = new JTextField();
		txtNombre.setBounds(90, 73, 302, 20);
		panelDatosPrincipales.add(txtNombre);
		txtNombre.setColumns(10);
		
		JLabel lblApellido = new JLabel("Apellido");
		lblApellido.setBounds(10, 45, 46, 14);
		panelDatosPrincipales.add(lblApellido);
		
		JLabel lblNombre = new JLabel("Nombre");
		lblNombre.setBounds(10, 76, 46, 14);
		panelDatosPrincipales.add(lblNombre);
		
		txtRazonSocial = new JTextField();
		txtRazonSocial.setBounds(90, 104, 302, 20);
		panelDatosPrincipales.add(txtRazonSocial);
		txtRazonSocial.setColumns(10);
		
		JLabel lblRazonSocial = new JLabel("Raz\u00F3n Social");
		lblRazonSocial.setBounds(10, 107, 97, 14);
		panelDatosPrincipales.add(lblRazonSocial);
		
		txtTelefono = new JTextField();
		txtTelefono.setBounds(89, 170, 110, 20);
		panelDatosPrincipales.add(txtTelefono);
		txtTelefono.setColumns(10);
		
		JLabel lblTelefono = new JLabel("Tel\u00E9fono");
		lblTelefono.setBounds(10, 173, 97, 14);
		panelDatosPrincipales.add(lblTelefono);
		
		txtNumeroDocumento = new JTextField();
		txtNumeroDocumento.setBounds(253, 139, 139, 20);
		panelDatosPrincipales.add(txtNumeroDocumento);
		txtNumeroDocumento.setColumns(10);
		
		cmbTipoDocumento = new JComboBox();
		cmbTipoDocumento.setBounds(89, 139, 110, 20);
		panelDatosPrincipales.add(cmbTipoDocumento);
		
		lblTipoNIF = new JLabel("Tipo NIF");
		lblTipoNIF.setBounds(10, 138, 86, 14);
		panelDatosPrincipales.add(lblTipoNIF);
		
		lblNumeroDocumento = new JLabel("NIF");
		lblNumeroDocumento.setBounds(213, 142, 30, 14);
		panelDatosPrincipales.add(lblNumeroDocumento);
		
		txtSucursal = new JTextField();
		txtSucursal.setEditable(false);
		txtSucursal.setBounds(306, 11, 86, 20);
		panelDatosPrincipales.add(txtSucursal);
		txtSucursal.setColumns(10);
		
		lblSucursal = new JLabel("Sucursal");
		lblSucursal.setBounds(234, 14, 62, 14);
		panelDatosPrincipales.add(lblSucursal);
		
		lblEmail = new JLabel("Email");
		lblEmail.setBounds(10, 205, 46, 14);
		panelDatosPrincipales.add(lblEmail);
		
		txtEmail = new JTextField();
		txtEmail.setColumns(10);
		txtEmail.setBounds(90, 202, 302, 20);
		panelDatosPrincipales.add(txtEmail);
		
		JPanel panelDatosDireccion = new JPanel();
		tabbedPane.addTab("Datos Direcci\u00F3n", null, panelDatosDireccion, null);
		panelDatosDireccion.setLayout(null);
		
		txtCalle = new JTextField();
		txtCalle.setBounds(83, 45, 224, 20);
		panelDatosDireccion.add(txtCalle);
		txtCalle.setColumns(10);
		
		txtNumero = new JTextField();
		txtNumero.setBounds(391, 45, 60, 20);
		panelDatosDireccion.add(txtNumero);
		txtNumero.setColumns(10);
		
		txtPiso = new JTextField();
		txtPiso.setBounds(83, 80, 38, 20);
		panelDatosDireccion.add(txtPiso);
		txtPiso.setColumns(10);
		
		txtDepartamento = new JTextField();
		txtDepartamento.setBounds(247, 80, 60, 20);
		panelDatosDireccion.add(txtDepartamento);
		txtDepartamento.setColumns(10);
		
		lblCalle = new JLabel("Calle");
		lblCalle.setBounds(10, 48, 46, 14);
		panelDatosDireccion.add(lblCalle);
		
		lblNumero = new JLabel("Numero");
		lblNumero.setBounds(331, 48, 50, 14);
		panelDatosDireccion.add(lblNumero);
		
		lblPiso = new JLabel("Piso");
		lblPiso.setBounds(10, 83, 46, 14);
		panelDatosDireccion.add(lblPiso);
		
		lblDepartamento = new JLabel("Departamento");
		lblDepartamento.setBounds(143, 83, 94, 14);
		panelDatosDireccion.add(lblDepartamento);
		
		JComboBox cmbProvincia = new JComboBox();
		cmbProvincia.setBounds(83, 11, 118, 20);
		panelDatosDireccion.add(cmbProvincia);
		
		lblProvincia = new JLabel("Provincia");
		lblProvincia.setBounds(10, 14, 63, 14);
		panelDatosDireccion.add(lblProvincia);
		
		cmbLocalidad = new JComboBox();
		cmbLocalidad.setBounds(305, 11, 146, 20);
		panelDatosDireccion.add(cmbLocalidad);
		
		lblLocalidad = new JLabel("Localidad");
		lblLocalidad.setBounds(234, 14, 61, 14);
		panelDatosDireccion.add(lblLocalidad);
		
		txtEdificio = new JTextField();
		txtEdificio.setColumns(10);
		txtEdificio.setBounds(391, 80, 60, 20);
		panelDatosDireccion.add(txtEdificio);
		
		JLabel lblEdificio = new JLabel("Edificio");
		lblEdificio.setBounds(331, 83, 50, 14);
		panelDatosDireccion.add(lblEdificio);
		
		JLabel lblBarrio = new JLabel("Barrio");
		lblBarrio.setBounds(10, 114, 46, 14);
		panelDatosDireccion.add(lblBarrio);
		
		txtBarrio = new JTextField();
		txtBarrio.setColumns(10);
		txtBarrio.setBounds(83, 111, 38, 20);
		panelDatosDireccion.add(txtBarrio);
		
		JLabel lblManzana = new JLabel("Manzana");
		lblManzana.setBounds(143, 114, 94, 14);
		panelDatosDireccion.add(lblManzana);
		
		txtManzana = new JTextField();
		txtManzana.setColumns(10);
		txtManzana.setBounds(247, 111, 60, 20);
		panelDatosDireccion.add(txtManzana);
		
		JLabel lblParcela = new JLabel("Parcela");
		lblParcela.setBounds(331, 114, 50, 14);
		panelDatosDireccion.add(lblParcela);
		
		txtParcela = new JTextField();
		txtParcela.setColumns(10);
		txtParcela.setBounds(391, 111, 60, 20);
		panelDatosDireccion.add(txtParcela);
		
		JLabel lblSector = new JLabel("Sector");
		lblSector.setBounds(10, 145, 46, 14);
		panelDatosDireccion.add(lblSector);
		
		txtSector = new JTextField();
		txtSector.setColumns(10);
		txtSector.setBounds(83, 142, 38, 20);
		panelDatosDireccion.add(txtSector);
		
		JLabel lblCasa = new JLabel("Casa");
		lblCasa.setBounds(143, 145, 94, 14);
		panelDatosDireccion.add(lblCasa);
		
		txtCasa = new JTextField();
		txtCasa.setColumns(10);
		txtCasa.setBounds(247, 142, 60, 20);
		panelDatosDireccion.add(txtCasa);
		
		JLabel lblChacra = new JLabel("Chacra");
		lblChacra.setBounds(331, 145, 50, 14);
		panelDatosDireccion.add(lblChacra);
		
		txtChacra = new JTextField();
		txtChacra.setColumns(10);
		txtChacra.setBounds(391, 142, 60, 20);
		panelDatosDireccion.add(txtChacra);
		
		JLabel lblQuinta = new JLabel("Quinta");
		lblQuinta.setBounds(10, 175, 46, 14);
		panelDatosDireccion.add(lblQuinta);
		
		txtQuinta = new JTextField();
		txtQuinta.setColumns(10);
		txtQuinta.setBounds(83, 172, 38, 20);
		panelDatosDireccion.add(txtQuinta);
		
		btnNuevaDireccin = new JButton("Nueva Direcci\u00F3n");
		btnNuevaDireccin.setBounds(331, 173, 120, 23);
		panelDatosDireccion.add(btnNuevaDireccin);
		
		JPanel panelDatosComerciales = new JPanel();
		tabbedPane.addTab("Datos Comerciales", null, panelDatosComerciales, null);
		panelDatosComerciales.setLayout(null);
		
		cmbViaPago = new JComboBox();
		cmbViaPago.setBounds(99, 11, 98, 20);
		panelDatosComerciales.add(cmbViaPago);
		
		cmbCondicionIVA = new JComboBox();
		cmbCondicionIVA.setBounds(99, 42, 98, 20);
		panelDatosComerciales.add(cmbCondicionIVA);
		
		lblViaPago = new JLabel("Via de Pago");
		lblViaPago.setBounds(10, 14, 69, 14);
		panelDatosComerciales.add(lblViaPago);
		
		lblCondicionIva = new JLabel("Condicion IVA");
		lblCondicionIva.setBounds(10, 45, 69, 14);
		panelDatosComerciales.add(lblCondicionIva);
		
		panelUbicacionGeografica = new JPanel();
		tabbedPane.addTab("Ubic. Geogr\u00E1fica", null, panelUbicacionGeografica, null);
		panelUbicacionGeografica.setLayout(null);
		
		txtLatitud = new JTextField();
		txtLatitud.setBounds(70, 11, 137, 20);
		panelUbicacionGeografica.add(txtLatitud);
		txtLatitud.setColumns(10);
		
		txtLongitud = new JTextField();
		txtLongitud.setBounds(284, 11, 137, 20);
		panelUbicacionGeografica.add(txtLongitud);
		txtLongitud.setColumns(10);
		
		lblLatitud = new JLabel("Latitud");
		lblLatitud.setBounds(10, 14, 46, 14);
		panelUbicacionGeografica.add(lblLatitud);
		
		lblLongitud = new JLabel("Longitud");
		lblLongitud.setBounds(225, 14, 46, 14);
		panelUbicacionGeografica.add(lblLongitud);
		
		JButton btnGuardar = new JButton("Guardar");
		btnGuardar.setBounds(332, 294, 89, 23);
		contentPane.add(btnGuardar);
		
		JButton btnCancelar = new JButton("Cancelar");
		btnCancelar.setBounds(431, 294, 89, 23);
		contentPane.add(btnCancelar);
	}
}

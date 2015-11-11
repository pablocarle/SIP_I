package com.app.view;

import java.awt.EventQueue;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.util.List;

import javax.swing.JButton;
import javax.swing.JComboBox;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JList;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JTextField;
import javax.swing.border.EmptyBorder;

import com.app.controller.SistemaVentaDirecta;
import com.app.model.Cliente;
import com.app.model.Sucursal;

public class FrmBuscarCliente extends JFrame {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private JPanel contentPane;
	private JTextField txtCodigoCliente;
	private JTextField txtApellido;
	private JTextField txtNombre;
	private JTextField txtTelefono;
	private JTextField txtRazonSocial;
	private JTextField txtCalle;
	private JTextField txtNumero;
	private JComboBox<Sucursal> cmbSucursal;
	private JList<Cliente> clienteList;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					FrmBuscarCliente frame = new FrmBuscarCliente();
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
	public FrmBuscarCliente() {
		setResizable(false);
		setTitle("Buscar Cliente");
		setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
		setBounds(100, 100, 510, 439);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		setContentPane(contentPane);
		contentPane.setLayout(null);
		
		JLabel lblCodigoCliente = new JLabel("C\u00F3digo Cliente");
		lblCodigoCliente.setBounds(10, 11, 109, 14);
		contentPane.add(lblCodigoCliente);
		
		txtCodigoCliente = new JTextField();
		txtCodigoCliente.setBounds(99, 8, 89, 20);
		contentPane.add(txtCodigoCliente);
		txtCodigoCliente.setColumns(10);
		
		txtApellido = new JTextField();
		txtApellido.setBounds(99, 36, 155, 20);
		contentPane.add(txtApellido);
		txtApellido.setColumns(10);
		
		txtNombre = new JTextField();
		txtNombre.setColumns(10);
		txtNombre.setBounds(329, 36, 166, 20);
		contentPane.add(txtNombre);
		
		txtTelefono = new JTextField();
		txtTelefono.setColumns(10);
		txtTelefono.setBounds(100, 124, 131, 20);
		contentPane.add(txtTelefono);
		
		JLabel lblApellido = new JLabel("Apellido");
		lblApellido.setBounds(10, 39, 46, 14);
		contentPane.add(lblApellido);
		
		JLabel lblNombre = new JLabel("Nombre");
		lblNombre.setBounds(275, 39, 46, 14);
		contentPane.add(lblNombre);
		
		JLabel lblTelefono = new JLabel("Tel\u00E9fono");
		lblTelefono.setBounds(10, 127, 109, 14);
		contentPane.add(lblTelefono);
		
		cmbSucursal = new JComboBox<Sucursal>();
		cmbSucursal.setBounds(329, 8, 166, 20);
		contentPane.add(cmbSucursal);
		
		JLabel lblSucursal = new JLabel("Sucursal");
		lblSucursal.setBounds(275, 11, 87, 14);
		contentPane.add(lblSucursal);
		
		JLabel lblRaznSocial = new JLabel("Raz\u00F3n Social");
		lblRaznSocial.setBounds(10, 68, 109, 14);
		contentPane.add(lblRaznSocial);
		
		txtRazonSocial = new JTextField();
		txtRazonSocial.setColumns(10);
		txtRazonSocial.setBounds(99, 65, 396, 20);
		contentPane.add(txtRazonSocial);
		
		JLabel lblCalle = new JLabel("Calle");
		lblCalle.setBounds(10, 96, 68, 14);
		contentPane.add(lblCalle);
		
		txtCalle = new JTextField();
		txtCalle.setColumns(10);
		txtCalle.setBounds(99, 93, 231, 20);
		contentPane.add(txtCalle);
		
		JLabel lblNumero = new JLabel("N\u00FAmero");
		lblNumero.setBounds(352, 96, 46, 14);
		contentPane.add(lblNumero);
		
		txtNumero = new JTextField();
		txtNumero.setColumns(10);
		txtNumero.setBounds(408, 93, 87, 20);
		contentPane.add(txtNumero);
		
		JButton btnAceptar = new JButton("Aceptar");
		btnAceptar.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				dispose();
			}
		});
		btnAceptar.setBounds(310, 367, 89, 23);
		contentPane.add(btnAceptar);
		
		JButton btnCancelar = new JButton("Cancelar");
		btnCancelar.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				dispose();
			}
		});
		btnCancelar.setBounds(406, 367, 89, 23);
		contentPane.add(btnCancelar);
		
		JButton btnBuscar = new JButton("Buscar");
		btnBuscar.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				if (tieneCriteriosBusqueda()) {
					List<Cliente> clientes = SistemaVentaDirecta.getSistema().buscarClientes(txtCodigoCliente.getText(), txtNombre.getText(), txtApellido.getText(), txtRazonSocial.getText(), txtTelefono.getText(), txtNumero.getText(), txtCalle.getText());
					if (!clientes.isEmpty()) {
						clienteList.setListData(clientes.toArray(new Cliente[0]));
					} else{
						JOptionPane.showMessageDialog(null, "No se encontraron clientes para el criterio proporcionado");
					}
				} else {
					JOptionPane.showMessageDialog(null, "No hay criterios de busqueda definidos");
				}
			}
		});
		btnBuscar.setBounds(241, 123, 89, 23);
		contentPane.add(btnBuscar);
		
		clienteList = new JList<Cliente>();
		clienteList.setBounds(10, 155, 485, 201);
		contentPane.add(clienteList);
		
		cargarDatos();
	}

	private void cargarDatos() {
		List<Sucursal> sucursales = SistemaVentaDirecta.getSistema().obtenerSucursales();
		for (Sucursal s : sucursales) {
			cmbSucursal.addItem(s);
		}
	}
	
	private boolean tieneCriteriosBusqueda() {
		return true;
	}
}

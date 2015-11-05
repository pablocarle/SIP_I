package com.app.view;

import java.awt.EventQueue;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JTable;
import javax.swing.JTextField;
import javax.swing.border.EmptyBorder;

public class FrmEntregar extends JFrame {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private JPanel contentPane;
	private JTable tblProductos;
	private JTextField txtIdPedido;
	private JTextField txtCodigoCliente;
	private JTextField txtRazonSocial;
	private JTextField txtDomicilio;
	private JTextField txtApellidoYNombre;
	private JTextField txtImporteTotal;
	private JTextField txtReferenciaFactura;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					FrmEntregar frame = new FrmEntregar();
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
	public FrmEntregar() {
		setTitle("Entregar Pedido");
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 449, 415);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		setContentPane(contentPane);
		contentPane.setLayout(null);
		
		JLabel lblIdPedido = new JLabel("IdPedido");
		lblIdPedido.setBounds(54, 19, 42, 14);
		contentPane.add(lblIdPedido);
		
		JLabel lblCdigoCliente = new JLabel("C\u00F3digo Cliente");
		lblCdigoCliente.setBounds(28, 49, 69, 14);
		contentPane.add(lblCdigoCliente);
		
		JLabel lblApellidoYNombre = new JLabel("Apellido y Nombre");
		lblApellidoYNombre.setBounds(10, 79, 86, 14);
		contentPane.add(lblApellidoYNombre);
		
		JLabel lblRazonSocial = new JLabel("Raz\u00F3n Social");
		lblRazonSocial.setBounds(36, 113, 60, 14);
		contentPane.add(lblRazonSocial);
		
		JLabel lblDomicilio = new JLabel("Domicilio");
		lblDomicilio.setBounds(56, 143, 40, 14);
		contentPane.add(lblDomicilio);
		
		JLabel lblImporteTotal = new JLabel("Importe Total");
		lblImporteTotal.setBounds(10, 206, 125, 14);
		contentPane.add(lblImporteTotal);
		
		JLabel lblReferenciaFactura = new JLabel("Referencia Factura");
		lblReferenciaFactura.setBounds(195, 206, 125, 14);
		contentPane.add(lblReferenciaFactura);
		
		tblProductos = new JTable();
		tblProductos.setBounds(10, 242, 414, 90);
		contentPane.add(tblProductos);
		
		JButton btnConfirmar = new JButton("Confirmar");
		btnConfirmar.setBounds(236, 343, 89, 23);
		contentPane.add(btnConfirmar);
		
		JButton btnCancelar = new JButton("Cancelar");
		btnCancelar.setBounds(335, 343, 89, 23);
		contentPane.add(btnCancelar);
		
		txtIdPedido = new JTextField();
		txtIdPedido.setEditable(false);
		txtIdPedido.setBounds(106, 15, 60, 23);
		contentPane.add(txtIdPedido);
		txtIdPedido.setColumns(10);
		
		txtCodigoCliente = new JTextField();
		txtCodigoCliente.setEditable(false);
		txtCodigoCliente.setColumns(10);
		txtCodigoCliente.setBounds(107, 45, 86, 23);
		contentPane.add(txtCodigoCliente);
		
		txtRazonSocial = new JTextField();
		txtRazonSocial.setEditable(false);
		txtRazonSocial.setColumns(10);
		txtRazonSocial.setBounds(106, 109, 299, 23);
		contentPane.add(txtRazonSocial);
		
		txtDomicilio = new JTextField();
		txtDomicilio.setEditable(false);
		txtDomicilio.setColumns(10);
		txtDomicilio.setBounds(106, 143, 299, 48);
		contentPane.add(txtDomicilio);
		
		txtApellidoYNombre = new JTextField();
		txtApellidoYNombre.setEditable(false);
		txtApellidoYNombre.setColumns(10);
		txtApellidoYNombre.setBounds(106, 75, 299, 23);
		contentPane.add(txtApellidoYNombre);
		
		txtImporteTotal = new JTextField();
		txtImporteTotal.setBounds(81, 202, 96, 23);
		contentPane.add(txtImporteTotal);
		txtImporteTotal.setColumns(10);
		
		txtReferenciaFactura = new JTextField();
		txtReferenciaFactura.setColumns(10);
		txtReferenciaFactura.setBounds(294, 202, 111, 23);
		contentPane.add(txtReferenciaFactura);
	}
}

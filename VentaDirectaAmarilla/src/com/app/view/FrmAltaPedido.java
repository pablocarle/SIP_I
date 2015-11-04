package com.app.view;

import java.awt.EventQueue;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.JButton;
import javax.swing.JComboBox;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JSeparator;
import javax.swing.JTabbedPane;
import javax.swing.JTable;
import javax.swing.JTextField;
import javax.swing.border.EmptyBorder;

public class FrmAltaPedido extends JFrame {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private JPanel contentPane;
	private JTextField textField;
	private JTextField textField_1;
	private JTextField txtApellido;
	private JTextField textField_2;
	private JTextField txtEstadoPedido;
	private JTextField textField_3;
	private JTextField txtDomicilio;
	private JTextField txtFechaPedido;
	private JTextField txtDesde;
	private JTextField txtHasta;
	private JTextField txtDominio;
	private JTextField txtFechaHoraEntrega;
	private JTextField txtNumeroComprobante;
	private JTextField txtImporteTotal;
	private JTable table;

	private static FrmAltaPedido instancia;
	
	public static FrmAltaPedido getInstancia(){
		if (instancia==null)
		{
			instancia = new FrmAltaPedido();
			
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
					FrmAltaPedido frame = new FrmAltaPedido();
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
	public FrmAltaPedido() {
		setResizable(false);
		setTitle("Alta Pedido");
		setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
		setBounds(100, 100, 497, 591);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		setContentPane(contentPane);
		contentPane.setLayout(null);
		
		JLabel lblIdPedido = new JLabel("Id. Pedido");
		lblIdPedido.setBounds(10, 21, 63, 14);
		contentPane.add(lblIdPedido);
		
		textField = new JTextField();
		textField.setEditable(false);
		textField.setBounds(87, 18, 86, 20);
		contentPane.add(textField);
		textField.setColumns(10);
		
		JLabel lblCliente = new JLabel("C\u00F3digo Cliente");
		lblCliente.setBounds(10, 94, 78, 14);
		contentPane.add(lblCliente);
		
		textField_1 = new JTextField();
		textField_1.setBounds(87, 91, 86, 20);
		contentPane.add(textField_1);
		textField_1.setColumns(10);
		
		JButton btnBuscarCliente = new JButton("...");
		btnBuscarCliente.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				FrmBuscarCliente frmBuscarCliente = FrmBuscarCliente.getInstancia();
				frmBuscarCliente.setVisible(true);
			}
		});
		btnBuscarCliente.setBounds(183, 90, 25, 23);
		contentPane.add(btnBuscarCliente);
		
		JLabel lblApellido = new JLabel("Apellido");
		lblApellido.setBounds(10, 122, 78, 14);
		contentPane.add(lblApellido);
		
		txtApellido = new JTextField();
		txtApellido.setEditable(false);
		txtApellido.setColumns(10);
		txtApellido.setBounds(87, 119, 153, 20);
		contentPane.add(txtApellido);
		
		JLabel lblNombre = new JLabel("Nombre");
		lblNombre.setBounds(263, 122, 78, 14);
		contentPane.add(lblNombre);
		
		textField_2 = new JTextField();
		textField_2.setEditable(false);
		textField_2.setColumns(10);
		textField_2.setBounds(318, 119, 153, 20);
		contentPane.add(textField_2);
		
		JLabel lblEstado = new JLabel("Estado");
		lblEstado.setBounds(10, 48, 46, 14);
		contentPane.add(lblEstado);
		
		txtEstadoPedido = new JTextField();
		txtEstadoPedido.setEditable(false);
		txtEstadoPedido.setColumns(10);
		txtEstadoPedido.setBounds(87, 45, 86, 20);
		contentPane.add(txtEstadoPedido);
		
		JSeparator separator = new JSeparator();
		separator.setBounds(10, 76, 461, 7);
		contentPane.add(separator);
		
		JLabel lblRazonSocial = new JLabel("Razon Social");
		lblRazonSocial.setBounds(10, 150, 78, 14);
		contentPane.add(lblRazonSocial);
		
		textField_3 = new JTextField();
		textField_3.setEditable(false);
		textField_3.setColumns(10);
		textField_3.setBounds(87, 147, 384, 20);
		contentPane.add(textField_3);
		
		JLabel lblDomicilio = new JLabel("Domicilio");
		lblDomicilio.setBounds(10, 179, 78, 14);
		contentPane.add(lblDomicilio);
		
		txtDomicilio = new JTextField();
		txtDomicilio.setEditable(false);
		txtDomicilio.setColumns(10);
		txtDomicilio.setBounds(87, 176, 384, 20);
		contentPane.add(txtDomicilio);
		
		txtFechaPedido = new JTextField();
		txtFechaPedido.setBounds(87, 229, 86, 20);
		contentPane.add(txtFechaPedido);
		txtFechaPedido.setColumns(10);
		
		txtDesde = new JTextField();
		txtDesde.setColumns(10);
		txtDesde.setBounds(231, 229, 86, 20);
		contentPane.add(txtDesde);
		
		txtHasta = new JTextField();
		txtHasta.setColumns(10);
		txtHasta.setBounds(385, 229, 86, 20);
		contentPane.add(txtHasta);
		
		JComboBox cmbViaPago = new JComboBox();
		cmbViaPago.setBounds(87, 257, 139, 20);
		contentPane.add(cmbViaPago);
		
		JLabel lblFecha = new JLabel("Fecha");
		lblFecha.setBounds(10, 232, 46, 14);
		contentPane.add(lblFecha);
		
		JLabel lblDesde = new JLabel("Desde");
		lblDesde.setBounds(180, 232, 46, 14);
		contentPane.add(lblDesde);
		
		JLabel lblHasta = new JLabel("Hasta");
		lblHasta.setBounds(339, 232, 46, 14);
		contentPane.add(lblHasta);
		
		JLabel lblViaPago = new JLabel("Via de Pago");
		lblViaPago.setBounds(10, 260, 63, 14);
		contentPane.add(lblViaPago);
		
		JSeparator separator_1 = new JSeparator();
		separator_1.setBounds(10, 214, 461, 7);
		contentPane.add(separator_1);
		
		txtDominio = new JTextField();
		txtDominio.setBounds(87, 302, 86, 20);
		contentPane.add(txtDominio);
		txtDominio.setColumns(10);
		
		JLabel lblDominio = new JLabel("Dominio");
		lblDominio.setBounds(10, 305, 46, 14);
		contentPane.add(lblDominio);
		
		JTabbedPane tabbedPane = new JTabbedPane(JTabbedPane.TOP);
		tabbedPane.setBounds(10, 337, 461, 165);
		contentPane.add(tabbedPane);
		
		JPanel panelDetallePedido = new JPanel();
		tabbedPane.addTab("Detalle Pedido", null, panelDetallePedido, null);
		panelDetallePedido.setLayout(null);
		
		table = new JTable();
		table.setBounds(10, 11, 424, 104);
		panelDetallePedido.add(table);
		
		JPanel panelDetalleFactura = new JPanel();
		tabbedPane.addTab("Detalle Factura", null, panelDetalleFactura, null);
		panelDetalleFactura.setLayout(null);
		
		JLabel lblNumeroComprobante = new JLabel("N\u00FAmero Comprobante");
		lblNumeroComprobante.setBounds(10, 14, 114, 14);
		panelDetalleFactura.add(lblNumeroComprobante);
		
		txtNumeroComprobante = new JTextField();
		txtNumeroComprobante.setBounds(121, 11, 130, 20);
		panelDetalleFactura.add(txtNumeroComprobante);
		txtNumeroComprobante.setColumns(10);
		
		txtImporteTotal = new JTextField();
		txtImporteTotal.setBounds(121, 42, 130, 20);
		panelDetalleFactura.add(txtImporteTotal);
		txtImporteTotal.setColumns(10);
		
		JLabel lblImporteTotal = new JLabel("Importe Total");
		lblImporteTotal.setBounds(10, 45, 114, 14);
		panelDetalleFactura.add(lblImporteTotal);
		
		JSeparator separator_2 = new JSeparator();
		separator_2.setBounds(10, 288, 461, 7);
		contentPane.add(separator_2);
		
		txtFechaHoraEntrega = new JTextField();
		txtFechaHoraEntrega.setEditable(false);
		txtFechaHoraEntrega.setBounds(305, 18, 139, 20);
		contentPane.add(txtFechaHoraEntrega);
		txtFechaHoraEntrega.setColumns(10);
		
		JLabel lblFechahoraEntrega = new JLabel("Fecha/Hora Ult. Estado");
		lblFechahoraEntrega.setBounds(183, 21, 112, 14);
		contentPane.add(lblFechahoraEntrega);
		
		JButton btnGuardar = new JButton("Guardar");
		btnGuardar.setBounds(277, 513, 89, 23);
		contentPane.add(btnGuardar);
		
		JButton btnCancelar = new JButton("Cancelar");
		btnCancelar.setBounds(382, 513, 89, 23);
		contentPane.add(btnCancelar);
		
		JButton btnAsignar = new JButton("Asignar M\u00F3vil");
		btnAsignar.setBounds(193, 301, 124, 23);
		contentPane.add(btnAsignar);
	}
}

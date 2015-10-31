package com.app.view;

import java.awt.BorderLayout;
import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
import javax.swing.JLabel;
import javax.swing.JComboBox;
import javax.swing.JTextField;
import javax.swing.JSeparator;
import javax.swing.JTable;
import javax.swing.JTabbedPane;
import javax.swing.JButton;
import javax.swing.JCheckBox;

public class FrmCargaMovil extends JFrame {

	private JPanel contentPane;
	private JTextField txtOrdenProceso;
	private JTextField txtCMS;
	private JTextField txtLegajoChofer;
	private JTextField txtDesde;
	private JTextField txtHasta;
	private JTable table;
	private JTable table_1;

	private static FrmCargaMovil instancia;
	
	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					FrmCargaMovil frame = new FrmCargaMovil();
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
	public FrmCargaMovil() {
		setTitle("Carga M\u00F3vil");
		setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
		setBounds(100, 100, 540, 412);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		setContentPane(contentPane);
		contentPane.setLayout(null);
		
		JLabel lblSucursal = new JLabel("Sucursal");
		lblSucursal.setBounds(10, 14, 46, 14);
		contentPane.add(lblSucursal);
		
		JComboBox comboBox = new JComboBox();
		comboBox.setBounds(66, 11, 107, 20);
		contentPane.add(comboBox);
		
		txtOrdenProceso = new JTextField();
		txtOrdenProceso.setBounds(98, 63, 86, 20);
		contentPane.add(txtOrdenProceso);
		txtOrdenProceso.setColumns(10);
		
		txtCMS = new JTextField();
		txtCMS.setColumns(10);
		txtCMS.setBounds(230, 63, 86, 20);
		contentPane.add(txtCMS);
		
		txtLegajoChofer = new JTextField();
		txtLegajoChofer.setColumns(10);
		txtLegajoChofer.setBounds(98, 95, 86, 20);
		contentPane.add(txtLegajoChofer);
		
		JLabel lblApellidoNombre = new JLabel("Apellido, Nombre");
		lblApellidoNombre.setBounds(194, 98, 165, 14);
		contentPane.add(lblApellidoNombre);
		
		JLabel lblLegajo = new JLabel("Legajo");
		lblLegajo.setBounds(46, 98, 39, 14);
		contentPane.add(lblLegajo);
		
		JLabel lblOrdenProceso = new JLabel("Orden Proceso");
		lblOrdenProceso.setBounds(10, 66, 78, 14);
		contentPane.add(lblOrdenProceso);
		
		JLabel lblCms = new JLabel("CMS");
		lblCms.setBounds(197, 66, 46, 14);
		contentPane.add(lblCms);
		
		JComboBox comboBox_1 = new JComboBox();
		comboBox_1.setBounds(252, 11, 107, 20);
		contentPane.add(comboBox_1);
		
		JLabel lblDominio = new JLabel("Dominio");
		lblDominio.setBounds(197, 14, 46, 14);
		contentPane.add(lblDominio);
		
		JSeparator separator = new JSeparator();
		separator.setBounds(10, 39, 496, 11);
		contentPane.add(separator);
		
		JTabbedPane tabbedPane = new JTabbedPane(JTabbedPane.TOP);
		tabbedPane.setBounds(10, 126, 496, 206);
		contentPane.add(tabbedPane);
		
		JPanel panelProductos = new JPanel();
		tabbedPane.addTab("Productos", null, panelProductos, null);
		panelProductos.setLayout(null);
		
		table_1 = new JTable();
		table_1.setBounds(10, 11, 451, 152);
		panelProductos.add(table_1);
		
		JPanel panelHorarios = new JPanel();
		tabbedPane.addTab("Horarios", null, panelHorarios, null);
		panelHorarios.setLayout(null);
		
		JLabel lblDesde = new JLabel("Desde");
		lblDesde.setBounds(10, 11, 46, 14);
		panelHorarios.add(lblDesde);
		
		JLabel lblHasta = new JLabel("Hasta");
		lblHasta.setBounds(145, 11, 46, 14);
		panelHorarios.add(lblHasta);
		
		txtDesde = new JTextField();
		txtDesde.setBounds(49, 8, 86, 20);
		panelHorarios.add(txtDesde);
		txtDesde.setColumns(10);
		
		txtHasta = new JTextField();
		txtHasta.setColumns(10);
		txtHasta.setBounds(186, 8, 86, 20);
		panelHorarios.add(txtHasta);
		
		JButton btnAgregar = new JButton("Agregar");
		btnAgregar.setIcon(null);
		btnAgregar.setBounds(282, 7, 71, 23);
		panelHorarios.add(btnAgregar);
		
		table = new JTable();
		table.setBounds(10, 36, 262, 127);
		panelHorarios.add(table);
		
		JComboBox cmbReferencia = new JComboBox();
		cmbReferencia.setBounds(404, 63, 102, 20);
		contentPane.add(cmbReferencia);
		
		JCheckBox chckbxActiva = new JCheckBox("Activa");
		chckbxActiva.setSelected(true);
		chckbxActiva.setBounds(379, 10, 97, 23);
		contentPane.add(chckbxActiva);
		
		JLabel lblReferencia = new JLabel("Referencia");
		lblReferencia.setBounds(338, 66, 67, 14);
		contentPane.add(lblReferencia);
		
		JButton btnGuardar = new JButton("Guardar");
		btnGuardar.setBounds(312, 343, 89, 23);
		contentPane.add(btnGuardar);
		
		JButton btnCancelar = new JButton("Cancelar");
		btnCancelar.setBounds(415, 343, 89, 23);
		contentPane.add(btnCancelar);
	}

	public static FrmCargaMovil getInstancia() {
		if (instancia==null){
			instancia = new FrmCargaMovil();
		}
		return instancia;
	}
}

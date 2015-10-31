package com.app.view;

import java.awt.EventQueue;

import javax.swing.JButton;
import javax.swing.JComboBox;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JTextField;
import javax.swing.border.EmptyBorder;

public class FrmAbrirJornada extends JFrame {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private JPanel contentPane;
	private JTextField txtFechaHora;
	private JTextField txtIdJornada;
	private JTextField textField;
	private JTextField textField_1;

	private static FrmAbrirJornada instancia;
	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					FrmAbrirJornada frame = new FrmAbrirJornada();
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
	public FrmAbrirJornada() {
		setResizable(false);
		setTitle("Abrir Jornada");
		setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
		setBounds(100, 100, 450, 235);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		setContentPane(contentPane);
		contentPane.setLayout(null);
		
		JLabel lblFechahora = new JLabel("Fecha/Hora");
		lblFechahora.setBounds(221, 17, 84, 14);
		contentPane.add(lblFechahora);
		
		txtFechaHora = new JTextField();
		txtFechaHora.setEditable(false);
		txtFechaHora.setBounds(285, 14, 120, 20);
		contentPane.add(txtFechaHora);
		txtFechaHora.setColumns(10);
		
		JComboBox comboBox = new JComboBox();
		comboBox.setBounds(74, 50, 120, 20);
		contentPane.add(comboBox);
		
		JLabel lblSucursal = new JLabel("Sucursal");
		lblSucursal.setBounds(10, 53, 84, 14);
		contentPane.add(lblSucursal);
		
		JLabel lblIdJornada = new JLabel("Id. Jornada");
		lblIdJornada.setBounds(10, 17, 84, 14);
		contentPane.add(lblIdJornada);
		
		txtIdJornada = new JTextField();
		txtIdJornada.setEditable(false);
		txtIdJornada.setColumns(10);
		txtIdJornada.setBounds(74, 14, 120, 20);
		contentPane.add(txtIdJornada);
		
		JButton btnGuardar = new JButton("Guardar");
		btnGuardar.setBounds(236, 158, 89, 23);
		contentPane.add(btnGuardar);
		
		JButton btnCancelar = new JButton("Cancelar");
		btnCancelar.setBounds(335, 158, 89, 23);
		contentPane.add(btnCancelar);
		
		JLabel lblDesde = new JLabel("Desde");
		lblDesde.setBounds(10, 84, 84, 14);
		contentPane.add(lblDesde);
		
		textField = new JTextField();
		textField.setColumns(10);
		textField.setBounds(74, 81, 120, 20);
		contentPane.add(textField);
		
		JLabel lblHasta = new JLabel("Hasta");
		lblHasta.setBounds(221, 87, 84, 14);
		contentPane.add(lblHasta);
		
		textField_1 = new JTextField();
		textField_1.setColumns(10);
		textField_1.setBounds(285, 84, 120, 20);
		contentPane.add(textField_1);
		
		JLabel lblMinTurno = new JLabel("Min. Turno");
		lblMinTurno.setBounds(10, 117, 84, 14);
		contentPane.add(lblMinTurno);
		
		JComboBox comboBox_1 = new JComboBox();
		comboBox_1.setBounds(74, 114, 39, 20);
		contentPane.add(comboBox_1);
	}

	public static FrmAbrirJornada getInstancia() {
		if (instancia == null){
			instancia= new FrmAbrirJornada();
		}
		return instancia;
	}

}

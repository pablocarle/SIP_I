package com.app.view;

import java.awt.EventQueue;

import javax.swing.JButton;
import javax.swing.JComboBox;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JTable;
import javax.swing.border.EmptyBorder;

public class FrmCerrarJornada extends JFrame {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private JPanel contentPane;
	private JTable table;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					FrmCerrarJornada frame = new FrmCerrarJornada();
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
	public FrmCerrarJornada() {
		setTitle("Cerrar Jornada");
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 439, 300);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		setContentPane(contentPane);
		contentPane.setLayout(null);
		
		JButton btnCerrar = new JButton("Cerrar");
		btnCerrar.setBounds(220, 216, 89, 23);
		contentPane.add(btnCerrar);
		
		JButton btnCancelar = new JButton("Cancelar");
		btnCancelar.setBounds(323, 216, 89, 23);
		contentPane.add(btnCancelar);
		
		JComboBox cmbSucursal = new JComboBox();
		cmbSucursal.setBounds(79, 11, 108, 20);
		contentPane.add(cmbSucursal);
		
		JLabel lblSucursal = new JLabel("Sucursal");
		lblSucursal.setBounds(10, 14, 82, 14);
		contentPane.add(lblSucursal);
		
		table = new JTable();
		table.setBounds(10, 52, 402, 153);
		contentPane.add(table);
	}

}

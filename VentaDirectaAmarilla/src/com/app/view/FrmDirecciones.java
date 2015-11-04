package com.app.view;

import java.awt.EventQueue;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JTable;
import javax.swing.border.EmptyBorder;

public class FrmDirecciones extends JFrame {

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
					FrmDirecciones frame = new FrmDirecciones();
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
	public FrmDirecciones() {
		setTitle("Direcciones");
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 450, 300);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		setContentPane(contentPane);
		contentPane.setLayout(null);
		
		JButton btnEstablecer = new JButton("Establecer");
		btnEstablecer.setBounds(233, 228, 89, 23);
		contentPane.add(btnEstablecer);
		
		JButton btnCancelar = new JButton("Cancelar");
		btnCancelar.setBounds(332, 228, 89, 23);
		contentPane.add(btnCancelar);
		
		JLabel lblParaEstablecerUna = new JLabel("Para establecer una direcci\u00F3n de entrega, seleccione la direcci\u00F3n y pulse establecer.");
		lblParaEstablecerUna.setBounds(10, 11, 403, 14);
		contentPane.add(lblParaEstablecerUna);
		
		table = new JTable();
		table.setBounds(10, 36, 403, 170);
		contentPane.add(table);
	}

}

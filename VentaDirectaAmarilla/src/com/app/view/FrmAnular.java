package com.app.view;

import java.awt.EventQueue;

import javax.swing.JButton;
import javax.swing.JComboBox;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JTextArea;
import javax.swing.JTextField;
import javax.swing.SwingConstants;
import javax.swing.border.EmptyBorder;

public class FrmAnular extends JFrame {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private JPanel contentPane;
	private JLabel lblObservacion;
	private JButton btnAceptar;
	private JButton btnCancelar;
	private JLabel lblIdpedido;
	private JTextField textField;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					FrmAnular frame = new FrmAnular();
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
	public FrmAnular() {
		setTitle("Anular Pedido");
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 476, 289);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		setContentPane(contentPane);
		contentPane.setLayout(null);
		
		JLabel lblMotivo = new JLabel("Motivo");
		lblMotivo.setHorizontalAlignment(SwingConstants.RIGHT);
		lblMotivo.setBounds(48, 68, 62, 14);
		contentPane.add(lblMotivo);
		
		JComboBox<String> comboBox = new JComboBox<String>();
		comboBox.setToolTipText("Indique el motivo de anulaci\u00F3n.");
		comboBox.setBounds(120, 61, 295, 26);
		contentPane.add(comboBox);
		
		lblObservacion = new JLabel("Observaci\u00F3n");
		lblObservacion.setHorizontalAlignment(SwingConstants.RIGHT);
		lblObservacion.setBounds(21, 101, 89, 14);
		contentPane.add(lblObservacion);
		
		btnAceptar = new JButton("Aceptar");
		btnAceptar.setBounds(194, 212, 89, 23);
		contentPane.add(btnAceptar);
		
		btnCancelar = new JButton("Cancelar");
		btnCancelar.setBounds(296, 212, 89, 23);
		contentPane.add(btnCancelar);
		
		lblIdpedido = new JLabel("IdPedido");
		lblIdpedido.setHorizontalAlignment(SwingConstants.RIGHT);
		lblIdpedido.setBounds(38, 32, 72, 14);
		contentPane.add(lblIdpedido);
		
		textField = new JTextField();
		textField.setEditable(false);
		textField.setBounds(121, 25, 72, 26);
		contentPane.add(textField);
		textField.setColumns(10);
		
		JTextArea textArea = new JTextArea();
		textArea.setBounds(120, 99, 295, 88);
		contentPane.add(textArea);
	}
}

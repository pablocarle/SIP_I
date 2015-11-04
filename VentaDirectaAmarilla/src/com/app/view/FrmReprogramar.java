package com.app.view;

import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
import javax.swing.JLabel;
import javax.swing.JTextField;
import javax.swing.border.LineBorder;
import java.awt.Color;
import javax.swing.JButton;

public class FrmReprogramar extends JFrame {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private JPanel contentPane;
	private JTextField txtIdPedido;
	private JTextField txtFechaHora;
	private JTextField txtDesde;
	private JTextField txtHasta;
	private JTextField txtFechaProxEntrega;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					FrmReprogramar frame = new FrmReprogramar();
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
	public FrmReprogramar() {
		setTitle("Reprogramar Pedido");
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 331, 209);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		setContentPane(contentPane);
		contentPane.setLayout(null);
		
		JLabel lblIdpedido = new JLabel("IdPedido");
		lblIdpedido.setBounds(69, 11, 42, 14);
		contentPane.add(lblIdpedido);
		
		JLabel lblFechahora = new JLabel("Fecha/Hora");
		lblFechahora.setBounds(55, 36, 56, 14);
		contentPane.add(lblFechahora);
		
		txtIdPedido = new JTextField();
		txtIdPedido.setEditable(false);
		txtIdPedido.setBounds(121, 8, 80, 20);
		contentPane.add(txtIdPedido);
		txtIdPedido.setColumns(10);
		
		txtFechaHora = new JTextField();
		txtFechaHora.setEditable(false);
		txtFechaHora.setColumns(10);
		txtFechaHora.setBounds(121, 33, 122, 20);
		contentPane.add(txtFechaHora);
		
		JLabel lblDesde = new JLabel("Desde");
		lblDesde.setBounds(81, 88, 30, 14);
		contentPane.add(lblDesde);
		
		JLabel lblHasta = new JLabel("Hasta");
		lblHasta.setBounds(193, 88, 28, 14);
		contentPane.add(lblHasta);
		
		txtDesde = new JTextField();
		txtDesde.setBounds(121, 85, 62, 20);
		contentPane.add(txtDesde);
		txtDesde.setColumns(10);
		
		txtHasta = new JTextField();
		txtHasta.setColumns(10);
		txtHasta.setBounds(227, 85, 62, 20);
		contentPane.add(txtHasta);
		
		JLabel lblFechaProxEntrega = new JLabel("Fecha Pr\u00F3x. Entrega");
		lblFechaProxEntrega.setBounds(12, 60, 99, 14);
		contentPane.add(lblFechaProxEntrega);
		
		txtFechaProxEntrega = new JTextField();
		txtFechaProxEntrega.setColumns(10);
		txtFechaProxEntrega.setBounds(121, 57, 62, 20);
		contentPane.add(txtFechaProxEntrega);
		
		JButton btnAceptar = new JButton("Aceptar");
		btnAceptar.setBounds(94, 129, 89, 23);
		contentPane.add(btnAceptar);
		
		JButton btnCancelar = new JButton("Cancelar");
		btnCancelar.setBounds(200, 129, 89, 23);
		contentPane.add(btnCancelar);

	
	}
}

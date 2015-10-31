package com.app.view;

import java.awt.EventQueue;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.JButton;
import javax.swing.JComboBox;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JTable;
import javax.swing.border.EmptyBorder;

public class FrmPedidos extends JFrame {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private JPanel contentPane;
	private JTable table;
	private static FrmPedidos instancia;
	
	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					FrmPedidos frame = new FrmPedidos();
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
	public FrmPedidos() {
		setResizable(false);
		setTitle("Pedidos");
		setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
		setBounds(100, 100, 593, 405);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		setContentPane(contentPane);
		contentPane.setLayout(null);
		
		JComboBox cmbSucursal = new JComboBox();
		cmbSucursal.setBounds(66, 11, 125, 20);
		contentPane.add(cmbSucursal);
		
		JLabel lblSucursal = new JLabel("Sucursal");
		lblSucursal.setBounds(10, 14, 79, 14);
		contentPane.add(lblSucursal);
		
		table = new JTable();
		table.setBounds(10, 48, 559, 257);
		contentPane.add(table);
		
		JButton btnNuevoPedido = new JButton("Nuevo Pedido");
		btnNuevoPedido.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent arg0) {
				FrmAltaPedido frmAltaPedido = FrmAltaPedido.getInstancia();
				frmAltaPedido.setVisible(true);
			}
		});
		btnNuevoPedido.setBounds(10, 327, 136, 23);
		contentPane.add(btnNuevoPedido);
		
		JButton btnReprogramar = new JButton("Reprogramar");
		btnReprogramar.setBounds(156, 327, 113, 23);
		contentPane.add(btnReprogramar);
		
		JButton btnAnular = new JButton("Anular");
		btnAnular.setBounds(279, 327, 89, 23);
		contentPane.add(btnAnular);
	}

	public static FrmPedidos getInstancia() {
		if (instancia==null){
			instancia= new FrmPedidos();
		}
		return instancia;
	}

}

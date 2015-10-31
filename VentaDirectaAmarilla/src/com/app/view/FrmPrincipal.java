package com.app.view;

import java.awt.EventQueue;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.JFrame;
import javax.swing.JMenu;
import javax.swing.JMenuBar;
import javax.swing.JMenuItem;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;

public class FrmPrincipal extends JFrame {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private JPanel contentPane;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					FrmPrincipal frame = new FrmPrincipal();
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
	public FrmPrincipal() {
		setTitle("Sistema de Venta Directa");
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 450, 300);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		setContentPane(contentPane);
		contentPane.setLayout(null);
		
		JMenuBar menuBar = new JMenuBar();
		menuBar.setBounds(0, 0, 434, 21);
		contentPane.add(menuBar);
		
		JMenu mnJornada = new JMenu("Jornada");
		menuBar.add(mnJornada);
		
		JMenuItem mntmAbrirJornada = new JMenuItem("Abrir Jornada");
		mntmAbrirJornada.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				FrmAbrirJornada frmAbrirJornada = FrmAbrirJornada.getInstancia();
				frmAbrirJornada.setVisible(true);
			}
		});
		mnJornada.add(mntmAbrirJornada);
		
		JMenuItem mntmCerrarJornada = new JMenuItem("Cerrar Jornada");
		mnJornada.add(mntmCerrarJornada);
		
		JMenu mnClientes = new JMenu("Clientes");
		menuBar.add(mnClientes);
		
		JMenuItem mntmAltaCliente = new JMenuItem("Alta Cliente");
		mntmAltaCliente.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				FrmAltaCliente frmAltaCliente = FrmAltaCliente.getInstancia();
				frmAltaCliente.setVisible(true);
			}
		});
		mnClientes.add(mntmAltaCliente);
		
		JMenuItem mntmBuscarCliente = new JMenuItem("Buscar Cliente");
		mntmBuscarCliente.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				FrmBuscarCliente frmBuscarCliente = FrmBuscarCliente.getInstancia();
				frmBuscarCliente.setVisible(true);
			}
		});
		mnClientes.add(mntmBuscarCliente);
		
		JMenu mnMoviles = new JMenu("M\u00F3viles");
		menuBar.add(mnMoviles);
		
		JMenuItem mntmCargarMviles = new JMenuItem("Cargar M\u00F3viles");
		mntmCargarMviles.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				FrmCargaMovil frmCargaMovil = FrmCargaMovil.getInstancia();
				frmCargaMovil.setVisible(true);
			}
		});
		mnMoviles.add(mntmCargarMviles);
		
		JMenu mnPedidos = new JMenu("Pedidos");
		menuBar.add(mnPedidos);
		
		JMenuItem mntmVisualizarPedidos = new JMenuItem("Visualizar Pedidos");
		mntmVisualizarPedidos.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				FrmPedidos frmPedidos = FrmPedidos.getInstancia();
				frmPedidos.setVisible(true);
			}
		});
		mnPedidos.add(mntmVisualizarPedidos);
	}
}

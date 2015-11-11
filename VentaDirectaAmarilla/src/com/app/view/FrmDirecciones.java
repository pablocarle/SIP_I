package com.app.view;

import java.awt.EventQueue;
import java.util.List;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JList;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;

import com.app.controller.SistemaVentaDirecta;
import com.app.model.Direccion;

public class FrmDirecciones extends JFrame {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private JPanel contentPane;
	private JList<Direccion> direcciones;
	private int idCliente;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					FrmDirecciones frame = new FrmDirecciones(1);
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
	public FrmDirecciones(int idCliente) {
		super();
		this.idCliente = idCliente;
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
		
		direcciones = new JList<Direccion>();
		direcciones.setBounds(10, 36, 403, 170);
		contentPane.add(direcciones);
		
		cargarDatos();
	}

	private void cargarDatos() {
		List<Direccion> direcciones = SistemaVentaDirecta.getSistema().obtenerDirecciones(idCliente);
		direcciones.addAll(direcciones);
	}
}

package com.app.view;

import java.awt.EventQueue;
import java.util.List;

import javax.swing.JButton;
import javax.swing.JComboBox;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JList;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;

import com.app.controller.SistemaVentaDirecta;
import com.app.model.Jornada;
import com.app.model.Sucursal;

import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;

public class FrmCerrarJornada extends JFrame {

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
					FrmCerrarJornada frame = new FrmCerrarJornada();
					frame.setVisible(true);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
	}

	private JComboBox<Sucursal> cmbSucursal;
	private JList<Jornada> listJornadas;
	
	/**
	 * Create the frame.
	 */
	public FrmCerrarJornada() {
		setTitle("Cerrar Jornada");
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 431, 282);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		setContentPane(contentPane);
		contentPane.setLayout(null);
		
		JButton btnCerrar = new JButton("Cerrar");
		btnCerrar.setBounds(176, 216, 112, 23);
		contentPane.add(btnCerrar);
		
		JButton btnCancelar = new JButton("Cancelar");
		btnCancelar.setBounds(300, 216, 112, 23);
		contentPane.add(btnCancelar);
		
		cmbSucursal = new JComboBox<Sucursal>();
		cmbSucursal.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent arg0) {
				int selectedIndex = cmbSucursal.getSelectedIndex();
				if (selectedIndex >= 0) {
					Sucursal sucursal = (Sucursal) cmbSucursal.getSelectedItem();
					if (sucursal != null) {
						listJornadas.removeAll();
						try {
							Jornada jornada = SistemaVentaDirecta.getSistema().obtenerJornadaActiva(sucursal.getIdSucursal());
							listJornadas.setListData(new Jornada[]{ jornada });
						} catch (Exception e) {
							JOptionPane.showMessageDialog(null, e.getMessage());
							System.err.println(e.getMessage());
							e.printStackTrace();
						}
					} else {
						System.err.println("error no hay susursal");
					}
				}
			}
		});
		cmbSucursal.setBounds(103, 11, 108, 20);
		contentPane.add(cmbSucursal);
		
		JLabel lblSucursal = new JLabel("Sucursal");
		lblSucursal.setBounds(10, 14, 82, 14);
		contentPane.add(lblSucursal);
		
		listJornadas = new JList<Jornada>();
		listJornadas.setBounds(12, 40, 400, 164);
		contentPane.add(listJornadas);
		
		initData();
	}

	private void initData() {
		List<Sucursal> sucursales = SistemaVentaDirecta.getSistema().obtenerSucursales();
		for (Sucursal sucursal : sucursales) {
			cmbSucursal.addItem(sucursal);
		}
	}
}

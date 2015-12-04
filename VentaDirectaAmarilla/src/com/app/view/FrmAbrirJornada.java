package com.app.view;

import static javax.swing.JOptionPane.showMessageDialog;

import java.awt.EventQueue;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.util.List;

import javax.swing.JButton;
import javax.swing.JComboBox;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JTextField;
import javax.swing.border.EmptyBorder;

import com.app.controller.SistemaVentaDirecta;
import com.app.model.Sucursal;

public class FrmAbrirJornada extends JFrame {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private JPanel contentPane;
	private JTextField txtFechaHora;
	private JTextField txtIdJornada;
	private JTextField txtDesde;
	private JTextField txtHasta;

	private JComboBox<Sucursal> cmbSucursales;
	private JComboBox<String> cmbMinTurno;
	
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
		setBounds(100, 100, 495, 232);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		setContentPane(contentPane);
		contentPane.setLayout(null);
		
		JLabel lblFechahora = new JLabel("Fecha/Hora");
		lblFechahora.setBounds(259, 17, 84, 14);
		contentPane.add(lblFechahora);
		
		txtFechaHora = new JTextField();
		txtFechaHora.setEditable(false);
		txtFechaHora.setBounds(361, 15, 120, 20);
		contentPane.add(txtFechaHora);
		txtFechaHora.setColumns(10);
		
		cmbSucursales = new JComboBox<Sucursal>();
		cmbSucursales.setBounds(131, 50, 120, 20);
		contentPane.add(cmbSucursales);
		
		JLabel lblSucursal = new JLabel("Sucursal");
		lblSucursal.setBounds(10, 53, 84, 14);
		contentPane.add(lblSucursal);
		
		JLabel lblIdJornada = new JLabel("Id. Jornada");
		lblIdJornada.setBounds(10, 17, 93, 14);
		contentPane.add(lblIdJornada);
		
		txtIdJornada = new JTextField();
		txtIdJornada.setEditable(false);
		txtIdJornada.setColumns(10);
		txtIdJornada.setBounds(121, 15, 120, 20);
		contentPane.add(txtIdJornada);
		
		JButton btnGuardar = new JButton("Guardar");
		btnGuardar.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				StringBuilder str = new StringBuilder();
				if (esFormValido(str)) {
					try {
						
					} catch (Exception e1) {
						showMessageDialog(null, e1.getMessage());
					}
				} else {
					showMessageDialog(null, str);
				}
			}
		});
		btnGuardar.setBounds(189, 165, 140, 23);
		contentPane.add(btnGuardar);
		
		JButton btnCancelar = new JButton("Cancelar");
		btnCancelar.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent arg0) {
				dispose();
			}
		});
		btnCancelar.setBounds(341, 165, 140, 23);
		contentPane.add(btnCancelar);
		
		JLabel lblDesde = new JLabel("Desde");
		lblDesde.setBounds(10, 84, 84, 14);
		contentPane.add(lblDesde);
		
		txtDesde = new JTextField();
		txtDesde.setColumns(10);
		txtDesde.setBounds(74, 81, 120, 20);
		contentPane.add(txtDesde);
		
		JLabel lblHasta = new JLabel("Hasta");
		lblHasta.setBounds(221, 87, 84, 14);
		contentPane.add(lblHasta);
		
		txtHasta = new JTextField();
		txtHasta.setColumns(10);
		txtHasta.setBounds(285, 84, 120, 20);
		contentPane.add(txtHasta);
		
		JLabel lblMinTurno = new JLabel("Min. Turno");
		lblMinTurno.setBounds(10, 117, 84, 14);
		contentPane.add(lblMinTurno);
		
		cmbMinTurno = new JComboBox<String>();
		cmbMinTurno.setBounds(121, 114, 73, 20);
		contentPane.add(cmbMinTurno);
		
		initData();
	}

	private void initData() {
		List<Sucursal> sucursales = SistemaVentaDirecta.getSistema().obtenerSucursales();
		for (Sucursal sucursal : sucursales) {
			cmbSucursales.addItem(sucursal);
		}
		cmbMinTurno.addItem("5");
		cmbMinTurno.addItem("10");
		cmbMinTurno.addItem("15");
		cmbMinTurno.addItem("20");
		cmbMinTurno.addItem("25");
		cmbMinTurno.addItem("30");
	}

	protected boolean esFormValido(StringBuilder str) {
		str.delete(0, str.length());
		boolean ret = true;
		if (cmbSucursales.getSelectedIndex() < 0) {
			str.append("No se selecciono sucursal");
			ret = false;
		}
		if (cmbMinTurno.getSelectedIndex() < 0) {
			str.append("No se selecciono minutos de turno");
			ret = false;
		}
		try {
			Integer.parseInt(txtDesde.getText());
			Integer.parseInt(txtHasta.getText());
		} catch (NumberFormatException e) {
			ret = false;
			str.append(e.getMessage());
		}
		return ret;
	}
}

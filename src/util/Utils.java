package util;

import java.text.DecimalFormat;

public class Utils {
	public static String format(double a) {
		DecimalFormat format = new DecimalFormat();
		format.setMaximumFractionDigits(3);
		return format.format(a);
	}
	public static String format(int a) {
		DecimalFormat format = new DecimalFormat();
		format.setMaximumFractionDigits(3);
		return format.format(a);
	}

}

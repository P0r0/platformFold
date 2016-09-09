package com.sdk.migame.payment.utiles;

import android.text.InputFilter;
import android.text.InputType;
import android.text.method.DigitsKeyListener;
import android.widget.EditText;

public class ZEditFilter
{
	public static void setDigits( EditText et, int maxNum, boolean bDecimal )
	{
		InputFilter[] filters = { new InputFilter.LengthFilter( maxNum ) };
		et.setFilters( filters );

		et.setKeyListener( new DigitsKeyListener( false, bDecimal ) );
	}

	public static void setDigits( EditText et, boolean bDecimal )
	{
		InputFilter[] filters = { new InputFilter.LengthFilter( 5 ) };
		et.setFilters( filters );

		et.setKeyListener( new DigitsKeyListener( false, bDecimal ) );
		// et.setKeyListener(new NumberKeyListener(){
		// @Override
		// protected char[] getAcceptedChars() {
		// return new char[]{'1','2','3','4','5','6','7','8','9','0','.'};
		// }
		// @Override
		// public int getInputType() {
		// return 0;
		// }
		// });
	}

	public static void setDigitsThen5( EditText et, boolean bDecimal )
	{
		InputFilter[] filters = { new InputFilter.LengthFilter( 10 ) };
		et.setFilters( filters );

		et.setKeyListener( new DigitsKeyListener( false, bDecimal ) );
	}

	public static void setDigitsThen15( EditText et, boolean bDecimal )
	{
		InputFilter[] filters = { new InputFilter.LengthFilter( 15 ) };
		et.setFilters( filters );

		et.setKeyListener( new DigitsKeyListener( false, bDecimal ) );
	}

	public static void setDigitsThen20( EditText et, boolean bDecimal )
	{
		InputFilter[] filters = { new InputFilter.LengthFilter( 20 ) };
		et.setFilters( filters );

		et.setKeyListener( new DigitsKeyListener( false, bDecimal ) );
	}

	public static void setIpPhoneNum( EditText et )
	{
		InputFilter[] filters = { new InputFilter.LengthFilter( 5 ) };
		et.setFilters( filters );

		et.setInputType( InputType.TYPE_CLASS_PHONE );
	}

	public static void setPhoneNum( EditText et )
	{
		InputFilter[] filters = { new InputFilter.LengthFilter( 13 ) };
		et.setFilters( filters );

		et.setInputType( InputType.TYPE_CLASS_PHONE );
	}

	public static void setMaxLen( EditText et, int maxNum )
	{
		InputFilter[] filters = { new InputFilter.LengthFilter( maxNum ) };
		et.setFilters( filters );
	}

	public static void setCallPriceFilter( EditText et )
	{
		InputFilter[] filters = { new InputFilter.LengthFilter( 4 ) };
		et.setFilters( filters );

		et.setKeyListener( new DigitsKeyListener( false, true ) );
	}
}
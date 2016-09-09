package singlepay.example.paydemo;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import org.apache.http.NameValuePair;
import org.apache.http.message.BasicNameValuePair;
import org.json.JSONObject;

import singlepay.example.paydemo.network.NetworkRequestAgent;
import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.res.Configuration;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.SystemClock;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.AdapterView.OnItemLongClickListener;
import android.widget.BaseAdapter;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;

import com.bbk.payment.payment.OnVivoSinglePayResultListener;
import com.bbk.payment.util.Constants;
import com.example.paydemo.R;
import com.vivo.sdkplugin.aidl.VivoUnionManager;

public class TestActivity extends Activity implements OnItemClickListener,
		OnItemLongClickListener {
	static String TAG = "TestActivity";
	private ProgressDialog mProgress = null;
	private int index = 0;
	private Context mContext;
	ListView mproductListView = null;
	ProductListAdapter m_listViewAdapter = null;
	ArrayList<Products.ProductDetail> mproductlist;
	private VivoUnionManager mVivoUnionManager;
	private long lastClickTime = 0;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		Log.v(TAG, "onCreate");
		Log.d(TAG, "" + SystemClock.elapsedRealtime());
		setContentView(R.layout.remote_service_binding_s);
		mContext = this;
		mVivoUnionManager = new VivoUnionManager(mContext);
		mVivoUnionManager.initVivoSinglePayment(mContext,
				mOnVivoPayResultListener);
		// vivoPaymentManager=VivoPaymentManager.getInstance(this);
		// vivoPaymentManager.registeListener(mOnVivoPayResultListener);
		mVivoUnionManager.singlePaymentInit(mContext);
		initProductList();

	}

	void initProductList() {
		Products products = new Products();
		this.mproductlist = products.retrieveProductInfo();

		mproductListView = (ListView) findViewById(R.id.ProductListView);
		m_listViewAdapter = new ProductListAdapter(this, this.mproductlist);
		mproductListView.setAdapter(m_listViewAdapter);
		mproductListView.setOnItemClickListener(this);
		mproductListView.setOnItemLongClickListener(this);
	}

	public void onItemClick(AdapterView<?> arg0, View arg1, int arg2, long arg3) {
		Log.d(TAG, "onItemClick");
		if ((System.currentTimeMillis() - lastClickTime) < 1 * 1000) {
			Log.d(TAG, "click too fast , return");
			return;
		}
		lastClickTime = System.currentTimeMillis();
		try {
			index = arg2;
			SimpleDateFormat format = new SimpleDateFormat("yyyyMMddHHmmss");
			String orderNum = UUID.randomUUID().toString().replaceAll("-", "");
			NameValuePair[] nameValuePairs = new NameValuePair[11];
			Map<String, String> param_map = new HashMap<String, String>();
			param_map.put(Constant.PARAM_NOTIFYURL,
					"http://113.98.231.125:8051/vcoin/notifyStubAction");
			param_map.put(Constant.PARAM_ORDER_AMOUNT,
					mproductlist.get(arg2).price);
			param_map.put(Constant.PARAM_ORDER_DESC,
					mproductlist.get(arg2).body);
			param_map.put(Constant.PARAM_ORDER_TITLE,
					mproductlist.get(arg2).subject);
			param_map.put(Constant.PARAM_ORDER_TIME, format.format(new Date()));
			param_map.put(Constant.PARAM_STOREID, Constant.STORE_ID);
			param_map.put(Constant.PARAM_APP_ID, Constant.APP_ID);
			param_map.put(Constant.PARAM_STOREORDER, orderNum);
			param_map.put(Constant.PARAM_VERSION, "1.0");

			String signature = generateSignature(param_map);
			int i = 0;
			nameValuePairs[i++] = new BasicNameValuePair(
					Constant.PARAM_NOTIFYURL,
					"http://113.98.231.125:8051/vcoin/notifyStubAction");
			nameValuePairs[i++] = new BasicNameValuePair(
					Constant.PARAM_ORDER_AMOUNT, mproductlist.get(arg2).price);
			nameValuePairs[i++] = new BasicNameValuePair(
					Constant.PARAM_ORDER_DESC, mproductlist.get(arg2).body);
			nameValuePairs[i++] = new BasicNameValuePair(
					Constant.PARAM_ORDER_TITLE, mproductlist.get(arg2).subject);
			nameValuePairs[i++] = new BasicNameValuePair(
					Constant.PARAM_ORDER_TIME, format.format(new Date()));
			nameValuePairs[i++] = new BasicNameValuePair(
					Constant.PARAM_SIGNATURE, signature);
			nameValuePairs[i++] = new BasicNameValuePair(
					Constant.PARAM_SIGNMETHOD, "MD5");
			nameValuePairs[i++] = new BasicNameValuePair(
					Constant.PARAM_STOREID, Constant.STORE_ID);
			nameValuePairs[i++] = new BasicNameValuePair(Constant.PARAM_APP_ID,
					Constant.APP_ID);
			nameValuePairs[i++] = new BasicNameValuePair(
					Constant.PARAM_STOREORDER, orderNum);
			nameValuePairs[i++] = new BasicNameValuePair(
					Constant.PARAM_VERSION, "1.0");
			for (int j = 0; j < nameValuePairs.length; j++) {
				Log.e(TAG, "nameValuePairs" + j + "=" + nameValuePairs[j]);
			}
			boolean isNetworkValid = UtilTool.isNetworkAvailable(this);
			if (isNetworkValid) {
				InitialPayTask initialPayTask = new InitialPayTask();
				initialPayTask.execute(nameValuePairs);
			} else {
				showPayMessage(R.string.invalid_network);
			}

			gitBid();
		} catch (Exception ex) {
			Log.d("iniFIle", "files exception");
			ex.printStackTrace();
		}
	}

	public boolean onItemLongClick(AdapterView<?> arg0, View arg1, int arg2,
			long arg3) {
		return false;
	}

	private class Products {
		ArrayList<Products.ProductDetail> mproductlist = new ArrayList<Products.ProductDetail>();

		public ArrayList<Products.ProductDetail> retrieveProductInfo() {
			ProductDetail productDetail = null;

			productDetail = new ProductDetail();
			productDetail.subject = "商品";
			productDetail.body = "商品描述";
			productDetail.price = "单价";
			productDetail.resId = 30;
			mproductlist.add(productDetail);

			productDetail = new ProductDetail();
			productDetail.subject = "魅力香水_2";
			productDetail.body = "新年特惠 adidas 阿迪达斯走珠 香体止汗走珠 多种香型可选";
			productDetail.price = "0.01";
			productDetail.resId = 30;
			mproductlist.add(productDetail);

			productDetail = new ProductDetail();
			productDetail.subject = "珍珠项链_2";
			productDetail.body = "【2元包邮】韩版 韩国 流行饰品太阳花小巧雏菊 珍珠项链2M15";
			productDetail.price = "0.01";
			productDetail.resId = 30;
			mproductlist.add(productDetail);

			productDetail = new ProductDetail();
			productDetail.subject = "三星 原装移动硬盘_2";
			productDetail.body = "三星 原装移动硬盘 S2 320G 带加密 三星S2 韩国原装 全国联保";
			productDetail.price = "0.02";
			productDetail.resId = 30;
			mproductlist.add(productDetail);

			productDetail = new ProductDetail();
			productDetail.subject = "发箍发带_2";
			productDetail.body = "【肉来来】超热卖 百变小领巾 兔耳朵布艺发箍发带";
			productDetail.price = "0.05";
			productDetail.resId = 30;
			mproductlist.add(productDetail);

			productDetail = new ProductDetail();
			productDetail.subject = "台版N97I_2";
			productDetail.body = "台版N97I 有迷你版 双卡双待手机 挂QQ JAVA 炒股 来电归属地 同款比价 ";
			productDetail.price = "1.50";
			productDetail.resId = 30;
			mproductlist.add(productDetail);

			productDetail = new ProductDetail();
			productDetail.subject = "苹果手机_2";
			productDetail.body = "山寨国产红苹果手机 Hiphone I9 JAVA QQ后台 飞信 炒股 UC";
			productDetail.price = "1.20";
			productDetail.resId = 30;
			mproductlist.add(productDetail);

			productDetail = new ProductDetail();
			productDetail.subject = "蝴蝶结_2";
			productDetail.body = "【饰品实物拍摄】满30包邮 三层绸缎粉色 蝴蝶结公主发箍多色入";
			productDetail.price = "10.00";
			productDetail.resId = 30;
			mproductlist.add(productDetail);

			productDetail = new ProductDetail();
			productDetail.subject = "韩版雪纺_2";
			productDetail.body = "饰品批发价 韩版雪纺纱圆点布花朵 山茶玫瑰花 发圈胸针两用 6002";
			productDetail.price = "0.50";
			productDetail.resId = 30;
			mproductlist.add(productDetail);

			productDetail = new ProductDetail();
			productDetail.subject = "五皇纸箱_2";
			productDetail.body = "加固纸箱 会员包快递拍好去运费冲纸箱首个五皇";
			productDetail.price = "0.50";
			productDetail.resId = 30;
			mproductlist.add(productDetail);

			productDetail = new ProductDetail();
			productDetail.subject = "MF唱片_2";
			productDetail.body = "【正版】MF唱片 HIFI毒药4 毒药涅磐再造 海洛 因新4号HD天碟1CD";
			productDetail.price = "0.80";
			productDetail.resId = 30;
			mproductlist.add(productDetail);

			productDetail = new ProductDetail();
			productDetail.subject = "学习机_2";
			productDetail.body = "六人行老友记friends全10季英语学习机版 MP3版子精读笔记";
			productDetail.price = "0.40";
			productDetail.resId = 30;
			mproductlist.add(productDetail);

			productDetail = new ProductDetail();
			productDetail.subject = "联华卡_2";
			productDetail.body = "联华OK卡，特价供应联华卡，联华OK卡，积点卡982折 卡密或代充";
			productDetail.price = "0.45";
			productDetail.resId = 30;
			mproductlist.add(productDetail);

			productDetail = new ProductDetail();
			productDetail.subject = "粽子批发_2";
			productDetail.body = "嘉兴粽子批发团购真真老老之大肉粽";
			productDetail.price = "0.35";
			productDetail.resId = 30;
			mproductlist.add(productDetail);

			productDetail = new ProductDetail();
			productDetail.subject = "话费充值_2";
			productDetail.body = "【四钻信誉】北京移动30元 电脑全自动充值 1到10分钟内到账";
			productDetail.price = "0.45";
			productDetail.resId = 30;
			mproductlist.add(productDetail);

			productDetail = new ProductDetail();
			productDetail.subject = "短袖T恤_2";
			productDetail.body = "爱马仕男装短袖T恤2010新款时尚夏装韩版男士T恤正品原单圆领修身";
			productDetail.price = "0.50";
			productDetail.resId = 30;
			mproductlist.add(productDetail);

			productDetail = new ProductDetail();
			productDetail.subject = "田园沙发_2";
			productDetail.body = "环保 韩式田园沙发/布艺沙发/现代沙发/特价田园沙发<可定做>";
			productDetail.price = "0.50";
			productDetail.resId = 30;
			mproductlist.add(productDetail);

			productDetail = new ProductDetail();
			productDetail.subject = "夏季登山鞋_2";
			productDetail.body = "8071男女士专柜正品夏季户外防滑鞋户外鞋登山鞋徒步鞋防水透气灰";
			productDetail.price = "0.50";
			productDetail.resId = 30;
			mproductlist.add(productDetail);

			productDetail = new ProductDetail();
			productDetail.subject = "精品娃娃_2";
			productDetail.body = "宜家宜精品娃娃，超柔短毛绒海豚抱枕 75厘米 全国包邮";
			productDetail.price = "0.50";
			productDetail.resId = 30;
			mproductlist.add(productDetail);

			productDetail = new ProductDetail();
			productDetail.subject = "HTC 谷歌G5_2";
			productDetail.body = "HTC G5 谷歌G5 Google G5 先验货后付款 支票刷卡 易人在线";
			productDetail.price = "0.50";
			productDetail.resId = 30;
			mproductlist.add(productDetail);

			return mproductlist;
		}

		class ProductDetail {
			String subject;
			String body;
			String price;
			int resId;
		}
	}

	private class ProductListAdapter extends BaseAdapter {

		private ArrayList<Products.ProductDetail> m_productList = null;
		private Context context;

		private class ProductItemView {
			TextView subject;
			TextView body;
			TextView price;
		}

		public ProductListAdapter(Context c,
				ArrayList<Products.ProductDetail> list) {
			m_productList = list;
			context = c;
		}

		public int getCount() {
			return m_productList.size();
		}

		public Object getItem(int arg0) {
			return null;
		}

		public long getItemId(int arg0) {
			return arg0;
		}

		public View getView(int arg0, View arg1, ViewGroup arg2) {
			final ProductItemView itemView;
			if (arg1 == null) {
				itemView = new ProductItemView();
				arg1 = LayoutInflater.from(context).inflate(
						R.layout.product_item, null);
				itemView.subject = (TextView) arg1.findViewById(R.id.subject);
				itemView.body = (TextView) arg1.findViewById(R.id.body);
				itemView.price = (TextView) arg1.findViewById(R.id.price);

				arg1.setTag(itemView);
			} else {
				itemView = (ProductItemView) arg1.getTag();
			}

			itemView.subject.setText(this.m_productList.get(arg0).subject);
			itemView.body.setText(this.m_productList.get(arg0).body);
			itemView.price.setText(this.m_productList.get(arg0).price);

			return arg1;
		}
	}

	private class InitialPayTask extends
			AsyncTask<NameValuePair, Integer, String> {

		@Override
		protected void onPreExecute() {
			mProgress = UtilTool.showProgress(
					TestActivity.this,
					null,
					TestActivity.this.getResources().getString(
							R.string.ini_install), false, true);
			mProgress.show();
		}

		@Override
		protected String doInBackground(NameValuePair... nameValuePairs) {
			NetworkRequestAgent networkRequestAgent = new NetworkRequestAgent();
			String resultInfo = networkRequestAgent
					.initialPayment(nameValuePairs);

			return resultInfo;
		}

		@Override
		protected void onPostExecute(String result) {
			try {
				if (null != mProgress) {
					mProgress.dismiss();
					mProgress = null;
				}

				if (!UtilTool.checkStringIsNull(result)) {
					Log.d(TAG, "result=" + result);
					boolean isSignOk = UtilTool.checkSignatrue(result);
					if (isSignOk) {
						JSONObject jsonVo = new JSONObject(result);
						String respCode = jsonVo
								.getString(Constant.RESPONE_RESP_CODE);
						if ("200".equals(respCode)) {
							String transNo = jsonVo
									.getString(Constant.RESPONE_VIVO_ORDER);
							String signature = jsonVo
									.getString(Constant.RESPONE_VIVO_SIGNATURE);
							DecimalFormat format_d = new DecimalFormat("#.##");

							Bundle localBundle = new Bundle();
							String packageName = TestActivity.this
									.getPackageName();
							localBundle.putString(Constants.PAY_PARAM_TRANSNO, transNo);
							localBundle.putString(Constants.PAY_PARAM_SIGNATURE, signature);
							localBundle.putString(Constants.PAY_PARAM_PKG, packageName);
							localBundle.putBoolean(Constants.PAY_PARAM_USE_WEIXIN_PAY, false);
							localBundle.putString(Constants.PAY_PARAM_USEMODE, "00");
							localBundle.putString(Constants.PAY_PARAM_PRODUCT_DEC, mproductlist.get(index).body);
							localBundle.putString(Constants.PAY_PARAM_PRODUCT_NAME, mproductlist.get(index).subject);
							localBundle.putDouble(Constants.PAY_PARAM_PRICE, format_d.parse(
											mproductlist.get(index).price).doubleValue());
							localBundle.putString(Constants.PAY_PARAM_USERID, "dkhsky");
							String signe = localBundle.getString(Constants.PAY_PARAM_SIGNATURE);
							mVivoUnionManager.singlePayment(mContext, localBundle);
						} else {
							showPayMessage(R.string.ini_install_fail);
						}
					} else {
						showPayMessage(R.string.ini_sign_fail);
					}
				} else {
					showPayMessage(R.string.ini_install_fail);
				}
			} catch (Exception e) {
				showPayMessage(R.string.network_error);
				e.printStackTrace();
			}
		}
	}

	private void showPayMessage(int msgId) {
		Toast.makeText(TestActivity.this, msgId, Toast.LENGTH_LONG).show();
	}

	private String generateSignature(Map<String, String> param_map) {
		String result = null;
		result = VivoSignUtils.getVivoSign(param_map, Constant.SIGN_KEY);
		return result;
	}
	
	

	@Override
	protected void onDestroy() {
		// TODO Auto-generated method stub
		super.onDestroy();
		mVivoUnionManager.cancelVivoSinglePayment(mOnVivoPayResultListener);
		mVivoUnionManager.singlePaymentExit(mContext);
	}



	OnVivoSinglePayResultListener mOnVivoPayResultListener = new OnVivoSinglePayResultListener() {

		@Override
		public void payResult(String transNo, boolean pay_result,
				String result_code, String pay_msg) {

			Log.d(TAG, transNo + "," + pay_msg + "," + result_code + ","
					+ pay_result);
			UtilTool.showDialog(TestActivity.this, "支付结果", "交易编号=" + transNo
					+ ", 交易结果=" + (pay_result ? "成功" : "失败") + ",状态码="
					+ result_code + "，状态描述=" + pay_msg);
		}

	};

	private static void gitBid() {
		File file = new File("/system/vivo-apps/apps.list");
		if (!file.exists()) {
			Log.d("iniFIle", "file is not exist");
		}
		BufferedReader reader = null;
		try {
			reader = new BufferedReader(new FileReader(file));
			String line = reader.readLine();
			Log.d("iniFIle", "content=" + line);
		} catch (Exception e) {
			Log.d("iniFIle", "gitBid exception=" + e.getMessage());
			e.printStackTrace();
		}
	}
}
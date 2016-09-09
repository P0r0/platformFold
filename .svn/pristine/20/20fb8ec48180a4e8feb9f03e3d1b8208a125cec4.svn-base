package paydemo;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import org.apache.http.NameValuePair;
import org.apache.http.message.BasicNameValuePair;
import org.json.JSONObject;

import paydemo.network.NetworkRequestAgent;
import android.app.Activity;
import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.os.AsyncTask;
import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.AdapterView.OnItemLongClickListener;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;

import com.bbk.payment.payment.OnVivoPayResultListener;
import com.example.paydemo.R;
import com.vivo.sdkplugin.aidl.VivoUnionManager;

public class PayTestActivity extends Activity implements OnItemClickListener,
		OnItemLongClickListener {
	private static final String TAG = "PayTestActivity";
	private ProgressDialog mProgress = null;
	private int index = 0;
	private Context mContext;
	private ListView mproductListView = null;
	private ProductListAdapter m_listViewAdapter = null;
	private ArrayList<Products.ProductDetail> mproductlist;
	private VivoUnionManager mVivoUnionManager;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		Log.v(TAG, "onCreate");
		setContentView(R.layout.remote_service_binding);
		mContext = this;
		showTitleRightButton();
		initProductList();
		mVivoUnionManager = new VivoUnionManager(mContext);
		mVivoUnionManager.initVivoPaymentAndRecharge(mContext,
				mOnVivoPayResultListener);
	}

	public void showTitleRightButton() {
		Button button_recharge = (Button) findViewById(R.id.title_recharge);
		button_recharge.setOnClickListener(new OnClickListener() {

			@Override
			public void onClick(View v) {
				// 第三方游戏不需要使用此方法
				Bundle localBundle = new Bundle();
				mVivoUnionManager.recharge(mContext);
			}
		});
	}

	@Override
	protected void onStop() {
		// TODO Auto-generated method stub
		super.onStop();
	}

	@Override
	protected void onDestroy() {
		// TODO Auto-generated method stub
		super.onDestroy();
		Log.d(TAG, "onDestroy");
		mVivoUnionManager
				.cancelVivoPaymentAndRecharge(mOnVivoPayResultListener);
		if (mResultDialog != null) {
			mResultDialog.dismiss();
			mResultDialog = null;
		}
	}

	OnVivoPayResultListener mOnVivoPayResultListener = new OnVivoPayResultListener() {

		@Override
		public void payResult(String transNo, boolean pay_result,
				String result_code, String pay_msg) {
			mResultDialog = UtilTool.showDialog(PayTestActivity.this, "支付结果",
					"交易编号=" + transNo + ", 交易结果=" + (pay_result ? "成功" : "失败")
							+ ",状态码=" + result_code + "，状态描述=" + pay_msg);
			Log.d(TAG, "payResult, " + transNo + "," + pay_msg + ","
					+ result_code + "," + pay_result);

		}

		@Override
		public void rechargeResult(String openid, boolean pay_result,
				String result_code, String pay_msg) {

			Log.d(TAG, "rechargeResult, " + openid + "," + pay_msg + ","
					+ result_code + "," + pay_result);
			mResultDialog = UtilTool.showDialog(PayTestActivity.this, "支付结果",
					"用户id=" + openid + ", 交易结果=" + (pay_result ? "成功" : "失败")
							+ ",状态码=" + result_code + "，状态描述=" + pay_msg);

		}
	};

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

		try {
			index = arg2;
			SimpleDateFormat format = new SimpleDateFormat("yyyyMMddHHmmss");
			String orderNum = UUID.randomUUID().toString().replaceAll("-", "");
			NameValuePair[] nameValuePairs = new NameValuePair[12];
			Map<String, String> param_map = new HashMap<String, String>();
			param_map.put(Constant.PARAM_NOTIFYURL,
					"http://113.98.231.125:8051/vcoin/notifyStubAction");// http://113.98.231.125:8051/vcoin/notifyStubAction
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
			param_map.put(Constant.PARAM_VERSION, "1.0.0");
			param_map.put(Constant.PARAM_EXTINFO, "extInfo_test");
			String signature = generateSignature(param_map);
			int i = 0;
			nameValuePairs[i++] = new BasicNameValuePair(
					Constant.PARAM_NOTIFYURL,
					"http://113.98.231.125:8051/vcoin/notifyStubAction");// 192.168.2.202:9999
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
					Constant.PARAM_VERSION, "1.0.0");
			nameValuePairs[i++] = new BasicNameValuePair(
					Constant.PARAM_EXTINFO, "extInfo_test");
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
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}

	private Dialog mResultDialog = null;

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
			productDetail.price = "250001";
			productDetail.resId = 30;
			mproductlist.add(productDetail);

			productDetail = new ProductDetail();
			productDetail.subject = "珍珠项链_2";
			productDetail.body = "珍珠项链";
			productDetail.price = "100";
			productDetail.resId = 30;
			mproductlist.add(productDetail);

			productDetail = new ProductDetail();
			productDetail.subject = "三星 原装移动硬盘_2";
			productDetail.body = "三星 原装移动硬盘 S2 320G 带加密 三星S2 韩国原装 全国联保";
			productDetail.price = "20";
			productDetail.resId = 30;
			mproductlist.add(productDetail);

			productDetail = new ProductDetail();
			productDetail.subject = "发箍发带_2";
			productDetail.body = "【肉来来】超热卖 百变小领巾 兔耳朵布艺发箍发带";
			productDetail.price = "1005";
			productDetail.resId = 30;
			mproductlist.add(productDetail);

			productDetail = new ProductDetail();
			productDetail.subject = "台版N97I_2";
			productDetail.body = "台版N97I 有迷你版 双卡双待手机 挂QQ JAVA 炒股 来电归属地 同款比价 ";
			productDetail.price = "150";
			productDetail.resId = 30;
			mproductlist.add(productDetail);

			productDetail = new ProductDetail();
			productDetail.subject = "苹果手机_2";
			productDetail.body = "山寨国产红苹果手机 Hiphone I9 JAVA QQ后台 飞信 炒股 UC";
			productDetail.price = "120";
			productDetail.resId = 30;
			mproductlist.add(productDetail);

			productDetail = new ProductDetail();
			productDetail.subject = "蝴蝶结_2";
			productDetail.body = "【饰品实物拍摄】满30包邮 三层绸缎粉色 蝴蝶结公主发箍多色入";
			productDetail.price = "1000";
			productDetail.resId = 30;
			mproductlist.add(productDetail);

			productDetail = new ProductDetail();
			productDetail.subject = "韩版雪纺_2";
			productDetail.body = "饰品批发价 韩版雪纺纱圆点布花朵 山茶玫瑰花 发圈胸针两用 6002";
			productDetail.price = "50";
			productDetail.resId = 30;
			mproductlist.add(productDetail);

			productDetail = new ProductDetail();
			productDetail.subject = "五皇纸箱_2";
			productDetail.body = "加固纸箱 会员包快递拍好去运费冲纸箱首个五皇";
			productDetail.price = "10";
			productDetail.resId = 30;
			mproductlist.add(productDetail);

			productDetail = new ProductDetail();
			productDetail.subject = "MF唱片_2";
			productDetail.body = "【正版】MF唱片 HIFI毒药4 毒药涅磐再造 海洛 因新4号HD天碟1CD";
			productDetail.price = "3";
			productDetail.resId = 30;
			mproductlist.add(productDetail);

			productDetail = new ProductDetail();
			productDetail.subject = "学习机_2";
			productDetail.body = "六人行老友记friends全10季英语学习机版 MP3版子精读笔记";
			productDetail.price = "40";
			productDetail.resId = 30;
			mproductlist.add(productDetail);

			productDetail = new ProductDetail();
			productDetail.subject = "联华卡_2";
			productDetail.body = "联华OK卡，特价供应联华卡，联华OK卡，积点卡982折 卡密或代充";
			productDetail.price = "45";
			productDetail.resId = 30;
			mproductlist.add(productDetail);

			productDetail = new ProductDetail();
			productDetail.subject = "粽子批发_2";
			productDetail.body = "嘉兴粽子批发团购真真老老之大肉粽";
			productDetail.price = "35";
			productDetail.resId = 30;
			mproductlist.add(productDetail);

			productDetail = new ProductDetail();
			productDetail.subject = "话费充值_2";
			productDetail.body = "【四钻信誉】北京移动30元 电脑全自动充值 1到10分钟内到账";
			productDetail.price = "45";
			productDetail.resId = 30;
			mproductlist.add(productDetail);

			productDetail = new ProductDetail();
			productDetail.subject = "短袖T恤_2";
			productDetail.body = "爱马仕男装短袖T恤2010新款时尚夏装韩版男士T恤正品原单圆领修身";
			productDetail.price = "50";
			productDetail.resId = 30;
			mproductlist.add(productDetail);

			productDetail = new ProductDetail();
			productDetail.subject = "田园沙发_2";
			productDetail.body = "环保 韩式田园沙发/布艺沙发/现代沙发/特价田园沙发<可定做>";
			productDetail.price = "500";
			productDetail.resId = 30;
			mproductlist.add(productDetail);

			productDetail = new ProductDetail();
			productDetail.subject = "夏季登山鞋_2";
			productDetail.body = "8071男女士专柜正品夏季户外防滑鞋户外鞋登山鞋徒步鞋防水透气灰";
			productDetail.price = "499";
			productDetail.resId = 30;
			mproductlist.add(productDetail);

			productDetail = new ProductDetail();
			productDetail.subject = "精品娃娃_2";
			productDetail.body = "宜家宜精品娃娃，超柔短毛绒海豚抱枕 75厘米 全国包邮";
			productDetail.price = "498";
			productDetail.resId = 8;
			mproductlist.add(productDetail);

			productDetail = new ProductDetail();
			productDetail.subject = "HTC 谷歌G5_2";
			productDetail.body = "HTC G5 谷歌G5 Google G5 先验货后付款 支票刷卡 易人在线";
			productDetail.price = "10";
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
					PayTestActivity.this,
					null,
					PayTestActivity.this.getResources().getString(
							R.string.ini_install), false, true);
			mProgress.show();
		}

		@Override
		protected String doInBackground(NameValuePair... nameValuePairs) {
			NetworkRequestAgent networkRequestAgent = new NetworkRequestAgent();
			String resultInfo = networkRequestAgent
					.initialPayment(nameValuePairs);
			Log.d(TAG,
					"doInBackground resultInfo=" + resultInfo
							+ ",getPackageName="
							+ PayTestActivity.this.getPackageName());
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
							String transNo = jsonVo.getString(Constant.RESPONE_VIVO_ORDER);
							String accessKey = jsonVo.getString(Constant.RESPONE_VIVO_SIGNATURE);
							Bundle localBundle = new Bundle();
							String packageName = PayTestActivity.this.getPackageName();
							localBundle.putString(Constants.PAY_PARAM_TRANSNO, transNo);
							localBundle.putString(Constant.RESPONE_VIVO_SIGNATURE, accessKey);
							localBundle.putString(Constants.PAY_PARAM_APPID, Constant.APP_ID);
							localBundle.putString(Constants.PAY_PARAM_PRODUCT_NAME, mproductlist.get(index).subject);
							localBundle.putString(Constants.PAY_PARAM_PRODUCT_DEC, mproductlist.get(index).body);
							localBundle.putLong(Constants.PAY_PARAM_PRICE, Long.parseLong(mproductlist.get(index).price));
							localBundle.putString("blance", "100元宝");
							localBundle.putString("vip", "vip2");
							localBundle.putInt("level", 35);
							localBundle.putString("party", "工会");
							localBundle.putString("roleId", "角色id");
							localBundle.putString("roleName", "角色名称角色名称角色名称");
							localBundle.putString("serverName", "区服信息");
							localBundle.putString("extInfo", "扩展参数");
							localBundle.putBoolean("logOnOff", false);
							mVivoUnionManager.payment(mContext, localBundle);
							Log.d("transno", "transNo=" + transNo);
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
		Toast.makeText(PayTestActivity.this, msgId, Toast.LENGTH_LONG).show();
	}

	private String generateSignature(Map<String, String> param_map) {
		String result = null;
		result = VivoSignUtils.getVivoSign(param_map, Constant.SIGN_KEY);
		return result;
	}

	@Override
	public boolean onItemLongClick(AdapterView<?> parent, View view,
			int position, long id) {
		// TODO Auto-generated method stub
		return false;
	}

}
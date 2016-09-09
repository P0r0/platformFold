.class public Lcom/baidu/paysdk/lightapp/d;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/baidu/paysdk/lightapp/LightappWebView;

.field private b:Landroid/app/Activity;

.field private final c:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/baidu/paysdk/lightapp/LightappWebView;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/baidu/paysdk/lightapp/d;->c:Landroid/util/SparseArray;

    iput-object p1, p0, Lcom/baidu/paysdk/lightapp/d;->b:Landroid/app/Activity;

    iput-object p2, p0, Lcom/baidu/paysdk/lightapp/d;->a:Lcom/baidu/paysdk/lightapp/LightappWebView;

    return-void
.end method

.method static synthetic a(Lcom/baidu/paysdk/lightapp/d;)Landroid/util/SparseArray;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/lightapp/d;->c:Landroid/util/SparseArray;

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/lightapp/d;->b:Landroid/app/Activity;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/baidu/paysdk/lightapp/d;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_9
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/baidu/paysdk/lightapp/d;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/paysdk/lightapp/a;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/baidu/paysdk/lightapp/d;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->remove(I)V

    :cond_10
    new-instance v0, Lcom/baidu/paysdk/lightapp/a;

    iget-object v1, p0, Lcom/baidu/paysdk/lightapp/d;->a:Lcom/baidu/paysdk/lightapp/LightappWebView;

    invoke-direct {v0, v1, p1, p2}, Lcom/baidu/paysdk/lightapp/a;-><init>(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/baidu/paysdk/lightapp/d;->c:Landroid/util/SparseArray;

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "sp"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/baidu/wallet/api/BaiduWallet;->getInstance()Lcom/baidu/wallet/api/BaiduWallet;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/paysdk/lightapp/d;->b:Landroid/app/Activity;

    new-instance v3, Lcom/baidu/paysdk/lightapp/e;

    invoke-direct {v3, p0}, Lcom/baidu/paysdk/lightapp/e;-><init>(Lcom/baidu/paysdk/lightapp/d;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/baidu/wallet/api/BaiduWallet;->init(Landroid/content/Context;Ljava/util/Map;Lcom/baidu/android/pay/InitCallBack;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 9

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/baidu/paysdk/lightapp/d;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/paysdk/lightapp/a;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/baidu/paysdk/lightapp/d;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->remove(I)V

    :cond_10
    new-instance v0, Lcom/baidu/paysdk/lightapp/a;

    iget-object v1, p0, Lcom/baidu/paysdk/lightapp/d;->a:Lcom/baidu/paysdk/lightapp/LightappWebView;

    invoke-direct {v0, v1, p1, p2}, Lcom/baidu/paysdk/lightapp/a;-><init>(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/baidu/paysdk/lightapp/d;->c:Landroid/util/SparseArray;

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lcom/baidu/wallet/api/BaiduWallet;->getInstance()Lcom/baidu/wallet/api/BaiduWallet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/wallet/api/BaiduWallet;->isLogin()Z

    move-result v1

    if-eqz v1, :cond_49

    const-string v1, "userType"

    invoke-static {}, Lcom/baidu/wallet/api/BaiduWallet;->getInstance()Lcom/baidu/wallet/api/BaiduWallet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/wallet/api/BaiduWallet;->getLoginType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "tokenValue"

    invoke-static {}, Lcom/baidu/wallet/api/BaiduWallet;->getInstance()Lcom/baidu/wallet/api/BaiduWallet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/wallet/api/BaiduWallet;->getLoginToken()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_49
    invoke-static {}, Lcom/baidu/wallet/api/BaiduWallet;->getInstance()Lcom/baidu/wallet/api/BaiduWallet;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/paysdk/lightapp/d;->b:Landroid/app/Activity;

    new-instance v3, Lcom/baidu/paysdk/lightapp/f;

    invoke-direct {v3, p0, p4}, Lcom/baidu/paysdk/lightapp/f;-><init>(Lcom/baidu/paysdk/lightapp/d;Z)V

    invoke-virtual {v1, v2, p3, v3, v0}, Lcom/baidu/wallet/api/BaiduWallet;->doPay(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/android/pay/PayCallBack;Ljava/util/Map;)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    new-instance v0, Lcom/baidu/paysdk/lightapp/a;

    iget-object v1, p0, Lcom/baidu/paysdk/lightapp/d;->a:Lcom/baidu/paysdk/lightapp/LightappWebView;

    invoke-direct {v0, v1, p1, p2}, Lcom/baidu/paysdk/lightapp/a;-><init>(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Lcom/baidu/paysdk/lightapp/h;

    invoke-direct {v6, p0, v0}, Lcom/baidu/paysdk/lightapp/h;-><init>(Lcom/baidu/paysdk/lightapp/d;Lcom/baidu/paysdk/lightapp/a;)V

    invoke-static {}, Lcom/baidu/paysdk/lightapp/LightAppWrapper;->getInstance()Lcom/baidu/paysdk/lightapp/LightAppWrapper;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/baidu/paysdk/lightapp/LightAppWrapper;->getCurrentLocation(Lcom/baidu/paysdk/lightapp/LightAppWrapper$ILocationCallback;)Z

    move-result v0

    if-nez v0, :cond_2f

    iget-object v0, p0, Lcom/baidu/paysdk/lightapp/d;->b:Landroid/app/Activity;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    if-eqz v0, :cond_2f

    const-string v1, "network"

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    new-instance v5, Lcom/baidu/paysdk/lightapp/i;

    invoke-direct {v5, p0, v6, v0}, Lcom/baidu/paysdk/lightapp/i;-><init>(Lcom/baidu/paysdk/lightapp/d;Lcom/baidu/paysdk/lightapp/LightAppWrapper$ILocationCallback;Landroid/location/LocationManager;)V

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    :cond_2f
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bdLogin. options = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", success = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fail = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;)V

    new-instance v1, Lcom/baidu/paysdk/lightapp/a;

    iget-object v0, p0, Lcom/baidu/paysdk/lightapp/d;->a:Lcom/baidu/paysdk/lightapp/LightappWebView;

    invoke-direct {v1, v0, p2, p3}, Lcom/baidu/paysdk/lightapp/a;-><init>(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_31
    const-class v0, Lcom/baidu/paysdk/datamodel/LightAppBDLoginModel;

    invoke-static {p1, v0}, Lcom/baidu/wallet/core/utils/JsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/paysdk/datamodel/LightAppBDLoginModel;
    :try_end_39
    .catch Lorg/json/JSONException; {:try_start_31 .. :try_end_39} :catch_46

    :goto_39
    invoke-static {}, Lcom/baidu/wallet/api/BaiduWallet;->getInstance()Lcom/baidu/wallet/api/BaiduWallet;

    move-result-object v0

    new-instance v2, Lcom/baidu/paysdk/lightapp/g;

    invoke-direct {v2, p0, v1}, Lcom/baidu/paysdk/lightapp/g;-><init>(Lcom/baidu/paysdk/lightapp/d;Lcom/baidu/paysdk/lightapp/a;)V

    invoke-virtual {v0, v2}, Lcom/baidu/wallet/api/BaiduWallet;->login(Lcom/baidu/wallet/api/ILoginBackListener;)V

    return-void

    :catch_46
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_39
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {}, Lcom/baidu/wallet/api/BaiduWallet;->getInstance()Lcom/baidu/wallet/api/BaiduWallet;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/paysdk/lightapp/d;->b:Landroid/app/Activity;

    invoke-virtual {v2, v3, v0, v1, p2}, Lcom/baidu/wallet/api/BaiduWallet;->accessWalletService(Landroid/content/Context;JLjava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    :goto_d
    return-void

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_d
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    const/4 v1, 0x0

    :try_start_8
    const-class v0, Lcom/baidu/paysdk/datamodel/LightAppShareModel;

    invoke-static {p1, v0}, Lcom/baidu/wallet/core/utils/JsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/paysdk/datamodel/LightAppShareModel;
    :try_end_10
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_10} :catch_22

    :goto_10
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/LightAppShareModel;->valid()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/baidu/paysdk/lightapp/LightAppWrapper;->getInstance()Lcom/baidu/paysdk/lightapp/LightAppWrapper;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/paysdk/lightapp/d;->b:Landroid/app/Activity;

    invoke-virtual {v1, v2, v0}, Lcom/baidu/paysdk/lightapp/LightAppWrapper;->callShare(Landroid/app/Activity;Lcom/baidu/paysdk/datamodel/LightAppShareModel;)Z

    goto :goto_6

    :catch_22
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move-object v0, v1

    goto :goto_10
.end method

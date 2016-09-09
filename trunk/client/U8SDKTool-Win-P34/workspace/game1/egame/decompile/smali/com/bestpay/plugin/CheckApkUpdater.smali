.class public Lcom/bestpay/plugin/CheckApkUpdater;
.super Ljava/lang/Object;
.source "CheckApkUpdater.java"


# static fields
.field public static final MESSAGE_SHOW_UPDATE_DIALOG:I = 0x1

.field public static path:Ljava/lang/String;


# instance fields
.field public final MESSAGE_CANCEL_PROGRESS_DIALOG:I

.field public final MESSAGE_INTERNET_EXCEPTION:I

.field public final MESSAGE_SHOW_DOWNLOAD_PROGRESS:I

.field public final MESSAGE_SHOW_UPDATE_DOWLOAD:I

.field public b:Z

.field public clientVersion:Ljava/lang/String;

.field public context:Landroid/content/Context;

.field public downedSize:I

.field public final downloadURL:Ljava/lang/String;

.field public entity:Lorg/apache/http/client/entity/UrlEncodedFormEntity;

.field private forceupgrade:Ljava/lang/String;

.field handler:Landroid/os/Handler;

.field public imei:Ljava/lang/String;

.field public imsi:Ljava/lang/String;

.field private isoptional:Ljava/lang/String;

.field mTm:Landroid/telephony/TelephonyManager;

.field public mtyb:Ljava/lang/String;

.field public mtype:Ljava/lang/String;

.field public numer:Ljava/lang/String;

.field public progressDialog:Landroid/app/ProgressDialog;

.field public release:Ljava/lang/String;

.field public serverVersion:Ljava/lang/String;

.field public totalSize:I

.field public url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 75
    const-string v0, "/sdcard/bestpayplugin/"

    sput-object v0, Lcom/bestpay/plugin/CheckApkUpdater;->path:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const-string v0, "https://client.bestpay.com.cn/MEPF_INF2/httppost/"

    iput-object v0, p0, Lcom/bestpay/plugin/CheckApkUpdater;->downloadURL:Ljava/lang/String;

    .line 67
    const/4 v0, 0x2

    iput v0, p0, Lcom/bestpay/plugin/CheckApkUpdater;->MESSAGE_SHOW_DOWNLOAD_PROGRESS:I

    .line 68
    const/4 v0, 0x3

    iput v0, p0, Lcom/bestpay/plugin/CheckApkUpdater;->MESSAGE_CANCEL_PROGRESS_DIALOG:I

    .line 69
    const/4 v0, 0x4

    iput v0, p0, Lcom/bestpay/plugin/CheckApkUpdater;->MESSAGE_INTERNET_EXCEPTION:I

    .line 70
    iput v1, p0, Lcom/bestpay/plugin/CheckApkUpdater;->totalSize:I

    .line 71
    iput v1, p0, Lcom/bestpay/plugin/CheckApkUpdater;->downedSize:I

    .line 77
    const/4 v0, 0x5

    iput v0, p0, Lcom/bestpay/plugin/CheckApkUpdater;->MESSAGE_SHOW_UPDATE_DOWLOAD:I

    .line 226
    new-instance v0, Lcom/bestpay/plugin/CheckApkUpdater$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/bestpay/plugin/CheckApkUpdater$1;-><init>(Lcom/bestpay/plugin/CheckApkUpdater;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/bestpay/plugin/CheckApkUpdater;->handler:Landroid/os/Handler;

    .line 318
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bestpay/plugin/CheckApkUpdater;->mTm:Landroid/telephony/TelephonyManager;

    .line 80
    iput-object p1, p0, Lcom/bestpay/plugin/CheckApkUpdater;->context:Landroid/content/Context;

    .line 81
    return-void
.end method

.method public static install(Ljava/io/File;Landroid/content/Context;)V
    .registers 5
    .param p0, "file"    # Ljava/io/File;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 352
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 353
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 354
    const-string v2, "application/vnd.android.package-archive"

    .line 353
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 355
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 356
    return-void
.end method


# virtual methods
.method public alertProgressDialog()V
    .registers 7

    .prologue
    const-wide/16 v2, 0xc8

    .line 87
    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v4, p0, Lcom/bestpay/plugin/CheckApkUpdater;->context:Landroid/content/Context;

    invoke-direct {v1, v4}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/bestpay/plugin/CheckApkUpdater;->progressDialog:Landroid/app/ProgressDialog;

    .line 88
    iget-object v1, p0, Lcom/bestpay/plugin/CheckApkUpdater;->progressDialog:Landroid/app/ProgressDialog;

    const-string v4, "\u4e0b\u8f7d\u8fdb\u5ea6"

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v1, p0, Lcom/bestpay/plugin/CheckApkUpdater;->progressDialog:Landroid/app/ProgressDialog;

    iget v4, p0, Lcom/bestpay/plugin/CheckApkUpdater;->totalSize:I

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 90
    iget-object v1, p0, Lcom/bestpay/plugin/CheckApkUpdater;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 91
    iget-object v1, p0, Lcom/bestpay/plugin/CheckApkUpdater;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 92
    iget-object v1, p0, Lcom/bestpay/plugin/CheckApkUpdater;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 98
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 99
    .local v0, "timer":Ljava/util/Timer;
    new-instance v1, Lcom/bestpay/plugin/CheckApkUpdater$2;

    invoke-direct {v1, p0, v0}, Lcom/bestpay/plugin/CheckApkUpdater$2;-><init>(Lcom/bestpay/plugin/CheckApkUpdater;Ljava/util/Timer;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 109
    return-void
.end method

.method public apkUpdater(Landroid/content/Context;Lcom/bestpay/plugin/CallBack;)Z
    .registers 28
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/bestpay/plugin/CallBack;

    .prologue
    .line 123
    invoke-virtual/range {p0 .. p1}, Lcom/bestpay/plugin/CheckApkUpdater;->getInfo(Landroid/content/Context;)V

    .line 124
    const-string v19, ""

    .line 125
    .local v19, "returns":Ljava/lang/String;
    const/4 v12, 0x0

    .line 127
    .local v12, "is":Ljava/io/InputStream;
    sget-object v9, Lorg/apache/http/conn/ssl/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    .line 128
    .local v9, "hostnameVerifier":Ljavax/net/ssl/HostnameVerifier;
    new-instance v16, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct/range {v16 .. v16}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 130
    .local v16, "registry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    invoke-static {}, Lcom/bestpay/util/Net$SSLSocketFactoryEx;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v20

    .local v20, "socketFactory":Lorg/apache/http/conn/ssl/SSLSocketFactory;
    move-object/from16 v21, v9

    .line 133
    check-cast v21, Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual/range {v20 .. v21}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    .line 134
    new-instance v21, Lorg/apache/http/conn/scheme/Scheme;

    const-string v22, "https"

    const/16 v23, 0x1bb

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v20

    move/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 135
    new-instance v21, Lorg/apache/http/conn/scheme/Scheme;

    const-string v22, "http"

    .line 136
    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v23

    const/16 v24, 0x50

    invoke-direct/range {v21 .. v24}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    .line 135
    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 139
    invoke-static {}, Lcom/bestpay/util/Net;->getNewHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v4

    check-cast v4, Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 140
    .local v4, "client":Lorg/apache/http/impl/client/DefaultHttpClient;
    new-instance v13, Lorg/apache/http/impl/conn/SingleClientConnManager;

    .line 141
    invoke-virtual {v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v21

    .line 140
    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-direct {v13, v0, v1}, Lorg/apache/http/impl/conn/SingleClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 142
    .local v13, "mgr":Lorg/apache/http/impl/conn/SingleClientConnManager;
    new-instance v10, Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 143
    invoke-virtual {v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v21

    .line 142
    move-object/from16 v0, v21

    invoke-direct {v10, v13, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    .line 145
    .local v10, "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    invoke-static {v9}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 148
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v21, "yyyyMMddhhmmss"

    move-object/from16 v0, v21

    invoke-direct {v5, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 149
    .local v5, "df":Ljava/text/SimpleDateFormat;
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 150
    .local v15, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v21, Lorg/apache/http/message/BasicNameValuePair;

    const-string v22, "method"

    const-string v23, "clientupdateAndApplist"

    invoke-direct/range {v21 .. v23}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    new-instance v21, Lorg/apache/http/message/BasicNameValuePair;

    const-string v22, "CHANNELID"

    const-string v23, "000000"

    invoke-direct/range {v21 .. v23}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    new-instance v21, Lorg/apache/http/message/BasicNameValuePair;

    const-string v22, "TYPE"

    const-string v23, "08"

    invoke-direct/range {v21 .. v23}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    new-instance v21, Lorg/apache/http/message/BasicNameValuePair;

    const-string v22, "IMSI"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bestpay/plugin/CheckApkUpdater;->imsi:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-direct/range {v21 .. v23}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    new-instance v21, Lorg/apache/http/message/BasicNameValuePair;

    const-string v22, "CURRENTVERSION"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bestpay/plugin/CheckApkUpdater;->clientVersion:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-direct/range {v21 .. v23}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    new-instance v21, Lorg/apache/http/message/BasicNameValuePair;

    const-string v22, "SYSTEM"

    const-string v23, "android"

    invoke-direct/range {v21 .. v23}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    new-instance v21, Lorg/apache/http/message/BasicNameValuePair;

    const-string v22, "SYSVERSION"

    const-string v23, "4.3"

    invoke-direct/range {v21 .. v23}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    new-instance v21, Lorg/apache/http/message/BasicNameValuePair;

    const-string v22, "PHONE"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bestpay/plugin/CheckApkUpdater;->mtype:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-direct/range {v21 .. v23}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    new-instance v21, Lorg/apache/http/message/BasicNameValuePair;

    const-string v22, "PRODUCTNO"

    const-string v23, ""

    invoke-direct/range {v21 .. v23}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    new-instance v21, Lorg/apache/http/message/BasicNameValuePair;

    const-string v22, "WIDGETVER"

    const-string v23, ""

    invoke-direct/range {v21 .. v23}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    new-instance v21, Lorg/apache/http/message/BasicNameValuePair;

    const-string v22, "MAXRECORD"

    const-string v23, ""

    invoke-direct/range {v21 .. v23}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    new-instance v21, Lorg/apache/http/message/BasicNameValuePair;

    const-string v22, "STARTRECORD"

    const-string v23, ""

    invoke-direct/range {v21 .. v23}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    new-instance v21, Lorg/apache/http/message/BasicNameValuePair;

    const-string v22, "LOCATION"

    const-string v23, ""

    invoke-direct/range {v21 .. v23}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    :try_start_135
    new-instance v21, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v22, "UTF-8"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v0, v15, v1}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/bestpay/plugin/CheckApkUpdater;->entity:Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    .line 166
    const-string v21, "geek"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/bestpay/util/LoggerHelper;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_15a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_135 .. :try_end_15a} :catch_221

    .line 171
    :goto_15a
    new-instance v11, Lorg/apache/http/client/methods/HttpPost;

    const-string v21, "https://client.bestpay.com.cn/MEPF_INF2/httppost/"

    move-object/from16 v0, v21

    invoke-direct {v11, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 172
    .local v11, "httpPost":Lorg/apache/http/client/methods/HttpPost;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bestpay/plugin/CheckApkUpdater;->entity:Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 176
    :try_start_16e
    invoke-virtual {v10, v11}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v17

    .line 177
    .local v17, "response":Lorg/apache/http/HttpResponse;
    invoke-interface/range {v17 .. v17}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v21

    const/16 v22, 0xc8

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_212

    .line 178
    invoke-interface/range {v17 .. v17}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v19

    .line 179
    const-string v21, "returns:"

    const-string v22, ""

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v19

    .line 180
    new-instance v14, Lorg/json/JSONObject;

    move-object/from16 v0, v19

    invoke-direct {v14, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 181
    .local v14, "obj":Lorg/json/JSONObject;
    const-string v21, "ERRORCODE"

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 182
    .local v7, "errorcode":Ljava/lang/String;
    const-string v21, "000000"

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_236

    .line 183
    const-string v21, "URL"

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_212

    const-string v21, "VERSION"

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_212

    .line 184
    const-string v21, "ISOPTIONAL"

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/bestpay/plugin/CheckApkUpdater;->isoptional:Ljava/lang/String;

    .line 185
    const-string v21, "FORCEUPGRADE"

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/bestpay/plugin/CheckApkUpdater;->forceupgrade:Ljava/lang/String;

    .line 186
    const-string v21, "URL"

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/bestpay/plugin/CheckApkUpdater;->url:Ljava/lang/String;

    .line 187
    const-string v21, "VERSION"

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/bestpay/plugin/CheckApkUpdater;->serverVersion:Ljava/lang/String;

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bestpay/plugin/CheckApkUpdater;->serverVersion:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bestpay/plugin/CheckApkUpdater;->clientVersion:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v18

    .line 189
    .local v18, "result":I
    if-lez v18, :cond_227

    .line 190
    invoke-interface/range {p2 .. p2}, Lcom/bestpay/plugin/CallBack;->execute()Z
    :try_end_212
    .catch Ljava/lang/Exception; {:try_start_16e .. :try_end_212} :catch_242
    .catchall {:try_start_16e .. :try_end_212} :catchall_258

    .line 205
    .end local v7    # "errorcode":Ljava/lang/String;
    .end local v14    # "obj":Lorg/json/JSONObject;
    .end local v18    # "result":I
    :cond_212
    :goto_212
    if-eqz v12, :cond_217

    .line 206
    :try_start_214
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    .line 207
    :cond_217
    invoke-virtual {v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_21e
    .catch Ljava/io/IOException; {:try_start_214 .. :try_end_21e} :catch_266

    .line 211
    .end local v17    # "response":Lorg/apache/http/HttpResponse;
    :goto_21e
    const/16 v21, 0x1

    :goto_220
    return v21

    .line 167
    .end local v11    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    :catch_221
    move-exception v6

    .line 168
    .local v6, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v6}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto/16 :goto_15a

    .line 205
    .end local v6    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v7    # "errorcode":Ljava/lang/String;
    .restart local v11    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v14    # "obj":Lorg/json/JSONObject;
    .restart local v17    # "response":Lorg/apache/http/HttpResponse;
    .restart local v18    # "result":I
    :cond_227
    if-eqz v12, :cond_22c

    .line 206
    :try_start_229
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    .line 207
    :cond_22c
    invoke-virtual {v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_233
    .catch Ljava/io/IOException; {:try_start_229 .. :try_end_233} :catch_26a

    .line 192
    :goto_233
    const/16 v21, 0x0

    goto :goto_220

    .line 196
    .end local v18    # "result":I
    :cond_236
    :try_start_236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bestpay/plugin/CheckApkUpdater;->handler:Landroid/os/Handler;

    move-object/from16 v21, v0

    const/16 v22, 0x4

    invoke-virtual/range {v21 .. v22}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_241
    .catch Ljava/lang/Exception; {:try_start_236 .. :try_end_241} :catch_242
    .catchall {:try_start_236 .. :try_end_241} :catchall_258

    goto :goto_212

    .line 200
    .end local v7    # "errorcode":Ljava/lang/String;
    .end local v14    # "obj":Lorg/json/JSONObject;
    .end local v17    # "response":Lorg/apache/http/HttpResponse;
    :catch_242
    move-exception v8

    .line 201
    .local v8, "ex":Ljava/lang/Exception;
    :try_start_243
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 202
    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;
    :try_end_249
    .catchall {:try_start_243 .. :try_end_249} :catchall_258

    .line 205
    if-eqz v12, :cond_24e

    .line 206
    :try_start_24b
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    .line 207
    :cond_24e
    invoke-virtual {v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_255
    .catch Ljava/io/IOException; {:try_start_24b .. :try_end_255} :catch_256

    goto :goto_21e

    .line 208
    :catch_256
    move-exception v21

    goto :goto_21e

    .line 203
    .end local v8    # "ex":Ljava/lang/Exception;
    :catchall_258
    move-exception v21

    .line 205
    if-eqz v12, :cond_25e

    .line 206
    :try_start_25b
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    .line 207
    :cond_25e
    invoke-virtual {v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_265
    .catch Ljava/io/IOException; {:try_start_25b .. :try_end_265} :catch_268

    .line 210
    :goto_265
    throw v21

    .line 208
    .restart local v17    # "response":Lorg/apache/http/HttpResponse;
    :catch_266
    move-exception v21

    goto :goto_21e

    .end local v17    # "response":Lorg/apache/http/HttpResponse;
    :catch_268
    move-exception v22

    goto :goto_265

    .restart local v7    # "errorcode":Ljava/lang/String;
    .restart local v14    # "obj":Lorg/json/JSONObject;
    .restart local v17    # "response":Lorg/apache/http/HttpResponse;
    .restart local v18    # "result":I
    :catch_26a
    move-exception v21

    goto :goto_233
.end method

.method public download(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .registers 22
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "filepath"    # Ljava/lang/String;
    .param p3, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 265
    const/4 v12, 0x0

    .line 266
    .local v12, "out":Ljava/io/FileOutputStream;
    const/4 v10, 0x0

    .line 267
    .local v10, "in":Ljava/io/InputStream;
    const/4 v7, 0x0

    .line 269
    .local v7, "file":Ljava/io/File;
    :try_start_3
    new-instance v2, Ljava/lang/StringBuffer;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 270
    .local v2, "buff":Ljava/lang/StringBuffer;
    new-instance v4, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v4}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 271
    .local v4, "client":Lorg/apache/http/client/HttpClient;
    new-instance v9, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v9, v15}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 272
    .local v9, "get":Lorg/apache/http/client/methods/HttpGet;
    invoke-interface {v4, v9}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v14

    .line 273
    .local v14, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    .line 274
    .local v6, "entityHttp":Lorg/apache/http/HttpEntity;
    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-int v15, v0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/bestpay/plugin/CheckApkUpdater;->totalSize:I

    .line 276
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/bestpay/plugin/CheckApkUpdater;->handler:Landroid/os/Handler;

    const/16 v16, 0x2

    invoke-virtual/range {v15 .. v16}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 277
    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v15

    invoke-interface {v15}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v15

    const/16 v16, 0xc8

    move/from16 v0, v16

    if-ne v15, v0, :cond_86

    .line 279
    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v15

    invoke-interface {v15}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v10

    .line 281
    new-instance v5, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 283
    .local v5, "dir":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v15

    if-nez v15, :cond_5a

    .line 284
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 286
    :cond_5a
    new-instance v8, Ljava/io/File;

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-direct {v8, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_63
    .catchall {:try_start_3 .. :try_end_63} :catchall_ad

    .line 288
    .end local v7    # "file":Ljava/io/File;
    .local v8, "file":Ljava/io/File;
    :try_start_63
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v15

    if-nez v15, :cond_6c

    .line 289
    invoke-virtual {v8}, Ljava/io/File;->createNewFile()Z

    .line 291
    :cond_6c
    new-instance v13, Ljava/io/FileOutputStream;

    invoke-direct {v13, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_71
    .catchall {:try_start_63 .. :try_end_71} :catchall_af

    .line 294
    .end local v12    # "out":Ljava/io/FileOutputStream;
    .local v13, "out":Ljava/io/FileOutputStream;
    const/16 v15, 0x400

    :try_start_73
    new-array v3, v15, [B

    .line 295
    .local v3, "buffer":[B
    const/4 v11, 0x0

    .line 296
    .local v11, "len":I
    :goto_76
    invoke-virtual {v10, v3}, Ljava/io/InputStream;->read([B)I

    move-result v11

    const/4 v15, -0x1

    if-ne v11, v15, :cond_91

    .line 300
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/bestpay/plugin/CheckApkUpdater;->context:Landroid/content/Context;

    invoke-static {v8, v15}, Lcom/bestpay/plugin/CheckApkUpdater;->install(Ljava/io/File;Landroid/content/Context;)V
    :try_end_84
    .catchall {:try_start_73 .. :try_end_84} :catchall_9f

    move-object v7, v8

    .end local v8    # "file":Ljava/io/File;
    .restart local v7    # "file":Ljava/io/File;
    move-object v12, v13

    .line 303
    .end local v3    # "buffer":[B
    .end local v5    # "dir":Ljava/io/File;
    .end local v11    # "len":I
    .end local v13    # "out":Ljava/io/FileOutputStream;
    .restart local v12    # "out":Ljava/io/FileOutputStream;
    :cond_86
    if-eqz v12, :cond_8b

    .line 304
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V

    .line 306
    :cond_8b
    if-eqz v10, :cond_90

    .line 307
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 310
    :cond_90
    return-object v7

    .line 297
    .end local v7    # "file":Ljava/io/File;
    .end local v12    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "buffer":[B
    .restart local v5    # "dir":Ljava/io/File;
    .restart local v8    # "file":Ljava/io/File;
    .restart local v11    # "len":I
    .restart local v13    # "out":Ljava/io/FileOutputStream;
    :cond_91
    const/4 v15, 0x0

    :try_start_92
    invoke-virtual {v13, v3, v15, v11}, Ljava/io/FileOutputStream;->write([BII)V

    .line 298
    move-object/from16 v0, p0

    iget v15, v0, Lcom/bestpay/plugin/CheckApkUpdater;->downedSize:I

    add-int/2addr v15, v11

    move-object/from16 v0, p0

    iput v15, v0, Lcom/bestpay/plugin/CheckApkUpdater;->downedSize:I
    :try_end_9e
    .catchall {:try_start_92 .. :try_end_9e} :catchall_9f

    goto :goto_76

    .line 302
    .end local v3    # "buffer":[B
    .end local v11    # "len":I
    :catchall_9f
    move-exception v15

    move-object v7, v8

    .end local v8    # "file":Ljava/io/File;
    .restart local v7    # "file":Ljava/io/File;
    move-object v12, v13

    .line 303
    .end local v2    # "buff":Ljava/lang/StringBuffer;
    .end local v4    # "client":Lorg/apache/http/client/HttpClient;
    .end local v5    # "dir":Ljava/io/File;
    .end local v6    # "entityHttp":Lorg/apache/http/HttpEntity;
    .end local v9    # "get":Lorg/apache/http/client/methods/HttpGet;
    .end local v13    # "out":Ljava/io/FileOutputStream;
    .end local v14    # "response":Lorg/apache/http/HttpResponse;
    .restart local v12    # "out":Ljava/io/FileOutputStream;
    :goto_a2
    if-eqz v12, :cond_a7

    .line 304
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V

    .line 306
    :cond_a7
    if-eqz v10, :cond_ac

    .line 307
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 309
    :cond_ac
    throw v15

    .line 302
    :catchall_ad
    move-exception v15

    goto :goto_a2

    .end local v7    # "file":Ljava/io/File;
    .restart local v2    # "buff":Ljava/lang/StringBuffer;
    .restart local v4    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v5    # "dir":Ljava/io/File;
    .restart local v6    # "entityHttp":Lorg/apache/http/HttpEntity;
    .restart local v8    # "file":Ljava/io/File;
    .restart local v9    # "get":Lorg/apache/http/client/methods/HttpGet;
    .restart local v14    # "response":Lorg/apache/http/HttpResponse;
    :catchall_af
    move-exception v15

    move-object v7, v8

    .end local v8    # "file":Ljava/io/File;
    .restart local v7    # "file":Ljava/io/File;
    goto :goto_a2
.end method

.method public downloadApk()V
    .registers 5

    .prologue
    .line 216
    :try_start_0
    iget-object v1, p0, Lcom/bestpay/plugin/CheckApkUpdater;->url:Ljava/lang/String;

    sget-object v2, Lcom/bestpay/plugin/CheckApkUpdater;->path:Ljava/lang/String;

    const-string v3, "bestpayplugin.apk"

    invoke-virtual {p0, v1, v2, v3}, Lcom/bestpay/plugin/CheckApkUpdater;->download(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    :try_end_9
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_9} :catch_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_9} :catch_14

    .line 224
    :goto_9
    return-void

    .line 217
    :catch_a
    move-exception v0

    .line 218
    .local v0, "e":Lorg/apache/http/client/ClientProtocolException;
    iget-object v1, p0, Lcom/bestpay/plugin/CheckApkUpdater;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->cancel()V

    .line 219
    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    goto :goto_9

    .line 220
    .end local v0    # "e":Lorg/apache/http/client/ClientProtocolException;
    :catch_14
    move-exception v0

    .line 221
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/bestpay/plugin/CheckApkUpdater;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->cancel()V

    .line 222
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9
.end method

.method public getInfo(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 322
    .line 323
    :try_start_0
    const-string v2, "phone"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 322
    iput-object v2, p0, Lcom/bestpay/plugin/CheckApkUpdater;->mTm:Landroid/telephony/TelephonyManager;

    .line 324
    iget-object v2, p0, Lcom/bestpay/plugin/CheckApkUpdater;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/bestpay/plugin/CheckApkUpdater;->imsi:Ljava/lang/String;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_35

    .line 329
    :goto_12
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v2, p0, Lcom/bestpay/plugin/CheckApkUpdater;->mtype:Ljava/lang/String;

    .line 330
    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    iput-object v2, p0, Lcom/bestpay/plugin/CheckApkUpdater;->mtyb:Ljava/lang/String;

    .line 331
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 332
    .local v1, "model":Ljava/lang/String;
    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v2, p0, Lcom/bestpay/plugin/CheckApkUpdater;->release:Ljava/lang/String;

    .line 336
    :try_start_20
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.chinatelecom.bestpayplugin"

    .line 335
    invoke-static {v2, v3}, Lcom/bestpay/util/PackageUtils;->getPackageVersionName(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/bestpay/plugin/CheckApkUpdater;->clientVersion:Ljava/lang/String;

    .line 337
    iget-object v2, p0, Lcom/bestpay/plugin/CheckApkUpdater;->clientVersion:Ljava/lang/String;

    if-nez v2, :cond_34

    .line 339
    const-string v2, "0.0.0"

    iput-object v2, p0, Lcom/bestpay/plugin/CheckApkUpdater;->clientVersion:Ljava/lang/String;
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_34} :catch_3b

    .line 346
    :cond_34
    :goto_34
    return-void

    .line 325
    .end local v1    # "model":Ljava/lang/String;
    :catch_35
    move-exception v0

    .line 326
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, ""

    iput-object v2, p0, Lcom/bestpay/plugin/CheckApkUpdater;->imsi:Ljava/lang/String;

    goto :goto_12

    .line 341
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "model":Ljava/lang/String;
    :catch_3b
    move-exception v0

    .line 342
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 343
    const-string v2, "0.0.0"

    iput-object v2, p0, Lcom/bestpay/plugin/CheckApkUpdater;->clientVersion:Ljava/lang/String;

    goto :goto_34
.end method

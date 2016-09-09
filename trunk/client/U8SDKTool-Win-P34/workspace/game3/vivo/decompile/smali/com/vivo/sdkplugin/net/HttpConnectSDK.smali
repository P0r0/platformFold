.class public Lcom/vivo/sdkplugin/net/HttpConnectSDK;
.super Ljava/lang/Object;


# static fields
.field public static final APP_VERSION_CODE:Ljava/lang/String; = "appVersion"

.field public static final APP_VERSION_NAME:Ljava/lang/String; = "appVersionName"

.field public static final CONNECTION_TYPE_MOBILE:I = 0x1

.field public static final CONNECTION_TYPE_NULL:I = 0x0

.field public static final CONNECTION_TYPE_WIFI:I = 0x2

.field public static final CONNECT_TYPE_HTTPCLIENT_GET:I = 0x0

.field public static final CONNECT_TYPE_HTTPCLIENT_HEAD:I = 0x4

.field public static final CONNECT_TYPE_HTTPCLIENT_POST:I = 0x1

.field public static final DEFAULT_USER_AGENT:Ljava/lang/String; = "BBKAccount"

.field public static final ELAPSED_TIME_TAG:Ljava/lang/String; = "elapsedtime"

.field public static final MIEI_CODE_TAG:Ljava/lang/String; = "imei"

.field public static final MODEL_NUMBER_TAG:Ljava/lang/String; = "model"

.field public static final PARAM_KEY_PIXEL:Ljava/lang/String; = "pixel"

.field public static final PARAM_NETWORK_TYPE:Ljava/lang/String; = "nt"

.field public static final PARAM_NET_STATE_CLASS_1:Ljava/lang/String; = "net_state_class_1"

.field public static final PARAM_NET_STATE_CLASS_2:Ljava/lang/String; = "net_state_class_2"

.field public static final PARAM_SIM_COUNT:Ljava/lang/String; = "sf"

.field public static final PARAM_SIM_MODE1:Ljava/lang/String; = "sm1"

.field public static final PARAM_SIM_MODE2:Ljava/lang/String; = "sm2"

.field public static final PARAM_SIM_NAME1:Ljava/lang/String; = "sn1"

.field public static final PARAM_SIM_NAME2:Ljava/lang/String; = "sn2"

.field public static final PARAM_SIM_NETCLASS_1:Ljava/lang/String; = "srm1"

.field public static final PARAM_SIM_NETCLASS_2:Ljava/lang/String; = "srm2"

.field public static final PARAM_SIM_TIME1:Ljava/lang/String; = "st1"

.field public static final PARAM_SIM_TIME2:Ljava/lang/String; = "st2"

.field public static final PARAM_SIM_TYPE_1:Ljava/lang/String; = "sim_type_1"

.field public static final PARAM_SIM_TYPE_2:Ljava/lang/String; = "sim_type_2"

.field public static final REQUEST_SOURCE_TAG:Ljava/lang/String; = "cs"

.field public static final RETURN_TYPE_DEFAULT_IS_STRING:I = 0x0

.field public static final RETURN_TYPE_IS_RESPONSE:I = 0x1

.field public static final TAG_FILE:Ljava/lang/String; = "file"


# instance fields
.field private a:Z

.field private b:Landroid/content/Context;

.field private c:Ljava/lang/Object;

.field private d:Lcom/vivo/sdkplugin/net/HttpResponedSDK;

.field private e:Ljava/lang/String;

.field private f:Ljava/util/HashMap;

.field private g:Lorg/apache/http/client/HttpClient;

.field private h:I

.field private i:I

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:I

.field private m:Z

.field private n:Ljava/net/HttpURLConnection;

.field private o:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v3, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->a:Z

    iput-object v1, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->b:Landroid/content/Context;

    iput-object v1, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->c:Ljava/lang/Object;

    iput-object v1, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->d:Lcom/vivo/sdkplugin/net/HttpResponedSDK;

    iput-object v1, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->e:Ljava/lang/String;

    iput-object v1, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->f:Ljava/util/HashMap;

    iput-object v1, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->g:Lorg/apache/http/client/HttpClient;

    const/4 v0, -0x1

    iput v0, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->h:I

    iput v2, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->i:I

    iput-object v1, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->j:Ljava/lang/String;

    iput-object v1, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->k:Ljava/lang/String;

    iput v2, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->l:I

    iput-boolean v2, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->m:Z

    iput-object p1, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->b:Landroid/content/Context;

    if-nez p2, :cond_67

    const-string v0, "BBKAccount"

    iput-object v0, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->k:Ljava/lang/String;

    :goto_29
    iput-object p3, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->j:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->m:Z

    iget-object v0, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->k:Ljava/lang/String;

    iget-object v1, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->b:Landroid/content/Context;

    invoke-static {v0, v1}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;Landroid/content/Context;)Landroid/net/http/AndroidHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->g:Lorg/apache/http/client/HttpClient;

    iget-object v0, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->g:Lorg/apache/http/client/HttpClient;

    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;

    const/4 v2, 0x3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;-><init>(IZ)V

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    const-string v3, "http.method.retry-handler"

    invoke-interface {v2, v3, v1}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    const-string v2, "http.connection.timeout"

    const/16 v3, 0x3a98

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const-string v1, "http.socket.timeout"

    const/16 v2, 0x4e20

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    return-void

    :cond_67
    iput-object p2, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->k:Ljava/lang/String;

    goto :goto_29
.end method

.method private a(Ljava/lang/String;Ljava/util/HashMap;I)V
    .registers 18

    move-object v4, p1

    :goto_1
    if-nez p3, :cond_f6

    const-string v2, ""

    :try_start_5
    invoke-virtual/range {p2 .. p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v5, v2

    :goto_e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z
    :try_end_11
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_11} :catch_cf

    move-result v2

    if-nez v2, :cond_69

    const-string v2, ""

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5d9

    const-string v2, "&"

    const-string v3, "?"

    invoke-virtual {v5, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_35
    iget-boolean v3, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->a:Z

    if-eqz v3, :cond_4d

    const-string v3, "HttpConnect"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "doHttpClient, doGet the url after encode is "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4d
    :try_start_4d
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v3, v2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
    :try_end_52
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4d .. :try_end_52} :catch_e2

    :cond_52
    :goto_52
    iget-object v6, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->g:Lorg/apache/http/client/HttpClient;

    iget-boolean v2, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->m:Z

    if-nez v2, :cond_5a

    if-nez v6, :cond_260

    :cond_5a
    iget-object v2, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->d:Lcom/vivo/sdkplugin/net/HttpResponedSDK;

    if-eqz v2, :cond_68

    iget-object v2, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->d:Lcom/vivo/sdkplugin/net/HttpResponedSDK;

    iget-object v3, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->c:Ljava/lang/Object;

    const/16 v4, 0xcf

    const/4 v5, 0x0

    invoke-interface {v2, p0, v3, v4, v5}, Lcom/vivo/sdkplugin/net/HttpResponedSDK;->respond(Lcom/vivo/sdkplugin/net/HttpConnectSDK;Ljava/lang/Object;ILjava/lang/String;)V

    :cond_68
    :goto_68
    return-void

    :cond_69
    :try_start_69
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v3, :cond_93

    const-string v7, "city"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c0

    const-string v7, "gbk"

    invoke-static {v3, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_93

    const-string v7, "gbk"

    invoke-static {v2, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_93
    :goto_93
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "&"

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v5, v2

    goto/16 :goto_e

    :cond_c0
    const-string v7, "UTF-8"

    invoke-static {v3, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_93

    const-string v7, "UTF-8"

    invoke-static {v2, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_cd
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_69 .. :try_end_cd} :catch_cf

    move-result-object v2

    goto :goto_93

    :catch_cf
    move-exception v2

    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    iget-object v2, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->d:Lcom/vivo/sdkplugin/net/HttpResponedSDK;

    if-eqz v2, :cond_68

    iget-object v2, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->d:Lcom/vivo/sdkplugin/net/HttpResponedSDK;

    iget-object v3, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->c:Ljava/lang/Object;

    const/16 v4, 0xc9

    const/4 v5, 0x0

    invoke-interface {v2, p0, v3, v4, v5}, Lcom/vivo/sdkplugin/net/HttpResponedSDK;->respond(Lcom/vivo/sdkplugin/net/HttpConnectSDK;Ljava/lang/Object;ILjava/lang/String;)V

    goto :goto_68

    :catch_e2
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    iget-object v2, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->d:Lcom/vivo/sdkplugin/net/HttpResponedSDK;

    if-eqz v2, :cond_68

    iget-object v2, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->d:Lcom/vivo/sdkplugin/net/HttpResponedSDK;

    iget-object v3, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->c:Ljava/lang/Object;

    const/16 v4, 0xc9

    const/4 v5, 0x0

    invoke-interface {v2, p0, v3, v4, v5}, Lcom/vivo/sdkplugin/net/HttpResponedSDK;->respond(Lcom/vivo/sdkplugin/net/HttpConnectSDK;Ljava/lang/Object;ILjava/lang/String;)V

    goto/16 :goto_68

    :cond_f6
    const/4 v2, 0x1

    move/from16 v0, p3

    if-ne v0, v2, :cond_228

    const/4 v2, 0x0

    if-eqz p2, :cond_5d6

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p2 .. p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_10b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_183

    :goto_111
    :try_start_111
    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v3, v4}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->a:Z

    if-eqz v2, :cond_13a

    const-string v2, "httpRequest"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "doHttpClient, doPost the url = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", params = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_111 .. :try_end_13a} :catch_19f

    :cond_13a
    if-eqz p2, :cond_1b3

    :try_start_13c
    const-string v2, "sdkeventdata"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b3

    const-string v2, "sdkeventdata"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-virtual {v2, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->compress([B)[B

    move-result-object v2

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v6, Lorg/apache/http/entity/InputStreamEntity;

    array-length v2, v2

    int-to-long v8, v2

    invoke-direct {v6, v5, v8, v9}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    move-object v0, v3

    check-cast v0, Lorg/apache/http/client/methods/HttpPost;

    move-object v2, v0

    invoke-virtual {v2, v6}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_16d
    .catch Ljava/lang/Exception; {:try_start_13c .. :try_end_16d} :catch_16f

    goto/16 :goto_52

    :catch_16f
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v2, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->d:Lcom/vivo/sdkplugin/net/HttpResponedSDK;

    if-eqz v2, :cond_68

    iget-object v2, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->d:Lcom/vivo/sdkplugin/net/HttpResponedSDK;

    iget-object v3, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->c:Ljava/lang/Object;

    const/16 v4, 0xc9

    const/4 v5, 0x0

    invoke-interface {v2, p0, v3, v4, v5}, Lcom/vivo/sdkplugin/net/HttpResponedSDK;->respond(Lcom/vivo/sdkplugin/net/HttpConnectSDK;Ljava/lang/Object;ILjava/lang/String;)V

    goto/16 :goto_68

    :cond_183
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    invoke-direct {v7, v3, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_10b

    :catch_19f
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    iget-object v2, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->d:Lcom/vivo/sdkplugin/net/HttpResponedSDK;

    if-eqz v2, :cond_68

    iget-object v2, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->d:Lcom/vivo/sdkplugin/net/HttpResponedSDK;

    iget-object v3, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->c:Ljava/lang/Object;

    const/16 v4, 0xc9

    const/4 v5, 0x0

    invoke-interface {v2, p0, v3, v4, v5}, Lcom/vivo/sdkplugin/net/HttpResponedSDK;->respond(Lcom/vivo/sdkplugin/net/HttpConnectSDK;Ljava/lang/Object;ILjava/lang/String;)V

    goto/16 :goto_68

    :cond_1b3
    if-eqz p2, :cond_216

    :try_start_1b5
    const-string v2, "elog"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_216

    new-instance v6, Lorg/apache/http/entity/mime/MultipartEntity;

    invoke-direct {v6}, Lorg/apache/http/entity/mime/MultipartEntity;-><init>()V

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1c8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1d7

    move-object v0, v3

    check-cast v0, Lorg/apache/http/client/methods/HttpPost;

    move-object v2, v0

    invoke-virtual {v2, v6}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    goto/16 :goto_52

    :cond_1d7
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/http/NameValuePair;

    invoke-interface {v2}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "elog"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1ff

    new-instance v7, Lorg/apache/http/entity/mime/content/FileBody;

    new-instance v8, Ljava/io/File;

    invoke-interface {v2}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v8}, Lorg/apache/http/entity/mime/content/FileBody;-><init>(Ljava/io/File;)V

    invoke-interface {v2}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2, v7}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    goto :goto_1c8

    :cond_1ff
    invoke-interface {v2}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lorg/apache/http/entity/mime/content/StringBody;

    invoke-interface {v2}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v2

    const-string v9, "UTF-8"

    invoke-static {v9}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v9

    invoke-direct {v8, v2, v9}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    invoke-virtual {v6, v7, v8}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    goto :goto_1c8

    :cond_216
    if-eqz v5, :cond_52

    move-object v0, v3

    check-cast v0, Lorg/apache/http/client/methods/HttpPost;

    move-object v2, v0

    new-instance v6, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v7, "UTF-8"

    invoke-direct {v6, v5, v7}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_226
    .catch Ljava/lang/Exception; {:try_start_1b5 .. :try_end_226} :catch_16f

    goto/16 :goto_52

    :cond_228
    const/4 v2, 0x4

    move/from16 v0, p3

    if-ne v0, v2, :cond_248

    :try_start_22d
    new-instance v3, Lorg/apache/http/client/methods/HttpHead;

    invoke-direct {v3, v4}, Lorg/apache/http/client/methods/HttpHead;-><init>(Ljava/lang/String;)V
    :try_end_232
    .catch Ljava/lang/IllegalArgumentException; {:try_start_22d .. :try_end_232} :catch_234

    goto/16 :goto_52

    :catch_234
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    iget-object v2, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->d:Lcom/vivo/sdkplugin/net/HttpResponedSDK;

    if-eqz v2, :cond_68

    iget-object v2, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->d:Lcom/vivo/sdkplugin/net/HttpResponedSDK;

    iget-object v3, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->c:Ljava/lang/Object;

    const/16 v4, 0xc9

    const/4 v5, 0x0

    invoke-interface {v2, p0, v3, v4, v5}, Lcom/vivo/sdkplugin/net/HttpResponedSDK;->respond(Lcom/vivo/sdkplugin/net/HttpConnectSDK;Ljava/lang/Object;ILjava/lang/String;)V

    goto/16 :goto_68

    :cond_248
    const-string v2, "HttpConnect"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "doHttpClient, unspport connect type: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_68

    :cond_260
    iget-object v2, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->b:Landroid/content/Context;

    const-string v5, "connectivity"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    if-nez v2, :cond_287

    iget-object v2, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->d:Lcom/vivo/sdkplugin/net/HttpResponedSDK;

    if-eqz v2, :cond_68

    iget-object v2, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->d:Lcom/vivo/sdkplugin/net/HttpResponedSDK;

    iget-object v3, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->c:Ljava/lang/Object;

    const/16 v4, 0xca

    const/4 v5, 0x0

    invoke-interface {v2, p0, v3, v4, v5}, Lcom/vivo/sdkplugin/net/HttpResponedSDK;->respond(Lcom/vivo/sdkplugin/net/HttpConnectSDK;Ljava/lang/Object;ILjava/lang/String;)V

    const-string v2, "HttpConnect"

    const-string v3, "connect failed"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_68

    :cond_287
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-nez v2, :cond_2d4

    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v5

    if-eqz v2, :cond_2d4

    const/4 v7, -0x1

    if-eq v5, v7, :cond_2d4

    iget-boolean v7, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->a:Z

    if-eqz v7, :cond_2bc

    const-string v7, "HttpConnect"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "doHttpClient, Proxy host: is "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " port is: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2bc
    new-instance v7, Lorg/apache/http/HttpHost;

    const-string v8, "http"

    invoke-direct {v7, v2, v5, v8}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v6}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    const-string v5, "http.route.default-proxy"

    invoke-interface {v2, v5, v7}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    invoke-interface {v6}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    const/4 v5, 0x1

    invoke-static {v2, v5}, Lorg/apache/http/client/params/HttpClientParams;->setRedirecting(Lorg/apache/http/params/HttpParams;Z)V

    :cond_2d4
    invoke-interface {v6}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    const/4 v5, 0x1

    invoke-static {v2, v5}, Lorg/apache/http/client/params/HttpClientParams;->setRedirecting(Lorg/apache/http/params/HttpParams;Z)V

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-boolean v7, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->a:Z

    if-eqz v7, :cond_2fa

    const-string v7, "HttpConnect"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "doHttpClient, start execute httpRequest, the base url = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2fa
    const-string v7, "Cache-Control"

    const-string v10, "no-cache"

    invoke-virtual {v3, v7, v10}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_301
    invoke-interface {v6, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    const-string v7, "HttpConnect"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "doHttpClient, http response status = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_321
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_301 .. :try_end_321} :catch_33d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_301 .. :try_end_321} :catch_35b
    .catch Ljava/io/IOException; {:try_start_301 .. :try_end_321} :catch_379
    .catch Ljava/lang/IllegalStateException; {:try_start_301 .. :try_end_321} :catch_3aa
    .catch Ljava/lang/NullPointerException; {:try_start_301 .. :try_end_321} :catch_3db

    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    if-nez v7, :cond_423

    invoke-virtual {v3}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    const-string v2, "HttpConnect"

    const-string v3, "doHttpClientConnect, get status line is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->i:I

    if-lez v2, :cond_40c

    iget v2, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->i:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->i:I

    goto/16 :goto_1

    :catch_33d
    move-exception v2

    invoke-virtual {v2}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    invoke-virtual {v3}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    const-string v2, "HttpConnect"

    const-string v3, "doHttpClientConnect, can\'t connect because ClientProtocolException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->d:Lcom/vivo/sdkplugin/net/HttpResponedSDK;

    if-eqz v2, :cond_68

    iget-object v2, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->d:Lcom/vivo/sdkplugin/net/HttpResponedSDK;

    iget-object v3, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->c:Ljava/lang/Object;

    const/16 v4, 0xc9

    const/4 v5, 0x0

    invoke-interface {v2, p0, v3, v4, v5}, Lcom/vivo/sdkplugin/net/HttpResponedSDK;->respond(Lcom/vivo/sdkplugin/net/HttpConnectSDK;Ljava/lang/Object;ILjava/lang/String;)V

    goto/16 :goto_68

    :catch_35b
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    invoke-virtual {v3}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    const-string v2, "HttpConnect"

    const-string v3, "doHttpClientConnect, can\'t connect because IllegalArgumentException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->d:Lcom/vivo/sdkplugin/net/HttpResponedSDK;

    if-eqz v2, :cond_68

    iget-object v2, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->d:Lcom/vivo/sdkplugin/net/HttpResponedSDK;

    iget-object v3, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->c:Ljava/lang/Object;

    const/16 v4, 0xca

    const/4 v5, 0x0

    invoke-interface {v2, p0, v3, v4, v5}, Lcom/vivo/sdkplugin/net/HttpResponedSDK;->respond(Lcom/vivo/sdkplugin/net/HttpConnectSDK;Ljava/lang/Object;ILjava/lang/String;)V

    goto/16 :goto_68

    :catch_379
    move-exception v2

    const-string v5, "HttpConnect"

    const-string v6, "doHttpClientConnect, get a IOException when connect to server"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    invoke-virtual {v3}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    iget v2, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->i:I

    if-lez v2, :cond_393

    iget v2, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->i:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->i:I

    goto/16 :goto_1

    :cond_393
    const-string v2, "HttpConnect"

    const-string v3, "doHttpClientConnect, can\'t connect because IOException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->d:Lcom/vivo/sdkplugin/net/HttpResponedSDK;

    if-eqz v2, :cond_68

    iget-object v2, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->d:Lcom/vivo/sdkplugin/net/HttpResponedSDK;

    iget-object v3, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->c:Ljava/lang/Object;

    const/16 v4, 0xca

    const/4 v5, 0x0

    invoke-interface {v2, p0, v3, v4, v5}, Lcom/vivo/sdkplugin/net/HttpResponedSDK;->respond(Lcom/vivo/sdkplugin/net/HttpConnectSDK;Ljava/lang/Object;ILjava/lang/String;)V

    goto/16 :goto_68

    :catch_3aa
    move-exception v2

    const-string v5, "HttpConnect"

    const-string v6, "doHttpClientConnect, get a IllegalStateException when connect to server"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->printStackTrace()V

    invoke-virtual {v3}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    iget v2, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->i:I

    if-lez v2, :cond_3c4

    iget v2, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->i:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->i:I

    goto/16 :goto_1

    :cond_3c4
    const-string v2, "HttpConnect"

    const-string v3, "doHttpClientConnect, can\'t connect because IllegalStateException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->d:Lcom/vivo/sdkplugin/net/HttpResponedSDK;

    if-eqz v2, :cond_68

    iget-object v2, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->d:Lcom/vivo/sdkplugin/net/HttpResponedSDK;

    iget-object v3, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->c:Ljava/lang/Object;

    const/16 v4, 0xca

    const/4 v5, 0x0

    invoke-interface {v2, p0, v3, v4, v5}, Lcom/vivo/sdkplugin/net/HttpResponedSDK;->respond(Lcom/vivo/sdkplugin/net/HttpConnectSDK;Ljava/lang/Object;ILjava/lang/String;)V

    goto/16 :goto_68

    :catch_3db
    move-exception v2

    const-string v5, "HttpConnect"

    const-string v6, "doHttpClientConnect, get a NullPointerException when connect to server"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    invoke-virtual {v3}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    iget v2, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->i:I

    if-lez v2, :cond_3f5

    iget v2, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->i:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->i:I

    goto/16 :goto_1

    :cond_3f5
    const-string v2, "HttpConnect"

    const-string v3, "doHttpClientConnect, can\'t connect because NullPointerException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->d:Lcom/vivo/sdkplugin/net/HttpResponedSDK;

    if-eqz v2, :cond_68

    iget-object v2, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->d:Lcom/vivo/sdkplugin/net/HttpResponedSDK;

    iget-object v3, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->c:Ljava/lang/Object;

    const/16 v4, 0xca

    const/4 v5, 0x0

    invoke-interface {v2, p0, v3, v4, v5}, Lcom/vivo/sdkplugin/net/HttpResponedSDK;->respond(Lcom/vivo/sdkplugin/net/HttpConnectSDK;Ljava/lang/Object;ILjava/lang/String;)V

    goto/16 :goto_68

    :cond_40c
    const-string v2, "HttpConnect"

    const-string v3, "can not get the status code"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->d:Lcom/vivo/sdkplugin/net/HttpResponedSDK;

    if-eqz v2, :cond_68

    iget-object v2, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->d:Lcom/vivo/sdkplugin/net/HttpResponedSDK;

    iget-object v3, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->c:Ljava/lang/Object;

    const/16 v4, 0xcc

    const/4 v5, 0x0

    invoke-interface {v2, p0, v3, v4, v5}, Lcom/vivo/sdkplugin/net/HttpResponedSDK;->respond(Lcom/vivo/sdkplugin/net/HttpConnectSDK;Ljava/lang/Object;ILjava/lang/String;)V

    goto/16 :goto_68

    :cond_423
    invoke-interface {v7}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v8, v10, v8

    iget-boolean v10, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->a:Z

    if-eqz v10, :cond_44f

    const-string v10, "HttpConnect"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "tt2 = "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", baseUrl = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_44f
    const/16 v8, 0xc8

    if-ne v7, v8, :cond_577

    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v7

    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    if-eqz v7, :cond_495

    :try_start_45e
    invoke-interface {v7}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_461
    .catch Ljava/lang/IllegalStateException; {:try_start_45e .. :try_end_461} :catch_5cc
    .catch Ljava/io/IOException; {:try_start_45e .. :try_end_461} :catch_51e
    .catchall {:try_start_45e .. :try_end_461} :catchall_5be

    move-result-object v2

    :try_start_462
    const-string v5, "Content-Encoding"

    invoke-interface {v6, v5}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v5

    if-eqz v5, :cond_5d3

    invoke-interface {v5}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    const-string v6, "gzip"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5d3

    new-instance v5, Ljava/util/zip/GZIPInputStream;

    new-instance v6, Ljava/io/BufferedInputStream;

    invoke-direct {v6, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v6}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_480
    .catch Ljava/lang/IllegalStateException; {:try_start_462 .. :try_end_480} :catch_5d0
    .catch Ljava/io/IOException; {:try_start_462 .. :try_end_480} :catch_5c6
    .catchall {:try_start_462 .. :try_end_480} :catchall_5c1

    :goto_480
    const/16 v2, 0x2000

    :try_start_482
    new-array v7, v2, [B

    const/4 v6, 0x0

    const/4 v2, 0x0

    array-length v9, v7

    div-int/lit8 v9, v9, 0x2

    :goto_489
    const/4 v10, -0x1

    if-ne v6, v10, :cond_4bb

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;
    :try_end_48f
    .catch Ljava/lang/IllegalStateException; {:try_start_482 .. :try_end_48f} :catch_4d5
    .catch Ljava/io/IOException; {:try_start_482 .. :try_end_48f} :catch_51e
    .catchall {:try_start_482 .. :try_end_48f} :catchall_5be

    move-result-object v2

    if-eqz v5, :cond_495

    :try_start_492
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_495
    .catch Ljava/io/IOException; {:try_start_492 .. :try_end_495} :catch_571

    :cond_495
    :goto_495
    iget-object v4, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->d:Lcom/vivo/sdkplugin/net/HttpResponedSDK;

    if-eqz v4, :cond_4b6

    const-string v4, "HttpConnect"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "inputSteamString"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->d:Lcom/vivo/sdkplugin/net/HttpResponedSDK;

    iget-object v5, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->c:Ljava/lang/Object;

    const/16 v6, 0x12c

    invoke-interface {v4, p0, v5, v6, v2}, Lcom/vivo/sdkplugin/net/HttpResponedSDK;->respond(Lcom/vivo/sdkplugin/net/HttpConnectSDK;Ljava/lang/Object;ILjava/lang/String;)V

    :cond_4b6
    invoke-virtual {v3}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    goto/16 :goto_68

    :cond_4bb
    :try_start_4bb
    monitor-enter p0
    :try_end_4bc
    .catch Ljava/lang/IllegalStateException; {:try_start_4bb .. :try_end_4bc} :catch_4d5
    .catch Ljava/io/IOException; {:try_start_4bb .. :try_end_4bc} :catch_51e
    .catchall {:try_start_4bb .. :try_end_4bc} :catchall_5be

    :try_start_4bc
    array-length v6, v7

    sub-int/2addr v6, v2

    invoke-virtual {v5, v7, v2, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    const/4 v10, -0x1

    if-eq v6, v10, :cond_4c6

    add-int/2addr v2, v6

    :cond_4c6
    const/4 v10, -0x1

    if-eq v6, v10, :cond_4cb

    if-lt v2, v9, :cond_4d0

    :cond_4cb
    const/4 v10, 0x0

    invoke-virtual {v8, v7, v10, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    const/4 v2, 0x0

    :cond_4d0
    monitor-exit p0
    :try_end_4d1
    .catchall {:try_start_4bc .. :try_end_4d1} :catchall_4d2

    goto :goto_489

    :catchall_4d2
    move-exception v2

    :try_start_4d3
    monitor-exit p0

    throw v2
    :try_end_4d5
    .catch Ljava/lang/IllegalStateException; {:try_start_4d3 .. :try_end_4d5} :catch_4d5
    .catch Ljava/io/IOException; {:try_start_4d3 .. :try_end_4d5} :catch_51e
    .catchall {:try_start_4d3 .. :try_end_4d5} :catchall_5be

    :catch_4d5
    move-exception v2

    move-object v2, v5

    :goto_4d7
    :try_start_4d7
    invoke-virtual {v3}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    const-string v3, "HttpConnect"

    const-string v5, "doHttpClientConnect, get an IllegalStateException when get content from HttpResonse"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->i:I

    if-lez v3, :cond_4ff

    iget v3, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->i:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->i:I

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-direct {p0, v4, v0, v1}, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->a(Ljava/lang/String;Ljava/util/HashMap;I)V
    :try_end_4f2
    .catchall {:try_start_4d7 .. :try_end_4f2} :catchall_515

    :cond_4f2
    :goto_4f2
    if-eqz v2, :cond_68

    :try_start_4f4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4f7
    .catch Ljava/io/IOException; {:try_start_4f4 .. :try_end_4f7} :catch_4f9

    goto/16 :goto_68

    :catch_4f9
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_68

    :cond_4ff
    :try_start_4ff
    const-string v3, "HttpConnect"

    const-string v4, "doHttpClientConnect, can not get content from HttpResponse because IllegalStateException"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->d:Lcom/vivo/sdkplugin/net/HttpResponedSDK;

    if-eqz v3, :cond_4f2

    iget-object v3, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->d:Lcom/vivo/sdkplugin/net/HttpResponedSDK;

    iget-object v4, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->c:Ljava/lang/Object;

    const/16 v5, 0xce

    const/4 v6, 0x0

    invoke-interface {v3, p0, v4, v5, v6}, Lcom/vivo/sdkplugin/net/HttpResponedSDK;->respond(Lcom/vivo/sdkplugin/net/HttpConnectSDK;Ljava/lang/Object;ILjava/lang/String;)V
    :try_end_514
    .catchall {:try_start_4ff .. :try_end_514} :catchall_515

    goto :goto_4f2

    :catchall_515
    move-exception v3

    move-object v5, v2

    move-object v2, v3

    :goto_518
    if-eqz v5, :cond_51d

    :try_start_51a
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_51d
    .catch Ljava/io/IOException; {:try_start_51a .. :try_end_51d} :catch_56c

    :cond_51d
    :goto_51d
    throw v2

    :catch_51e
    move-exception v2

    :goto_51f
    :try_start_51f
    invoke-virtual {v3}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    const-string v2, "HttpConnect"

    const-string v3, "doHttpClientConnect, get an IOException when get content from HttpResponse"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->i:I

    if-lez v2, :cond_54a

    iget v2, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->i:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->i:I

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-direct {p0, v4, v0, v1}, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->a(Ljava/lang/String;Ljava/util/HashMap;I)V
    :try_end_53d
    .catchall {:try_start_51f .. :try_end_53d} :catchall_5be

    if-eqz v5, :cond_68

    :try_start_53f
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_542
    .catch Ljava/io/IOException; {:try_start_53f .. :try_end_542} :catch_544

    goto/16 :goto_68

    :catch_544
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_68

    :cond_54a
    :try_start_54a
    const-string v2, "HttpConnect"

    const-string v3, "doHttpClientConnect, can not get content from HttpResponse because IOException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->d:Lcom/vivo/sdkplugin/net/HttpResponedSDK;

    if-eqz v2, :cond_55f

    iget-object v2, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->d:Lcom/vivo/sdkplugin/net/HttpResponedSDK;

    iget-object v3, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->c:Ljava/lang/Object;

    const/16 v4, 0xce

    const/4 v6, 0x0

    invoke-interface {v2, p0, v3, v4, v6}, Lcom/vivo/sdkplugin/net/HttpResponedSDK;->respond(Lcom/vivo/sdkplugin/net/HttpConnectSDK;Ljava/lang/Object;ILjava/lang/String;)V
    :try_end_55f
    .catchall {:try_start_54a .. :try_end_55f} :catchall_5be

    :cond_55f
    if-eqz v5, :cond_68

    :try_start_561
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_564
    .catch Ljava/io/IOException; {:try_start_561 .. :try_end_564} :catch_566

    goto/16 :goto_68

    :catch_566
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_68

    :catch_56c
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_51d

    :catch_571
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_495

    :cond_577
    invoke-virtual {v3}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    const-string v2, "HttpConnect"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "doHttpClientConnect, get wrong status code : "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->i:I

    if-lez v2, :cond_59a

    iget v2, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->i:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->i:I

    goto/16 :goto_1

    :cond_59a
    const-string v2, "HttpConnect"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "doHttpClientConnect, status code error, status code is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->d:Lcom/vivo/sdkplugin/net/HttpResponedSDK;

    if-eqz v2, :cond_68

    iget-object v2, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->d:Lcom/vivo/sdkplugin/net/HttpResponedSDK;

    iget-object v3, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->c:Ljava/lang/Object;

    const/16 v4, 0xcd

    const/4 v5, 0x0

    invoke-interface {v2, p0, v3, v4, v5}, Lcom/vivo/sdkplugin/net/HttpResponedSDK;->respond(Lcom/vivo/sdkplugin/net/HttpConnectSDK;Ljava/lang/Object;ILjava/lang/String;)V

    goto/16 :goto_68

    :catchall_5be
    move-exception v2

    goto/16 :goto_518

    :catchall_5c1
    move-exception v3

    move-object v5, v2

    move-object v2, v3

    goto/16 :goto_518

    :catch_5c6
    move-exception v5

    move-object v13, v5

    move-object v5, v2

    move-object v2, v13

    goto/16 :goto_51f

    :catch_5cc
    move-exception v2

    move-object v2, v5

    goto/16 :goto_4d7

    :catch_5d0
    move-exception v5

    goto/16 :goto_4d7

    :cond_5d3
    move-object v5, v2

    goto/16 :goto_480

    :cond_5d6
    move-object v5, v2

    goto/16 :goto_111

    :cond_5d9
    move-object v2, v4

    goto/16 :goto_35
.end method

.method private b(Ljava/lang/String;Ljava/util/HashMap;I)Ljava/io/InputStream;
    .registers 10

    const/4 v2, 0x0

    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->j:Ljava/lang/String;

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->j:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_46

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->n:Ljava/net/HttpURLConnection;
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_37} :catch_56

    :goto_37
    iget-object v0, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->n:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_74

    iget v0, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->i:I

    if-lez v0, :cond_6b

    iget v0, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->i:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->i:I

    goto :goto_1

    :cond_46
    :try_start_46
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->e:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->n:Ljava/net/HttpURLConnection;
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_55} :catch_56

    goto :goto_37

    :catch_56
    move-exception v0

    iget v0, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->i:I

    if-lez v0, :cond_62

    iget v0, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->i:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->i:I

    goto :goto_1

    :cond_62
    const-string v0, "HttpConnect"

    const-string v1, "\u8054\u7f51\u521b\u5efa\u51fa\u9519"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    :goto_6a
    return-object v0

    :cond_6b
    const-string v0, "HttpConnect"

    const-string v1, "\u65e0\u6cd5\u5efa\u7acb\u8fde\u63a5."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    goto :goto_6a

    :cond_74
    const/4 v0, 0x3

    if-ne p3, v0, :cond_df

    :try_start_77
    iget-object v0, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->n:Ljava/net/HttpURLConnection;

    const-string v1, "request-hs"

    const-string v3, "post"

    invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :goto_80
    iget-object v0, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->j:Ljava/lang/String;

    if-eqz v0, :cond_b1

    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->e:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->n:Ljava/net/HttpURLConnection;

    const-string v3, "X-Online-Host"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/net/URL;->getPort()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b1
    if-eqz p2, :cond_c1

    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_bb
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
    :try_end_be
    .catch Ljava/lang/IllegalStateException; {:try_start_77 .. :try_end_be} :catch_ec
    .catch Ljava/lang/NullPointerException; {:try_start_77 .. :try_end_be} :catch_133
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_77 .. :try_end_be} :catch_13f
    .catch Ljava/net/MalformedURLException; {:try_start_77 .. :try_end_be} :catch_14b

    move-result v0

    if-nez v0, :cond_10f

    :cond_c1
    :try_start_c1
    iget-object v0, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->n:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_c6
    .catch Ljava/lang/Exception; {:try_start_c1 .. :try_end_c6} :catch_157

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_1ae

    :try_start_cb
    iget-object v0, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->n:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->o:Ljava/io/InputStream;

    iget-object v0, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->o:Ljava/io/InputStream;

    if-eqz v0, :cond_173

    iget-object v0, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->n:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    iget-object v0, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->o:Ljava/io/InputStream;
    :try_end_de
    .catch Ljava/io/IOException; {:try_start_cb .. :try_end_de} :catch_192

    goto :goto_6a

    :cond_df
    const/4 v0, 0x2

    if-ne p3, v0, :cond_f8

    :try_start_e2
    iget-object v0, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->n:Ljava/net/HttpURLConnection;

    const-string v1, "request-hs"

    const-string v3, "get"

    invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_eb
    .catch Ljava/lang/IllegalStateException; {:try_start_e2 .. :try_end_eb} :catch_ec
    .catch Ljava/lang/NullPointerException; {:try_start_e2 .. :try_end_eb} :catch_133
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_e2 .. :try_end_eb} :catch_13f
    .catch Ljava/net/MalformedURLException; {:try_start_e2 .. :try_end_eb} :catch_14b

    goto :goto_80

    :catch_ec
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    iget-object v0, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->n:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object v0, v2

    goto/16 :goto_6a

    :cond_f8
    :try_start_f8
    const-string v0, "HttpConnect"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "do http connection, unsupport connect type: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    goto/16 :goto_6a

    :cond_10f
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-static {v1, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-static {v0, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->n:Ljava/net/HttpURLConnection;

    invoke-virtual {v4, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_132
    .catch Ljava/lang/IllegalStateException; {:try_start_f8 .. :try_end_132} :catch_ec
    .catch Ljava/lang/NullPointerException; {:try_start_f8 .. :try_end_132} :catch_133
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_f8 .. :try_end_132} :catch_13f
    .catch Ljava/net/MalformedURLException; {:try_start_f8 .. :try_end_132} :catch_14b

    goto :goto_bb

    :catch_133
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    iget-object v0, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->n:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object v0, v2

    goto/16 :goto_6a

    :catch_13f
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    iget-object v0, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->n:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object v0, v2

    goto/16 :goto_6a

    :catch_14b
    move-exception v0

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    iget-object v0, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->n:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object v0, v2

    goto/16 :goto_6a

    :catch_157
    move-exception v0

    iget v0, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->i:I

    if-lez v0, :cond_164

    iget v0, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->i:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->i:I

    goto/16 :goto_1

    :cond_164
    const-string v0, "HttpConnect"

    const-string v1, "can not get the status code"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->n:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object v0, v2

    goto/16 :goto_6a

    :cond_173
    :try_start_173
    iget v0, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->i:I

    if-lez v0, :cond_183

    iget v0, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->i:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->i:I

    invoke-direct {p0, p1, p2, p3}, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->b(Ljava/lang/String;Ljava/util/HashMap;I)Ljava/io/InputStream;

    move-result-object v0

    goto/16 :goto_6a

    :cond_183
    const-string v0, "HttpConnect"

    const-string v1, "get nothing from server"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->n:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_18f
    .catch Ljava/io/IOException; {:try_start_173 .. :try_end_18f} :catch_192

    move-object v0, v2

    goto/16 :goto_6a

    :catch_192
    move-exception v0

    iget v0, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->i:I

    if-lez v0, :cond_19f

    iget v0, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->i:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->i:I

    goto/16 :goto_1

    :cond_19f
    const-string v0, "HttpConnect"

    const-string v1, "get content error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->n:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :goto_1ab
    move-object v0, v2

    goto/16 :goto_6a

    :cond_1ae
    iget v1, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->i:I

    if-lez v1, :cond_1ba

    iget v0, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->i:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->i:I

    goto/16 :goto_1

    :cond_1ba
    const-string v1, "HttpConnect"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "status code error, status code is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->n:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_1ab
.end method

.method public static compress(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 8

    const/16 v5, 0x400

    const/4 v4, 0x0

    new-instance v0, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v0, p1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    new-array v1, v5, [B

    :goto_a
    invoke-virtual {p0, v1, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_18

    invoke-virtual {v0}, Ljava/util/zip/GZIPOutputStream;->flush()V

    invoke-virtual {v0}, Ljava/util/zip/GZIPOutputStream;->close()V

    return-void

    :cond_18
    invoke-virtual {v0, v1, v4, v2}, Ljava/util/zip/GZIPOutputStream;->write([BII)V

    goto :goto_a
.end method

.method public static compress([B)[B
    .registers 4

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->compress(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V

    return-object v2
.end method

.method public static convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_f
    :try_start_f
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_12} :catch_34
    .catchall {:try_start_f .. :try_end_12} :catchall_41

    move-result-object v2

    if-nez v2, :cond_1d

    :try_start_15
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_18} :catch_4b

    :goto_18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1d
    :try_start_1d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\n"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_33} :catch_34
    .catchall {:try_start_1d .. :try_end_33} :catchall_41

    goto :goto_f

    :catch_34
    move-exception v0

    :try_start_35
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_41

    :try_start_38
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3b} :catch_3c

    goto :goto_18

    :catch_3c
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_18

    :catchall_41
    move-exception v0

    :try_start_42
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_45} :catch_46

    :goto_45
    throw v0

    :catch_46
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_45

    :catch_4b
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_18
.end method

.method public static getConnectionType(Landroid/content/Context;)I
    .registers 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_12

    move v0, v1

    :goto_11
    return v0

    :cond_12
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v3, v4, :cond_1c

    move v0, v1

    goto :goto_11

    :cond_1c
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-ne v0, v2, :cond_24

    const/4 v0, 0x2

    goto :goto_11

    :cond_24
    if-nez v0, :cond_28

    move v0, v2

    goto :goto_11

    :cond_28
    move v0, v1

    goto :goto_11
.end method


# virtual methods
.method public connect(Ljava/lang/String;Ljava/util/HashMap;IILjava/lang/Object;Lcom/vivo/sdkplugin/net/HttpResponedSDK;)V
    .registers 22

    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->d:Lcom/vivo/sdkplugin/net/HttpResponedSDK;

    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->c:Ljava/lang/Object;

    move-object/from16 v0, p1

    iput-object v0, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->e:Ljava/lang/String;

    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->f:Ljava/util/HashMap;

    move/from16 v0, p4

    iput v0, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->i:I

    move/from16 v0, p3

    iput v0, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->h:I

    const/4 v2, 0x4

    move/from16 v0, p3

    if-eq v0, v2, :cond_1c1

    iget-object v14, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->f:Ljava/util/HashMap;

    if-eqz v14, :cond_1c1

    iget-object v2, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->b:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    if-eqz v2, :cond_3f

    const-string v6, "0"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2b3

    :cond_3f
    const-string v6, "imei"

    const-string v7, "012345678987654"

    invoke-virtual {v14, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_46
    const-string v6, "model"

    invoke-virtual {v14, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_53

    const-string v6, "model"

    invoke-virtual {v14, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_53
    const-string v6, "elapsedtime"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v14, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v6, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->a:Z

    if-eqz v6, :cond_a0

    const-string v6, "HttpConnect"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "general information, mimi code is "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "HttpConnect"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "general information, model number is "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "HttpConnect"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "general information, elapsed Time number is"

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a0
    const-string v2, "cs"

    invoke-virtual {v14, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_af

    const-string v2, "cs"

    const-string v3, "0"

    invoke-virtual {v14, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_af
    const-string v2, "http://comm.inner.bbk.com/upapk/apk/query"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c3

    const-string v2, "http://sysupgrade.bbk.com/checkapp/query"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1c1

    :cond_c3
    :try_start_c3
    iget-object v2, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "st1"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_345

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
    :try_end_d8
    .catch Ljava/lang/Exception; {:try_start_c3 .. :try_end_d8} :catch_2ba

    move-result-wide v4

    sub-long v2, v4, v2

    move-wide v12, v2

    :goto_dc
    :try_start_dc
    iget-object v2, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "sn1"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_e7
    .catch Ljava/lang/Exception; {:try_start_dc .. :try_end_e7} :catch_2c3

    move-result-object v2

    move-object v9, v2

    :goto_e9
    :try_start_e9
    iget-object v2, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "st2"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_342

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
    :try_end_fe
    .catch Ljava/lang/Exception; {:try_start_e9 .. :try_end_fe} :catch_2cb

    move-result-wide v4

    sub-long v2, v4, v2

    move-wide v10, v2

    :goto_102
    :try_start_102
    iget-object v2, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "sn2"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_10d
    .catch Ljava/lang/Exception; {:try_start_102 .. :try_end_10d} :catch_2d4

    move-result-object v2

    move-object v8, v2

    :goto_10f
    :try_start_10f
    iget-object v2, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "sf"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_11a
    .catch Ljava/lang/Exception; {:try_start_10f .. :try_end_11a} :catch_2dc

    move-result v2

    move v7, v2

    :goto_11c
    :try_start_11c
    iget-object v2, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "net_state_class_1"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_127
    .catch Ljava/lang/Exception; {:try_start_11c .. :try_end_127} :catch_2e4

    move-result v2

    move v6, v2

    :goto_129
    :try_start_129
    iget-object v2, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "net_state_class_2"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_134
    .catch Ljava/lang/Exception; {:try_start_129 .. :try_end_134} :catch_2ec

    move-result v2

    move v5, v2

    :goto_136
    :try_start_136
    iget-object v2, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "sim_type_1"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_141
    .catch Ljava/lang/Exception; {:try_start_136 .. :try_end_141} :catch_2f4

    move-result-object v2

    move-object v4, v2

    :goto_143
    :try_start_143
    iget-object v2, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "sim_type_2"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_14e
    .catch Ljava/lang/Exception; {:try_start_143 .. :try_end_14e} :catch_2fd

    move-result-object v2

    move-object v3, v2

    :goto_150
    const-string v2, "st1"

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v14, v2, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "sn1"

    invoke-virtual {v14, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "st2"

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v14, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "sn2"

    invoke-virtual {v14, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "sf"

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v14, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "nt"

    iget-object v2, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->b:Landroid/content/Context;

    const-string v8, "connectivity"

    invoke-virtual {v2, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_329

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v8

    sget-object v9, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v8, v9, :cond_329

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_306

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v2

    :goto_19a
    invoke-virtual {v14, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "sm1"

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "sm2"

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "srm1"

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "srm2"

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1c1
    iget-boolean v2, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->a:Z

    if-eqz v2, :cond_23d

    const-string v3, "HttpConnect"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v2, "connect, generalInformation cs is "

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->f:Ljava/util/HashMap;

    const-string v5, "cs"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "HttpConnect"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v2, "connect, generalInformation miei is "

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->f:Ljava/util/HashMap;

    const-string v5, "imei"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "HttpConnect"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v2, "connect, generalInformation elapsedtime is "

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->f:Ljava/util/HashMap;

    const-string v5, "elapsedtime"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "HttpConnect"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v2, "connect, generalInformation model number  is "

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->f:Ljava/util/HashMap;

    const-string v5, "model"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23d
    iget-boolean v2, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->a:Z

    if-eqz v2, :cond_299

    const-string v2, "HttpConnect"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "connect, mUrlAddress = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "HttpConnect"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "connect, mTryNum = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->i:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "HttpConnect"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "connect, proxy ip = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->j:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "HttpConnect"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "connect, connect type  = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->h:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_299
    packed-switch p3, :pswitch_data_348

    const-string v2, "HttpConnect"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "connect, unsupport connect type: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2b2
    return-void

    :cond_2b3
    const-string v6, "imei"

    invoke-virtual {v14, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_46

    :catch_2ba
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    const-wide/16 v2, 0x0

    move-wide v12, v2

    goto/16 :goto_dc

    :catch_2c3
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v2, 0x0

    move-object v9, v2

    goto/16 :goto_e9

    :catch_2cb
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    const-wide/16 v2, 0x0

    move-wide v10, v2

    goto/16 :goto_102

    :catch_2d4
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v2, 0x0

    move-object v8, v2

    goto/16 :goto_10f

    :catch_2dc
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v2, 0x0

    move v7, v2

    goto/16 :goto_11c

    :catch_2e4
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v2, 0x0

    move v6, v2

    goto/16 :goto_129

    :catch_2ec
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v2, 0x0

    move v5, v2

    goto/16 :goto_136

    :catch_2f4
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    const-string v2, "UNKNOWN"

    move-object v4, v2

    goto/16 :goto_143

    :catch_2fd
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    const-string v2, "UNKNOWN"

    move-object v3, v2

    goto/16 :goto_150

    :cond_306
    if-nez v8, :cond_329

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "_"

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_19a

    :cond_329
    const/4 v2, 0x0

    goto/16 :goto_19a

    :pswitch_32c
    iget-object v2, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->e:Ljava/lang/String;

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-direct {p0, v2, v0, v1}, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->a(Ljava/lang/String;Ljava/util/HashMap;I)V

    goto/16 :goto_2b2

    :pswitch_337
    iget-object v2, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->e:Ljava/lang/String;

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-direct {p0, v2, v0, v1}, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->b(Ljava/lang/String;Ljava/util/HashMap;I)Ljava/io/InputStream;

    goto/16 :goto_2b2

    :cond_342
    move-wide v10, v2

    goto/16 :goto_102

    :cond_345
    move-wide v12, v2

    goto/16 :goto_dc

    :pswitch_data_348
    .packed-switch 0x0
        :pswitch_32c
        :pswitch_32c
        :pswitch_337
        :pswitch_337
        :pswitch_32c
    .end packed-switch
.end method

.method public connectAgain()V
    .registers 8

    iget-object v1, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->f:Ljava/util/HashMap;

    iget v3, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->h:I

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->c:Ljava/lang/Object;

    iget-object v6, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->d:Lcom/vivo/sdkplugin/net/HttpResponedSDK;

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->connect(Ljava/lang/String;Ljava/util/HashMap;IILjava/lang/Object;Lcom/vivo/sdkplugin/net/HttpResponedSDK;)V

    return-void
.end method

.method public disconnect()V
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->g:Lorg/apache/http/client/HttpClient;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->g:Lorg/apache/http/client/HttpClient;

    instance-of v0, v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->g:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    :cond_13
    :goto_13
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->m:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->g:Lorg/apache/http/client/HttpClient;

    return-void

    :cond_1a
    iget-object v0, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->g:Lorg/apache/http/client/HttpClient;

    instance-of v0, v0, Landroid/net/http/AndroidHttpClient;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->g:Lorg/apache/http/client/HttpClient;

    check-cast v0, Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    goto :goto_13
.end method

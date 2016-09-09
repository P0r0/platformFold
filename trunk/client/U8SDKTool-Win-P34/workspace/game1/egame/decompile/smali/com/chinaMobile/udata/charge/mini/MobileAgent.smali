.class public Lcom/chinaMobile/udata/charge/mini/MobileAgent;
.super Ljava/lang/Object;


# static fields
.field public static final SDK_VERSION:Ljava/lang/String; = "3.2.1.2"

.field public static final USER_STATUS_ACTIVATE:Ljava/lang/String; = "activate"

.field public static final USER_STATUS_CUSTOM:Ljava/lang/String; = "custom"

.field public static final USER_STATUS_LOGIN:Ljava/lang/String; = "login"

.field public static final USER_STATUS_REGIST:Ljava/lang/String; = "regist"

.field public static final USER_STATUS_START:Ljava/lang/String; = "start"

.field public static a:Z

.field private static b:Ljava/lang/String;

.field private static c:I

.field private static d:Z

.field private static e:Z

.field private static f:Z

.field private static g:I

.field private static h:I

.field private static final i:Ljava/lang/String;

.field private static final j:Ljava/lang/String;

.field private static final k:Ljava/lang/String;

.field private static final l:Ljava/lang/String;

.field private static final m:Ljava/lang/String;

.field private static n:Ljava/lang/String;

.field private static o:J

.field private static p:Ljava/lang/String;

.field private static q:Ljava/lang/Object;

.field private static r:Ljava/lang/Object;

.field private static s:Ljava/lang/Object;

.field private static t:Z

.field private static u:Z

.field private static v:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v0, "jfd"

    sput-object v0, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->b:Ljava/lang/String;

    sput-boolean v1, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->a:Z

    const/4 v0, 0x2

    sput v0, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->c:I

    sput-boolean v1, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->d:Z

    sput-boolean v2, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->e:Z

    sput-boolean v1, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->f:Z

    sput v1, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->g:I

    sput v2, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->h:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "act"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->i:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "evn"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->j:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "esp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->k:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "err"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->l:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sys"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->m:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->n:Ljava/lang/String;

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->o:J

    const-string v0, ""

    sput-object v0, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->p:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->q:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->r:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->s:Ljava/lang/Object;

    sput-boolean v2, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->t:Z

    sput-boolean v2, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->u:Z

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->v:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static HttpPostData(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)I
    .registers 12

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v1, 0x2

    sget v0, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->c:I

    if-eq v0, v4, :cond_9

    move v0, v1

    :goto_8
    return v0

    :cond_9
    const-string v0, "MobileAgentRun"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "run into httppost :"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "####"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "###"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/chinaMobile/udata/charge/mini/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    :try_start_42
    invoke-static {p0}, Lcom/chinaMobile/udata/charge/mini/h;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/chinaMobile/udata/charge/mini/h;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&appkey="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "&channel="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "&code="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v5, 0x6a

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "MobileAgentRun"

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/chinaMobile/udata/charge/mini/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "MobileAgentRun"

    const-string v6, "post start"

    invoke-static {v5, v6}, Lcom/chinaMobile/udata/charge/mini/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_98
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_42 .. :try_end_98} :catch_166
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_98} :catch_17a
    .catch Lorg/json/JSONException; {:try_start_42 .. :try_end_98} :catch_18f
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_98} :catch_1a5
    .catchall {:try_start_42 .. :try_end_98} :catchall_1ba

    const/16 v2, 0x2710

    :try_start_9a
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const-string v2, "POST"

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-static {}, Lcom/chinaMobile/udata/charge/mini/k;->a()Lcom/chinaMobile/udata/charge/mini/k;

    move-result-object v2

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/chinaMobile/udata/charge/mini/k;->a(Ljava/lang/String;)[B

    move-result-object v2

    const-string v5, "Content-length"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "Content-Type"

    const-string v6, "application/octet-stream"

    invoke-virtual {v0, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "Charset"

    const-string v6, "UTF-8"

    invoke-virtual {v0, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    const-string v2, "MobileAgentRun"

    const-string v5, "post end"

    invoke-static {v2, v5}, Lcom/chinaMobile/udata/charge/mini/g;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f6
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_9a .. :try_end_f6} :catch_1db
    .catch Ljava/io/IOException; {:try_start_9a .. :try_end_f6} :catch_1d6
    .catch Lorg/json/JSONException; {:try_start_9a .. :try_end_f6} :catch_1d2
    .catch Ljava/lang/Exception; {:try_start_9a .. :try_end_f6} :catch_1c8
    .catchall {:try_start_9a .. :try_end_f6} :catchall_1c4

    const/16 v2, 0xc8

    if-ne v2, v3, :cond_102

    :try_start_fa
    const-string v2, "MobileAgent"

    const-string v5, "send success"

    invoke-static {v2, v5}, Lcom/chinaMobile/udata/charge/mini/g;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_101
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_fa .. :try_end_101} :catch_1db
    .catch Ljava/io/IOException; {:try_start_fa .. :try_end_101} :catch_1d6
    .catch Lorg/json/JSONException; {:try_start_fa .. :try_end_101} :catch_1d2
    .catch Ljava/lang/Exception; {:try_start_fa .. :try_end_101} :catch_1cd
    .catchall {:try_start_fa .. :try_end_101} :catchall_1c4

    move v1, v4

    :cond_102
    if-eqz v0, :cond_1e0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    move v0, v1

    :goto_108
    :try_start_108
    const-string v1, "MobileAgentHttpPost"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "code:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "status:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  content: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "logJsonAry"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/chinaMobile/udata/charge/mini/g;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13a
    .catch Ljava/lang/Exception; {:try_start_108 .. :try_end_13a} :catch_1c1

    :goto_13a
    const-string v1, "MobileAgentRun"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "run out httppost :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " resultcode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/chinaMobile/udata/charge/mini/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    :catch_166
    move-exception v0

    :goto_167
    :try_start_167
    const-string v4, "MobileAgentRun"

    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/chinaMobile/udata/charge/mini/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V
    :try_end_173
    .catchall {:try_start_167 .. :try_end_173} :catchall_1ba

    if-eqz v2, :cond_1e0

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    move v0, v1

    goto :goto_108

    :catch_17a
    move-exception v0

    :goto_17b
    :try_start_17b
    const-string v4, "MobileAgentRun"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/chinaMobile/udata/charge/mini/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_187
    .catchall {:try_start_17b .. :try_end_187} :catchall_1ba

    if-eqz v2, :cond_1e0

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    move v0, v1

    goto/16 :goto_108

    :catch_18f
    move-exception v0

    :goto_190
    :try_start_190
    const-string v1, "MobileAgentRun"

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/chinaMobile/udata/charge/mini/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_19c
    .catchall {:try_start_190 .. :try_end_19c} :catchall_1ba

    const/4 v1, 0x3

    if-eqz v2, :cond_1e0

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    move v0, v1

    goto/16 :goto_108

    :catch_1a5
    move-exception v0

    :goto_1a6
    :try_start_1a6
    const-string v4, "MobileAgentRun"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/chinaMobile/udata/charge/mini/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1b2
    .catchall {:try_start_1a6 .. :try_end_1b2} :catchall_1ba

    if-eqz v2, :cond_1e0

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    move v0, v1

    goto/16 :goto_108

    :catchall_1ba
    move-exception v0

    :goto_1bb
    if-eqz v2, :cond_1c0

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1c0
    throw v0

    :catch_1c1
    move-exception v1

    goto/16 :goto_13a

    :catchall_1c4
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_1bb

    :catch_1c8
    move-exception v2

    move-object v8, v2

    move-object v2, v0

    move-object v0, v8

    goto :goto_1a6

    :catch_1cd
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    move v1, v4

    goto :goto_1a6

    :catch_1d2
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_190

    :catch_1d6
    move-exception v2

    move-object v8, v2

    move-object v2, v0

    move-object v0, v8

    goto :goto_17b

    :catch_1db
    move-exception v2

    move-object v8, v2

    move-object v2, v0

    move-object v0, v8

    goto :goto_167

    :cond_1e0
    move v0, v1

    goto/16 :goto_108
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->p:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->onEventBase(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)I
    .registers 4

    invoke-static {p0, p1, p2}, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->HttpPostData(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v0

    return v0
.end method

.method protected static createMessage(Landroid/content/Context;)Lorg/json/JSONObject;
    .registers 5

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v0, "pid"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "protocolVersion"

    const-string v2, "3.1.4"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "sdkVersion"

    const-string v2, "3.2.1.2"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "cid"

    invoke-static {p0}, Lcom/chinaMobile/udata/charge/mini/h;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "appKey"

    invoke-static {p0}, Lcom/chinaMobile/udata/charge/mini/h;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "packageName"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "versionCode"

    invoke-static {p0}, Lcom/chinaMobile/udata/charge/mini/h;->o(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "versionName"

    invoke-static {p0}, Lcom/chinaMobile/udata/charge/mini/h;->p(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "sendTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "deviceId"

    invoke-static {p0}, Lcom/chinaMobile/udata/charge/mini/h;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "channel"

    invoke-static {p0}, Lcom/chinaMobile/udata/charge/mini/h;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_61
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_61} :catch_62

    :goto_61
    return-object v1

    :catch_62
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_61
.end method

.method private static createSession(Landroid/content/Context;Ljava/lang/String;Landroid/content/SharedPreferences;)Ljava/lang/String;
    .registers 15

    const/4 v11, 0x1

    const/4 v10, 0x0

    const-wide/16 v2, 0x0

    const-string v0, ""

    sput-object v0, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->n:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/chinaMobile/udata/charge/mini/h;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v0, "appKey"

    invoke-interface {v5, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "sessionId"

    invoke-interface {v5, v0, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "lastResumeTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-interface {v5, v0, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string v0, "activities"

    const-string v1, "onResume"

    const/4 v6, 0x0

    invoke-static {p0, v1, v6}, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->getActivityStateStr(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "readFlowRev"

    invoke-interface {p2, v0, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {p0}, Lcom/chinaMobile/udata/charge/mini/h;->q(Landroid/content/Context;)[J

    move-result-object v6

    const-string v7, "readFlowRev"

    aget-wide v8, v6, v10

    invoke-interface {v5, v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    aget-wide v8, v6, v10

    sub-long v0, v8, v0

    cmp-long v7, v0, v2

    if-gez v7, :cond_49

    move-wide v0, v2

    :cond_49
    const-string v7, "consumeFlowRev"

    invoke-interface {v5, v7, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string v0, "readFlowSnd"

    invoke-interface {p2, v0, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    const-string v7, "readFlowSnd"

    aget-wide v8, v6, v11

    invoke-interface {v5, v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    aget-wide v6, v6, v11

    sub-long v0, v6, v0

    cmp-long v6, v0, v2

    if-gez v6, :cond_6e

    :goto_63
    const-string v0, "consumeFlowSnd"

    invoke-interface {v5, v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    sput-object v4, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->p:Ljava/lang/String;

    return-object v4

    :cond_6e
    move-wide v2, v0

    goto :goto_63
.end method

.method private static delPopUpload(Landroid/content/Context;Ljava/lang/String;)V
    .registers 7

    sget-object v1, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->q:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-static {p0}, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->getUploadListSharePreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "uploadList"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "uploadList"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    monitor-exit v1

    return-void

    :catchall_37
    move-exception v0

    monitor-exit v1
    :try_end_39
    .catchall {:try_start_3 .. :try_end_39} :catchall_37

    throw v0
.end method

.method private static deleteLog(Landroid/content/Context;Ljava/lang/String;)V
    .registers 2

    if-eqz p1, :cond_8

    invoke-virtual {p0, p1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    invoke-static {p0, p1}, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->delPopUpload(Landroid/content/Context;Ljava/lang/String;)V

    :cond_8
    return-void
.end method

.method private static getActivityStateStr(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    const-wide/16 v0, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v2, "onResume"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5d

    sput-wide v4, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->o:J

    :cond_10
    :goto_10
    if-nez p2, :cond_14

    const-string p2, ""

    :cond_14
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string v0, "|"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v0, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->n:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->n:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_5d
    const-string v2, "onPause"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    sget-object v2, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->n:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    sget-wide v2, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->o:J

    sub-long v2, v4, v2

    const-wide/32 v6, 0xb71b00

    cmp-long v6, v2, v6

    if-lez v6, :cond_84

    const-wide/32 v0, 0x493e0

    goto :goto_10

    :cond_84
    cmp-long v6, v2, v0

    if-ltz v6, :cond_10

    move-wide v0, v2

    goto :goto_10
.end method

.method private static getConfigParams(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->getConfigPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "0"

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getConfigPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "MoblieAgent_config_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method protected static getEventSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "MoblieAgent_event_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method protected static getEventSpSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "MoblieAgent_event_sp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private static getLastEventData(Landroid/content/Context;Landroid/content/SharedPreferences;)Z
    .registers 7

    invoke-static {p0}, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->getEventSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "eventlogs"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4f

    invoke-static {p0}, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->getStateSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "sessionId"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    :try_start_24
    const-string v4, "sid"

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "logJsonAry"

    invoke-virtual {v3, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {p0, v1, v2}, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->saveLog(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_48

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "eventlogs"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_48
    .catch Lorg/json/JSONException; {:try_start_24 .. :try_end_48} :catch_4a

    :cond_48
    :goto_48
    const/4 v0, 0x1

    :goto_49
    return v0

    :catch_4a
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_48

    :cond_4f
    const/4 v0, 0x0

    goto :goto_49
.end method

.method private static getLastEventSpData(Landroid/content/Context;Landroid/content/SharedPreferences;)Z
    .registers 7

    invoke-static {p0}, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->getEventSpSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "eventlogs"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4f

    invoke-static {p0}, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->getStateSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "sessionId"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    :try_start_24
    const-string v4, "sid"

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "logJsonAry"

    invoke-virtual {v3, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {p0, v1, v2}, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->saveLog(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_48

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "eventlogs"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_48
    .catch Lorg/json/JSONException; {:try_start_24 .. :try_end_48} :catch_4a

    :cond_48
    :goto_48
    const/4 v0, 0x1

    :goto_49
    return v0

    :catch_4a
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_48

    :cond_4f
    const/4 v0, 0x0

    goto :goto_49
.end method

.method private static getLastLaunchData(Landroid/content/Context;Landroid/content/SharedPreferences;Z)Z
    .registers 9

    const-string v0, "sessionId"

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "activities"

    const-string v2, ""

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_15
    const-string v3, "sid"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "logs"

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p2, :cond_57

    const-string v0, "consumeFlowRev"

    const-wide/16 v4, 0x0

    invoke-interface {p1, v0, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    const-string v3, "flowConsumpRev"

    invoke-virtual {v2, v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "consumeFlowSnd"

    const-wide/16 v4, 0x0

    invoke-interface {p1, v0, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    const-string v3, "flowConsumpSnd"

    invoke-virtual {v2, v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :goto_3b
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->saveLog(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_55

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "activities"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_55
    :goto_55
    const/4 v0, 0x1

    return v0

    :cond_57
    const-string v0, "flowConsumpRev"

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "flowConsumpSnd"

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_63
    .catch Lorg/json/JSONException; {:try_start_15 .. :try_end_63} :catch_64

    goto :goto_3b

    :catch_64
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_55
.end method

.method private static declared-synchronized getLogStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    const-class v4, Lcom/chinaMobile/udata/charge/mini/MobileAgent;

    monitor-enter v4

    :try_start_3
    const-string v3, ""
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_3a

    const/4 v1, 0x0

    :try_start_6
    invoke-virtual {p0, p1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_9} :catch_3d
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_9} :catch_4f
    .catchall {:try_start_6 .. :try_end_9} :catchall_61

    move-result-object v2

    const/16 v0, 0x2710

    :try_start_c
    new-array v1, v0, [B
    :try_end_e
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_e} :catch_76
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_e} :catch_70
    .catchall {:try_start_c .. :try_end_e} :catchall_6e

    move-object v0, v3

    :goto_f
    :try_start_f
    invoke-virtual {v2, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_2e

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct {v6, v1, v7, v3}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2c
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_2c} :catch_7a
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_2c} :catch_74
    .catchall {:try_start_f .. :try_end_2c} :catchall_6e

    move-result-object v0

    goto :goto_f

    :cond_2e
    if-eqz v2, :cond_33

    :try_start_30
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_33} :catch_35
    .catchall {:try_start_30 .. :try_end_33} :catchall_3a

    :cond_33
    :goto_33
    monitor-exit v4

    return-object v0

    :catch_35
    move-exception v1

    :try_start_36
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_3a

    goto :goto_33

    :catchall_3a
    move-exception v0

    monitor-exit v4

    throw v0

    :catch_3d
    move-exception v0

    move-object v2, v1

    move-object v1, v0

    move-object v0, v3

    :goto_41
    :try_start_41
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_6e

    if-eqz v2, :cond_33

    :try_start_46
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_49} :catch_4a
    .catchall {:try_start_46 .. :try_end_49} :catchall_3a

    goto :goto_33

    :catch_4a
    move-exception v1

    :try_start_4b
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4e
    .catchall {:try_start_4b .. :try_end_4e} :catchall_3a

    goto :goto_33

    :catch_4f
    move-exception v0

    move-object v2, v1

    move-object v1, v0

    move-object v0, v3

    :goto_53
    :try_start_53
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_56
    .catchall {:try_start_53 .. :try_end_56} :catchall_6e

    if-eqz v2, :cond_33

    :try_start_58
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_5b} :catch_5c
    .catchall {:try_start_58 .. :try_end_5b} :catchall_3a

    goto :goto_33

    :catch_5c
    move-exception v1

    :try_start_5d
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_60
    .catchall {:try_start_5d .. :try_end_60} :catchall_3a

    goto :goto_33

    :catchall_61
    move-exception v0

    move-object v2, v1

    :goto_63
    if-eqz v2, :cond_68

    :try_start_65
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_68} :catch_69
    .catchall {:try_start_65 .. :try_end_68} :catchall_3a

    :cond_68
    :goto_68
    :try_start_68
    throw v0

    :catch_69
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6d
    .catchall {:try_start_68 .. :try_end_6d} :catchall_3a

    goto :goto_68

    :catchall_6e
    move-exception v0

    goto :goto_63

    :catch_70
    move-exception v0

    move-object v1, v0

    move-object v0, v3

    goto :goto_53

    :catch_74
    move-exception v1

    goto :goto_53

    :catch_76
    move-exception v0

    move-object v1, v0

    move-object v0, v3

    goto :goto_41

    :catch_7a
    move-exception v1

    goto :goto_41
.end method

.method private static declared-synchronized getPopIndex(Landroid/content/Context;)J
    .registers 7

    const-class v1, Lcom/chinaMobile/udata/charge/mini/MobileAgent;

    monitor-enter v1

    :try_start_3
    invoke-static {p0}, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->getUploadListSharePreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "uploadpopindex"

    const-wide/16 v4, 0x0

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_11

    move-result-wide v2

    monitor-exit v1

    return-wide v2

    :catchall_11
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static getStateSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "MoblieAgent_state_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method protected static getUploadListSharePreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "MoblieAgent_upload_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private static init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    sget-boolean v0, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->t:Z

    if-eqz v0, :cond_f

    const-string v0, "MobileAgent"

    const-string v1, "already init"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_e
    return-void

    :cond_f
    sget v0, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->c:I

    if-ne v0, v3, :cond_70

    invoke-static {p0}, Lcom/chinaMobile/udata/charge/mini/h;->s(Landroid/content/Context;)I

    move-result v0

    :goto_17
    sput v0, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->c:I

    if-ne v0, v3, :cond_20

    sput v2, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->c:I

    invoke-static {p0}, Lcom/chinaMobile/udata/charge/mini/h;->t(Landroid/content/Context;)V

    :cond_20
    :try_start_20
    sget-boolean v0, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->a:Z

    if-nez v0, :cond_3e

    const-string v0, "MoblieAgent_debug"

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v3, "debug"

    const-string v4, ""

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_73

    move v0, v1

    :goto_3c
    sput-boolean v0, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->a:Z
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_3e} :catch_fa

    :cond_3e
    :goto_3e
    const-string v0, "MobileAgentAPI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "run in init["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/chinaMobile/udata/charge/mini/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p0, :cond_75

    const-string v0, "MobileAgent"

    const-string v1, "Exception occurent in joinDu ,context cann\'t be null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    :cond_70
    sget v0, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->c:I

    goto :goto_17

    :cond_73
    move v0, v2

    goto :goto_3c

    :cond_75
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_83

    const/16 v0, 0x32

    invoke-static {p1, v0}, Lcom/chinaMobile/udata/charge/mini/h;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_8b

    :cond_83
    const-string v0, "MobileAgent"

    const-string v1, "Exception occurent in joinDu ,appID cann\'t be null or empty"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    :cond_8b
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e4

    const-string p2, "0"

    :cond_93
    :goto_93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "MoblieAgent_sys_config"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "MOBILE_APPKEY"

    invoke-interface {v1, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "MOBILE_CHANNEL"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    sput-boolean v2, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->t:Z

    const-string v0, "MobileAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finish init SUCCESS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->a:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    :cond_e4
    const/16 v0, 0x64

    invoke-static {p2, v0}, Lcom/chinaMobile/udata/charge/mini/h;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_93

    const/16 v0, 0x63

    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    const-string v0, "MobileAgent"

    const-string v3, "Exception occurent in joinDu ,channelID cann\'t be null or empty"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_93

    :catch_fa
    move-exception v0

    goto/16 :goto_3e
.end method

.method private static isFirst(Landroid/content/Context;)Z
    .registers 4

    invoke-static {p0}, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->getConfigPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "is_first_run"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method protected static isOnce(Landroid/content/Context;I)Z
    .registers 9

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->getConfigPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_45

    const-string v0, "actionmonth"

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v3, "actionday"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    :goto_14
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "dd"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v6, "M"

    invoke-direct {v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v0, :cond_43

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v1, :cond_62

    :cond_43
    const/4 v0, 0x1

    :goto_44
    return v0

    :cond_45
    const/4 v0, 0x2

    if-ne p1, v0, :cond_55

    const-string v0, "eventmonth"

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v3, "eventday"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_14

    :cond_55
    const-string v0, "sysmonth"

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v3, "sysday"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_14

    :cond_62
    move v0, v2

    goto :goto_44
.end method

.method protected static isRecordEvent(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4

    invoke-static {p0}, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->getConfigPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method private static isSessionTimeOut(Landroid/content/SharedPreferences;)Z
    .registers 5

    const-string v0, "endTime"

    const-wide/16 v2, -0x1

    invoke-interface {p0, v0, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    const-wide/16 v2, 0x7530

    cmp-long v0, v0, v2

    if-lez v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private static isWiFi(Landroid/content/Context;)Z
    .registers 3

    const/4 v1, 0x1

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-ne v0, v1, :cond_17

    move v0, v1

    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public static joinDu(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    sget v0, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->c:I

    if-ne v0, v3, :cond_23

    invoke-static {p0}, Lcom/chinaMobile/udata/charge/mini/h;->s(Landroid/content/Context;)I

    move-result v0

    :goto_b
    sput v0, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->c:I

    if-ne v0, v3, :cond_14

    sput v2, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->c:I

    invoke-static {p0}, Lcom/chinaMobile/udata/charge/mini/h;->t(Landroid/content/Context;)V

    :cond_14
    sget-boolean v0, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->u:Z

    if-eqz v0, :cond_26

    const-string v0, "MobileAgent"

    const-string v1, "already init"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->updateApkMd5(Landroid/content/Context;)V

    :goto_22
    return-void

    :cond_23
    sget v0, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->c:I

    goto :goto_b

    :cond_26
    :try_start_26
    const-string v0, "MoblieAgent_debug"

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v3, "debug"

    const-string v4, ""

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_72

    move v0, v1

    :goto_3e
    sput-boolean v0, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->a:Z
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_40} :catch_102

    :goto_40
    const-string v0, "MobileAgentAPI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "run in init["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/chinaMobile/udata/charge/mini/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p0, :cond_74

    const-string v0, "MobileAgent"

    const-string v1, "Exception occurent in joinDu ,context cann\'t be null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22

    :cond_72
    move v0, v2

    goto :goto_3e

    :cond_74
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_82

    const/16 v0, 0x32

    invoke-static {p1, v0}, Lcom/chinaMobile/udata/charge/mini/h;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_8a

    :cond_82
    const-string v0, "MobileAgent"

    const-string v1, "Exception occurent in joinDu ,appID cann\'t be null or empty"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22

    :cond_8a
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_ec

    const-string p2, "0"

    :cond_92
    :goto_92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "MoblieAgent_sys_config"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "MOBILE_APPKEY"

    invoke-interface {v1, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "MOBILE_CHANNEL"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-static {p0}, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->onResume(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->onPause(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->updateApkMd5(Landroid/content/Context;)V

    sput-boolean v2, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->u:Z

    const-string v0, "MobileAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finish init SUCCESS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->a:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_22

    :cond_ec
    const/16 v0, 0x64

    invoke-static {p2, v0}, Lcom/chinaMobile/udata/charge/mini/h;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_92

    const/16 v0, 0x63

    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    const-string v0, "MobileAgent"

    const-string v3, "Exception occurent in joinDu ,channelID cann\'t be null or empty"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_92

    :catch_102
    move-exception v0

    goto/16 :goto_40
.end method

.method public static listenCrash(Landroid/content/Context;)V
    .registers 3

    sget v0, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->c:I

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    if-nez p0, :cond_e

    const-string v0, "MobileAgent"

    const-string v1, "Exception occurent in listenCrash ,context cann\'t be null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    invoke-static {}, Lcom/chinaMobile/udata/charge/mini/i;->a()Lcom/chinaMobile/udata/charge/mini/i;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/chinaMobile/udata/charge/mini/i;->a(Landroid/content/Context;)V

    goto :goto_4
.end method

.method public static listenUser(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    sget v0, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->c:I

    if-nez v0, :cond_c

    const-string v0, "MobileAgent"

    const-string v1, "Du have not permission to collect data"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_b
    return-void

    :cond_c
    if-nez p0, :cond_16

    const-string v0, "MobileAgent"

    const-string v1, "Exception occurent in listenUser() ,context cann\'t be null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    :cond_16
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_24

    const/16 v0, 0x64

    invoke-static {p1, v0}, Lcom/chinaMobile/udata/charge/mini/h;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2b

    :cond_24
    const-string v0, "MobileAgent"

    const-string v1, "Exception occurent in listenUser() ,channelID cann\'t be empty or length more than 100"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz p1, :cond_3a

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_aa

    :cond_3a
    const-string v1, "guest"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_3f
    const-string v1, "@@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-nez p2, :cond_ae

    const-string v1, "other"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_4b
    const-string v1, "@@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :try_start_50
    invoke-static {p0}, Lcom/chinaMobile/udata/charge/mini/h;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_5d} :catch_b2

    :goto_5d
    const-string v1, "@@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p0}, Lcom/chinaMobile/udata/charge/mini/h;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "@@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Lcom/chinaMobile/udata/charge/mini/h;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "@@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :try_start_7a
    invoke-static {}, Lcom/chinaMobile/udata/charge/mini/h;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_87
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7a .. :try_end_87} :catch_b9

    :goto_87
    const-string v1, "@@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p0}, Lcom/chinaMobile/udata/charge/mini/h;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "@@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p0}, Lcom/chinaMobile/udata/charge/mini/h;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "userID"

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    :cond_aa
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3f

    :cond_ae
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4b

    :catch_b2
    move-exception v1

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5d

    :catch_b9
    move-exception v1

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_87
.end method

.method protected static onErr(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    new-instance v0, Lcom/chinaMobile/udata/charge/mini/e;

    invoke-direct {v0, p0, p1}, Lcom/chinaMobile/udata/charge/mini/e;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/chinaMobile/udata/charge/mini/e;->start()V

    return-void
.end method

.method protected static onErrP(Landroid/content/Context;Ljava/lang/String;)V
    .registers 8

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_62

    :try_start_c
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "occurtime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v3, "errmsg"

    const-string v4, "UTF-8"

    invoke-static {p1, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v2, "sid"

    sget-object v3, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->p:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "errjsonary"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "MobileAgentRun"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "errJso"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/chinaMobile/udata/charge/mini/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->saveLog(Landroid/content/Context;Ljava/lang/String;I)Z
    :try_end_62
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_62} :catch_63
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_c .. :try_end_62} :catch_6c

    :cond_62
    :goto_62
    return-void

    :catch_63
    move-exception v0

    const-string v0, "MobileAgentRun"

    const-string v1, "json exception,lost catch Exception"

    invoke-static {v0, v1}, Lcom/chinaMobile/udata/charge/mini/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_62

    :catch_6c
    move-exception v0

    const-string v0, "MobileAgentRun"

    const-string v1, "unsupport utf-8,lost catch Exception"

    invoke-static {v0, v1}, Lcom/chinaMobile/udata/charge/mini/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_62
.end method

.method public static onEvent(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    sget v0, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->c:I

    if-nez v0, :cond_c

    const-string v0, "MobileAgent"

    const-string v1, "Du have not permission to collect data"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_b
    return-void

    :cond_c
    invoke-static {p0, p1, p1}, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b
.end method

.method public static onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    sget v0, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->c:I

    if-nez v0, :cond_c

    const-string v0, "MobileAgent"

    const-string v1, "Du have not permission to collect data"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_b
    return-void

    :cond_c
    const-string v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string v0, "MobileAgent"

    const-string v1, "the eventId contain illegal char"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    :cond_1c
    invoke-static {p0, p1, p2}, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->onEventBase(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b
.end method

.method private static onEventBase(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    const-string v0, "MobileAgentAPI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "run in onEvent ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chinaMobile/udata/charge/mini/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p0, :cond_32

    const-string v0, "MobileAgent"

    const-string v1, "Exception occurent in onEvent ,context cann\'t be null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_31
    return-void

    :cond_32
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_40

    const/16 v0, 0x64

    invoke-static {p1, v0}, Lcom/chinaMobile/udata/charge/mini/h;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_47

    :cond_40
    const-string v0, "MobileAgent"

    const-string v1, "Exception occurent in onEvent ,channelID cann\'t be empty or length more than 100"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_47
    const/16 v0, 0x7d0

    invoke-static {p2, v0}, Lcom/chinaMobile/udata/charge/mini/h;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_56

    const-string v0, "MobileAgent"

    const-string v1, "Exception occurent in onEvent ,channelID cann\'t be empty or length more than 100"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_56
    new-instance v0, Lcom/chinaMobile/udata/charge/mini/e;

    const/16 v1, 0xb

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/chinaMobile/udata/charge/mini/e;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/chinaMobile/udata/charge/mini/e;->start()V

    goto :goto_31
.end method

.method protected static onEventP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    sget-object v1, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->r:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-static {p1}, Lcom/chinaMobile/udata/charge/mini/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Lcom/chinaMobile/udata/charge/mini/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->getEventSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "eventlogs"

    const-string v6, ""

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_75

    :try_start_1f
    const-string v5, "UTF-8"

    invoke-static {v0, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "|"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "UTF-8"

    invoke-static {v2, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_36
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1f .. :try_end_36} :catch_6b
    .catchall {:try_start_1f .. :try_end_36} :catchall_75

    :try_start_36
    const-string v0, "|"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v0, "|"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "eventlogs"

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->getLastEventData(Landroid/content/Context;Landroid/content/SharedPreferences;)Z

    monitor-exit v1
    :try_end_66
    .catchall {:try_start_36 .. :try_end_66} :catchall_75

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->strategy(Landroid/content/Context;Z)V

    :goto_6a
    return-void

    :catch_6b
    move-exception v0

    :try_start_6c
    const-string v0, "MobileAgentRun"

    const-string v2, "unsupport utf-8,can\'t onEvent()"

    invoke-static {v0, v2}, Lcom/chinaMobile/udata/charge/mini/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v1

    goto :goto_6a

    :catchall_75
    move-exception v0

    monitor-exit v1
    :try_end_77
    .catchall {:try_start_6c .. :try_end_77} :catchall_75

    throw v0
.end method

.method public static onEventRT(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    sget v0, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->c:I

    if-nez v0, :cond_c

    const-string v0, "MobileAgent"

    const-string v1, "Du have not permission to collect data"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_b
    return-void

    :cond_c
    const-string v0, "MobileAgentAPI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "run in onEventRT ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chinaMobile/udata/charge/mini/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p0, :cond_3e

    const-string v0, "MobileAgent"

    const-string v1, "Exception occurent in onEventRt() ,context cann\'t be null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    :cond_3e
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4c

    const/16 v0, 0x64

    invoke-static {p1, v0}, Lcom/chinaMobile/udata/charge/mini/h;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_53

    :cond_4c
    const-string v0, "MobileAgent"

    const-string v1, "Exception occurent in onEventRt() ,channelID cann\'t be empty or length more than 100"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_53
    const/16 v0, 0x7d0

    invoke-static {p2, v0}, Lcom/chinaMobile/udata/charge/mini/h;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_62

    const-string v0, "MobileAgent"

    const-string v1, "Exception occurent in onEventRt() ,channelID cann\'t be empty or length more than 900"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_62
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/chinaMobile/udata/charge/mini/j;

    invoke-direct {v1, p0, p2, p1}, Lcom/chinaMobile/udata/charge/mini/j;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_b
.end method

.method private static onEventSp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6

    new-instance v0, Lcom/chinaMobile/udata/charge/mini/e;

    const/16 v1, 0xd

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/chinaMobile/udata/charge/mini/e;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/chinaMobile/udata/charge/mini/e;->start()V

    return-void
.end method

.method protected static onEventSpP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    const/4 v8, 0x1

    sget-object v1, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->s:Ljava/lang/Object;

    monitor-enter v1

    :try_start_4
    invoke-static {p1}, Lcom/chinaMobile/udata/charge/mini/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Lcom/chinaMobile/udata/charge/mini/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->getEventSpSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "eventlogs"

    const-string v6, ""

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_20
    .catchall {:try_start_4 .. :try_end_20} :catchall_87

    :try_start_20
    const-string v5, "UTF-8"

    invoke-static {v0, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "|"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "UTF-8"

    invoke-static {v2, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_37
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_20 .. :try_end_37} :catch_7d
    .catchall {:try_start_20 .. :try_end_37} :catchall_87

    :try_start_37
    const-string v0, "|"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v0, "|"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "eventlogs"

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    sget v0, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->g:I

    if-eq v0, v8, :cond_73

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    const/16 v2, 0x2710

    if-le v0, v2, :cond_77

    :cond_73
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->getLastEventSpData(Landroid/content/Context;Landroid/content/SharedPreferences;)Z

    :cond_77
    monitor-exit v1
    :try_end_78
    .catchall {:try_start_37 .. :try_end_78} :catchall_87

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->strategy(Landroid/content/Context;Z)V

    :goto_7c
    return-void

    :catch_7d
    move-exception v0

    :try_start_7e
    const-string v0, "MobileAgent"

    const-string v2, "unsupport utf-8,can\'t onEvent()"

    invoke-static {v0, v2}, Lcom/chinaMobile/udata/charge/mini/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v1

    goto :goto_7c

    :catchall_87
    move-exception v0

    monitor-exit v1
    :try_end_89
    .catchall {:try_start_7e .. :try_end_89} :catchall_87

    throw v0
.end method

.method public static onPause(Landroid/content/Context;)V
    .registers 5

    sget v0, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->c:I

    if-nez v0, :cond_c

    const-string v0, "MobileAgent"

    const-string v1, "Du have not permission to collect data"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_b
    return-void

    :cond_c
    const-string v0, ""

    :try_start_e
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_15} :catch_38

    move-result-object v0

    :goto_16
    const-string v1, "MobileAgentAPI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "run into onpause "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/chinaMobile/udata/charge/mini/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p0, :cond_43

    const-string v0, "MobileAgent"

    const-string v1, "Exception occurent in onPause ,context cann\'t be null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    :catch_38
    move-exception v1

    const-string v2, "MobileAgentAPI"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/chinaMobile/udata/charge/mini/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16

    :cond_43
    sget-object v1, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->v:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/chinaMobile/udata/charge/mini/e;

    const/16 v3, 0xa

    invoke-direct {v2, p0, v3}, Lcom/chinaMobile/udata/charge/mini/e;-><init>(Landroid/content/Context;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    const-string v1, "MobileAgentAPI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "run out onpause "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/chinaMobile/udata/charge/mini/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b
.end method

.method private static onPauseP(Landroid/content/Context;)V
    .registers 7

    const-string v0, "MobileAgentRun"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "run into onpausep :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chinaMobile/udata/charge/mini/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->getStateSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "activities"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "endTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string v2, "activities"

    const-string v3, "onPause"

    invoke-static {p0, v3, v1}, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->getActivityStateStr(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v0, "MobileAgentRun"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "run out onpausep :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chinaMobile/udata/charge/mini/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static onResume(Landroid/content/Context;)V
    .registers 7

    sget v0, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->c:I

    if-nez v0, :cond_c

    const-string v0, "MobileAgent"

    const-string v1, "Du have not permission to collect data"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_b
    return-void

    :cond_c
    const-string v0, ""

    :try_start_e
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_15} :catch_62

    move-result-object v0

    :goto_16
    const-string v1, "MobileAgentAPI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "run into onresume "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/chinaMobile/udata/charge/mini/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p0, :cond_6d

    :try_start_30
    const-string v1, "MobileAgent"

    const-string v2, "Exception occurent in onResume ,context cann\'t be null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_37} :catch_38

    goto :goto_b

    :catch_38
    move-exception v1

    const-string v2, "MobileAgent"

    const-string v3, "Exception occurred in MobileAgent.onResume(). "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "MobileAgentRun"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/chinaMobile/udata/charge/mini/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_49
    :goto_49
    const-string v1, "MobileAgentAPI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "run out onresume "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/chinaMobile/udata/charge/mini/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :catch_62
    move-exception v1

    const-string v2, "MobileAgentAPI"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/chinaMobile/udata/charge/mini/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16

    :cond_6d
    :try_start_6d
    sget-object v1, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->v:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/chinaMobile/udata/charge/mini/e;

    const/16 v3, 0x9

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/chinaMobile/udata/charge/mini/e;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    sget-boolean v1, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->d:Z

    if-eqz v1, :cond_49

    invoke-static {p0}, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->listenCrash(Landroid/content/Context;)V
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_82} :catch_38

    goto :goto_49
.end method

.method private static onResumeP(Landroid/content/Context;)V
    .registers 4

    const-string v0, "MobileAgentRun"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "run into onresumep :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chinaMobile/udata/charge/mini/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_20
    const-string v0, "page pro"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "do resume start: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chinaMobile/udata/charge/mini/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->sessionPolicy(Landroid/content/Context;)Z

    move-result v0

    invoke-static {p0, v0}, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->strategy(Landroid/content/Context;Z)V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_47} :catch_68

    :goto_47
    const-string v0, "MobileAgentRun"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "run out onresume :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chinaMobile/udata/charge/mini/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_68
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_47
.end method

.method public static openFeedbackDialog(Landroid/content/Context;)V
    .registers 3

    sget v0, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->c:I

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    if-nez p0, :cond_f

    const-string v0, "MobileAgent"

    const-string v1, "Exception occurent in openFeedbackDialog() ,context cann\'t be null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_f
    new-instance v0, Lcom/chinaMobile/udata/charge/mini/a;

    invoke-direct {v0, p0}, Lcom/chinaMobile/udata/charge/mini/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/chinaMobile/udata/charge/mini/a;->show()V

    goto :goto_4
.end method

.method protected static pageAct(Landroid/content/Context;Z)V
    .registers 4

    if-eqz p1, :cond_14

    const-string v0, "MobileAgentRun"

    const-string v1, "run into pageact onresumep"

    invoke-static {v0, v1}, Lcom/chinaMobile/udata/charge/mini/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->onResumeP(Landroid/content/Context;)V

    :goto_c
    const-string v0, "MobileAgentRun"

    const-string v1, "run out pageact"

    invoke-static {v0, v1}, Lcom/chinaMobile/udata/charge/mini/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_14
    const-string v0, "MobileAgentRun"

    const-string v1, "run into pageact onpausep"

    invoke-static {v0, v1}, Lcom/chinaMobile/udata/charge/mini/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->onPauseP(Landroid/content/Context;)V

    goto :goto_c
.end method

.method private static popUploadFileName(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    sget-object v1, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->q:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    const-string v0, ""

    invoke-static {p0}, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->getUploadListSharePreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "uploadList"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_24

    const/4 v0, 0x0

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_24
    monitor-exit v1

    return-object v0

    :catchall_26
    move-exception v0

    monitor-exit v1
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_26

    throw v0
.end method

.method protected static pushSysLog(Landroid/content/Context;)V
    .registers 5

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v1, "pid"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "protocolVersion"

    const-string v2, "3.1.4"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "sdkVersion"

    const-string v2, "3.2.1.2"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "cid"

    invoke-static {p0}, Lcom/chinaMobile/udata/charge/mini/h;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "deviceId"

    invoke-static {p0}, Lcom/chinaMobile/udata/charge/mini/h;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "appKey"

    invoke-static {p0}, Lcom/chinaMobile/udata/charge/mini/h;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "packageName"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "versionCode"

    invoke-static {p0}, Lcom/chinaMobile/udata/charge/mini/h;->o(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "versionName"

    invoke-static {p0}, Lcom/chinaMobile/udata/charge/mini/h;->p(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "sendTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "imsi"

    invoke-static {p0}, Lcom/chinaMobile/udata/charge/mini/h;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mac"

    invoke-static {p0}, Lcom/chinaMobile/udata/charge/mini/h;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "deviceDetail"

    invoke-static {}, Lcom/chinaMobile/udata/charge/mini/h;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "manufacturer"

    invoke-static {}, Lcom/chinaMobile/udata/charge/mini/h;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "phoneOS"

    invoke-static {}, Lcom/chinaMobile/udata/charge/mini/h;->c()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "screenWidth"

    invoke-static {p0}, Lcom/chinaMobile/udata/charge/mini/h;->e(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "screenHeight"

    invoke-static {p0}, Lcom/chinaMobile/udata/charge/mini/h;->f(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "screenDensity"

    invoke-static {p0}, Lcom/chinaMobile/udata/charge/mini/h;->g(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "carrierName"

    invoke-static {p0}, Lcom/chinaMobile/udata/charge/mini/h;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "accessPoint"

    invoke-static {p0}, Lcom/chinaMobile/udata/charge/mini/h;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "countryCode"

    invoke-static {}, Lcom/chinaMobile/udata/charge/mini/h;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "languageCode"

    invoke-static {}, Lcom/chinaMobile/udata/charge/mini/h;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "channel"

    invoke-static {p0}, Lcom/chinaMobile/udata/charge/mini/h;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->saveLog(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_fa

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->recordDate(Landroid/content/Context;I)V
    :try_end_fa
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_fa} :catch_fb
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_fa} :catch_100

    :cond_fa
    :goto_fa
    return-void

    :catch_fb
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_fa

    :catch_100
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_fa
.end method

.method private static pushUploadFileName(Landroid/content/Context;Ljava/lang/String;J)V
    .registers 10

    sget-object v1, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->q:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-static {p0}, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->getUploadListSharePreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "uploadcount"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "uploadList"

    const-string v4, ""

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x2710

    cmp-long v4, p2, v4

    if-lez v4, :cond_35

    const-wide/16 p2, 0x1

    :cond_35
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "uploadList"

    invoke-interface {v4, v5, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "uploadpopindex"

    invoke-interface {v4, v5, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v4, "\\|"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    const/16 v4, 0x7530

    if-le v3, v4, :cond_66

    invoke-static {p0}, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->popUploadFileName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    invoke-static {p0, v0}, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->delPopUpload(Landroid/content/Context;Ljava/lang/String;)V

    :goto_64
    monitor-exit v1

    return-void

    :cond_66
    add-int/lit8 v2, v2, 0x1

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "uploadcount"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_64

    :catchall_76
    move-exception v0

    monitor-exit v1
    :try_end_78
    .catchall {:try_start_3 .. :try_end_78} :catchall_76

    throw v0
.end method

.method protected static recordDate(Landroid/content/Context;I)V
    .registers 6

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "dd"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "M"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {p0}, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->getConfigPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const/4 v3, 0x3

    if-ne p1, v3, :cond_3c

    const-string v3, "actionmonth"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v0, "actionday"

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :goto_38
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    :cond_3c
    const/4 v3, 0x2

    if-ne p1, v3, :cond_4a

    const-string v3, "eventmonth"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v0, "eventday"

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_38

    :cond_4a
    const-string v3, "sysmonth"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v0, "sysday"

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_38
.end method

.method protected static recordEvent(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    invoke-static {p0}, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->getConfigPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "record"

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private static declared-synchronized saveLog(Landroid/content/Context;Ljava/lang/String;I)Z
    .registers 11

    const/4 v1, 0x1

    const/4 v0, 0x0

    const-class v3, Lcom/chinaMobile/udata/charge/mini/MobileAgent;

    monitor-enter v3

    const/4 v2, 0x3

    if-ne p2, v2, :cond_46

    :try_start_8
    sget-object v2, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->i:Ljava/lang/String;

    :goto_a
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_44

    invoke-static {p0}, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->getPopIndex(Landroid/content/Context;)J

    move-result-wide v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-wide/16 v6, 0x1

    add-long/2addr v6, v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2d
    .catchall {:try_start_8 .. :try_end_2d} :catchall_62

    move-result-object v4

    const/4 v2, 0x0

    const/4 v5, 0x1

    :try_start_30
    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_33
    .catch Ljava/io/FileNotFoundException; {:try_start_30 .. :try_end_33} :catch_65
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_33} :catch_79
    .catchall {:try_start_30 .. :try_end_33} :catchall_8c

    move-result-object v2

    :try_start_34
    invoke-static {p0, v4, v6, v7}, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->pushUploadFileName(Landroid/content/Context;Ljava/lang/String;J)V

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_3e
    .catch Ljava/io/FileNotFoundException; {:try_start_34 .. :try_end_3e} :catch_9b
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_3e} :catch_79
    .catchall {:try_start_34 .. :try_end_3e} :catchall_8c

    if-eqz v2, :cond_43

    :try_start_40
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_43} :catch_5d
    .catchall {:try_start_40 .. :try_end_43} :catchall_62

    :cond_43
    :goto_43
    move v0, v1

    :cond_44
    :goto_44
    monitor-exit v3

    return v0

    :cond_46
    const/4 v2, 0x2

    if-ne p2, v2, :cond_4c

    :try_start_49
    sget-object v2, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->j:Ljava/lang/String;

    goto :goto_a

    :cond_4c
    const/4 v2, 0x4

    if-ne p2, v2, :cond_52

    sget-object v2, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->l:Ljava/lang/String;

    goto :goto_a

    :cond_52
    if-ne p2, v1, :cond_57

    sget-object v2, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->m:Ljava/lang/String;

    goto :goto_a

    :cond_57
    const/4 v2, 0x5

    if-ne p2, v2, :cond_44

    sget-object v2, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->k:Ljava/lang/String;

    goto :goto_a

    :catch_5d
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_61
    .catchall {:try_start_49 .. :try_end_61} :catchall_62

    goto :goto_43

    :catchall_62
    move-exception v0

    monitor-exit v3

    throw v0

    :catch_65
    move-exception v1

    move-object v1, v2

    :goto_67
    :try_start_67
    const-string v2, "MobileAgentRun"

    const-string v4, "can not find log file"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6e
    .catchall {:try_start_67 .. :try_end_6e} :catchall_98

    if-eqz v1, :cond_44

    :try_start_70
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_73
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_73} :catch_74
    .catchall {:try_start_70 .. :try_end_73} :catchall_62

    goto :goto_44

    :catch_74
    move-exception v1

    :try_start_75
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_78
    .catchall {:try_start_75 .. :try_end_78} :catchall_62

    goto :goto_44

    :catch_79
    move-exception v0

    :try_start_7a
    const-string v0, "MobileAgentRun"

    const-string v4, "file r/w execption"

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_81
    .catchall {:try_start_7a .. :try_end_81} :catchall_8c

    if-eqz v2, :cond_43

    :try_start_83
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_86
    .catch Ljava/io/IOException; {:try_start_83 .. :try_end_86} :catch_87
    .catchall {:try_start_83 .. :try_end_86} :catchall_62

    goto :goto_43

    :catch_87
    move-exception v0

    :try_start_88
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8b
    .catchall {:try_start_88 .. :try_end_8b} :catchall_62

    goto :goto_43

    :catchall_8c
    move-exception v0

    :goto_8d
    if-eqz v2, :cond_92

    :try_start_8f
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_92
    .catch Ljava/io/IOException; {:try_start_8f .. :try_end_92} :catch_93
    .catchall {:try_start_8f .. :try_end_92} :catchall_62

    :cond_92
    :goto_92
    :try_start_92
    throw v0

    :catch_93
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_97
    .catchall {:try_start_92 .. :try_end_97} :catchall_62

    goto :goto_92

    :catchall_98
    move-exception v0

    move-object v2, v1

    goto :goto_8d

    :catch_9b
    move-exception v1

    move-object v1, v2

    goto :goto_67
.end method

.method protected static sendActionMessage(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 12

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v3, 0x3

    invoke-static {p0, p1}, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->getLogStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11d

    const-string v4, "http://da.mmarket.com/mmsdk/mmsdk?func=mmsdk:postactlog"

    invoke-static {p0}, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->createMessage(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v5

    :try_start_15
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1a
    .catch Lorg/json/JSONException; {:try_start_15 .. :try_end_1a} :catch_e1

    :try_start_1a
    const-string v7, "sid"

    const-string v8, "sid"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_25
    .catch Lorg/json/JSONException; {:try_start_1a .. :try_end_25} :catch_d7

    :goto_25
    :try_start_25
    const-string v6, "mac"

    invoke-static {p0}, Lcom/chinaMobile/udata/charge/mini/h;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2e
    .catch Lorg/json/JSONException; {:try_start_25 .. :try_end_2e} :catch_e1

    :try_start_2e
    const-string v6, "deviceDetail"

    invoke-static {}, Lcom/chinaMobile/udata/charge/mini/h;->a()Ljava/lang/String;

    move-result-object v7

    const-string v8, "UTF-8"

    invoke-static {v7, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2e .. :try_end_3d} :catch_e7
    .catch Lorg/json/JSONException; {:try_start_2e .. :try_end_3d} :catch_e1

    :goto_3d
    :try_start_3d
    const-string v6, "manufacturer"

    invoke-static {}, Lcom/chinaMobile/udata/charge/mini/h;->b()Ljava/lang/String;

    move-result-object v7

    const-string v8, "UTF-8"

    invoke-static {v7, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3d .. :try_end_4c} :catch_f1
    .catch Lorg/json/JSONException; {:try_start_3d .. :try_end_4c} :catch_e1

    :goto_4c
    :try_start_4c
    const-string v6, "phoneOs"

    invoke-static {}, Lcom/chinaMobile/udata/charge/mini/h;->c()Ljava/lang/String;

    move-result-object v7

    const-string v8, "UTF-8"

    invoke-static {v7, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4c .. :try_end_5b} :catch_fb
    .catch Lorg/json/JSONException; {:try_start_4c .. :try_end_5b} :catch_e1

    :goto_5b
    :try_start_5b
    const-string v6, "accessPoint"

    invoke-static {p0}, Lcom/chinaMobile/udata/charge/mini/h;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "UTF-8"

    invoke-static {v7, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_6a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5b .. :try_end_6a} :catch_105
    .catch Lorg/json/JSONException; {:try_start_5b .. :try_end_6a} :catch_e1

    :goto_6a
    :try_start_6a
    const-string v6, "netWorkType"

    invoke-static {p0}, Lcom/chinaMobile/udata/charge/mini/h;->r(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "UTF-8"

    invoke-static {v7, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_79
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6a .. :try_end_79} :catch_10f
    .catch Lorg/json/JSONException; {:try_start_6a .. :try_end_79} :catch_e1

    :goto_79
    :try_start_79
    const-string v6, "deviceId"

    invoke-static {p0}, Lcom/chinaMobile/udata/charge/mini/h;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "cpuRatioMax"

    invoke-static {}, Lcom/chinaMobile/udata/charge/mini/h;->f()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "cpuRatioCur"

    invoke-static {}, Lcom/chinaMobile/udata/charge/mini/h;->g()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "menoryRatio"

    invoke-static {}, Lcom/chinaMobile/udata/charge/mini/h;->h()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "logJsonAry"

    new-instance v7, Lorg/json/JSONArray;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, "]"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {p0, v4, v5}, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->HttpPostData(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)I
    :try_end_c3
    .catch Lorg/json/JSONException; {:try_start_79 .. :try_end_c3} :catch_e1

    move-result v2

    :goto_c4
    if-eq v2, v1, :cond_c8

    if-ne v2, v3, :cond_119

    :cond_c8
    invoke-static {p0, v3}, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->recordDate(Landroid/content/Context;I)V

    invoke-static {p0, p1}, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->deleteLog(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "MobileAgent"

    const-string v2, "act log sd"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    :cond_d6
    :goto_d6
    return v0

    :catch_d7
    move-exception v6

    :try_start_d8
    const-string v6, "sid"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_df
    .catch Lorg/json/JSONException; {:try_start_d8 .. :try_end_df} :catch_e1

    goto/16 :goto_25

    :catch_e1
    move-exception v2

    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    move v2, v3

    goto :goto_c4

    :catch_e7
    move-exception v6

    :try_start_e8
    const-string v6, "deviceDetail"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_3d

    :catch_f1
    move-exception v6

    const-string v6, "manufacturer"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_4c

    :catch_fb
    move-exception v6

    const-string v6, "phoneOs"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_5b

    :catch_105
    move-exception v6

    const-string v6, "accessPoint"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_6a

    :catch_10f
    move-exception v6

    const-string v6, "netWorkType"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_117
    .catch Lorg/json/JSONException; {:try_start_e8 .. :try_end_117} :catch_e1

    goto/16 :goto_79

    :cond_119
    const/4 v1, 0x2

    if-ne v2, v1, :cond_d6

    goto :goto_d6

    :cond_11d
    invoke-static {p0, v3}, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->recordDate(Landroid/content/Context;I)V

    invoke-static {p0, p1}, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->deleteLog(Landroid/content/Context;Ljava/lang/String;)V

    move v0, v1

    goto :goto_d6
.end method

.method protected static sendErrorMessage(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 11

    const/4 v8, 0x3

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {p0, p1}, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->getLogStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :try_start_7
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "pid"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "protocolVersion"

    const-string v5, "3.1.4"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "sdkVersion"

    const-string v5, "3.2.1.2"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "cid"

    invoke-static {p0}, Lcom/chinaMobile/udata/charge/mini/h;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "deviceId"

    invoke-static {p0}, Lcom/chinaMobile/udata/charge/mini/h;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "appKey"

    invoke-static {p0}, Lcom/chinaMobile/udata/charge/mini/h;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "packageName"

    invoke-static {p0}, Lcom/chinaMobile/udata/charge/mini/h;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "versionCode"

    invoke-static {p0}, Lcom/chinaMobile/udata/charge/mini/h;->o(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "versionName"

    invoke-static {p0}, Lcom/chinaMobile/udata/charge/mini/h;->p(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "sendTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v3, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v4, "http://da.mmarket.com/mmsdk/mmsdk?func=mmsdk:posterrlog"

    invoke-static {p0, v4, v3}, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->HttpPostData(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v3

    if-eq v3, v1, :cond_69

    if-ne v3, v8, :cond_91

    :cond_69
    const/4 v3, 0x3

    invoke-static {p0, v3}, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->recordDate(Landroid/content/Context;I)V

    invoke-static {p0, p1}, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->deleteLog(Landroid/content/Context;Ljava/lang/String;)V

    const-string v3, "MobileAgent"

    const-string v4, "erLog sd"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "MobileAgent"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "send errlog success \n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/chinaMobile/udata/charge/mini/g;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8f
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_8f} :catch_95

    move v0, v1

    :cond_90
    :goto_90
    return v0

    :cond_91
    const/4 v1, 0x2

    if-ne v3, v1, :cond_90

    goto :goto_90

    :catch_95
    move-exception v1

    invoke-static {p0, p1}, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->deleteLog(Landroid/content/Context;Ljava/lang/String;)V

    const-string v1, "MobileAgent"

    const-string v2, "SDK del a dirty data"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_90
.end method

.method protected static sendEventMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10

    const/4 v6, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p2, :cond_d3

    invoke-static {p0, p1}, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->getLogStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_9
    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_119

    :try_start_11
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/chinaMobile/udata/charge/mini/h;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "pid"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "protocolVersion"

    const-string v5, "3.1.4"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "sdkVersion"

    const-string v5, "3.2.1.2"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "cid"

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "appKey"

    invoke-static {p0}, Lcom/chinaMobile/udata/charge/mini/h;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "packageName"

    invoke-static {p0}, Lcom/chinaMobile/udata/charge/mini/h;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "versionCode"

    invoke-static {p0}, Lcom/chinaMobile/udata/charge/mini/h;->o(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "versionName"

    invoke-static {p0}, Lcom/chinaMobile/udata/charge/mini/h;->p(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "sendTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "mac"

    invoke-static {p0}, Lcom/chinaMobile/udata/charge/mini/h;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_69
    .catch Lorg/json/JSONException; {:try_start_11 .. :try_end_69} :catch_df

    :try_start_69
    const-string v0, "deviceDetail"

    invoke-static {}, Lcom/chinaMobile/udata/charge/mini/h;->a()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_78
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_69 .. :try_end_78} :catch_d6
    .catch Lorg/json/JSONException; {:try_start_69 .. :try_end_78} :catch_df

    :goto_78
    :try_start_78
    const-string v0, "manufacturer"

    invoke-static {}, Lcom/chinaMobile/udata/charge/mini/h;->b()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_87
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_78 .. :try_end_87} :catch_e8
    .catch Lorg/json/JSONException; {:try_start_78 .. :try_end_87} :catch_df

    :goto_87
    :try_start_87
    const-string v0, "phoneOs"

    invoke-static {}, Lcom/chinaMobile/udata/charge/mini/h;->c()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_96
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_87 .. :try_end_96} :catch_f1
    .catch Lorg/json/JSONException; {:try_start_87 .. :try_end_96} :catch_df

    :goto_96
    :try_start_96
    const-string v0, "accessPoint"

    invoke-static {p0}, Lcom/chinaMobile/udata/charge/mini/h;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "deviceId"

    invoke-static {p0}, Lcom/chinaMobile/udata/charge/mini/h;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_a8
    .catch Lorg/json/JSONException; {:try_start_96 .. :try_end_a8} :catch_df

    :try_start_a8
    const-string v0, "channel"

    invoke-static {p0}, Lcom/chinaMobile/udata/charge/mini/h;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_b7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_a8 .. :try_end_b7} :catch_fa
    .catch Lorg/json/JSONException; {:try_start_a8 .. :try_end_b7} :catch_df

    :goto_b7
    :try_start_b7
    const-string v0, "http://da.mmarket.com/mmsdk/mmsdk?func=mmsdk:posteventlog"

    invoke-static {p0, v0, v3}, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->HttpPostData(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v0

    if-eq v0, v2, :cond_c1

    if-ne v0, v6, :cond_10b

    :cond_c1
    if-nez p2, :cond_103

    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->recordDate(Landroid/content/Context;I)V

    invoke-static {p0, p1}, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->deleteLog(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "MobileAgent"

    const-string v1, "evn log sd"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_d1
    move v0, v2

    :goto_d2
    return v0

    :cond_d3
    move-object v0, p2

    goto/16 :goto_9

    :catch_d6
    move-exception v0

    const-string v0, "deviceDetail"

    const-string v4, ""

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_de
    .catch Lorg/json/JSONException; {:try_start_b7 .. :try_end_de} :catch_df

    goto :goto_78

    :catch_df
    move-exception v0

    invoke-static {p0, p1}, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->deleteLog(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move v0, v2

    goto :goto_d2

    :catch_e8
    move-exception v0

    :try_start_e9
    const-string v0, "manufacturer"

    const-string v4, ""

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_87

    :catch_f1
    move-exception v0

    const-string v0, "phoneOs"

    const-string v4, ""

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_96

    :catch_fa
    move-exception v0

    const-string v0, "channel"

    const-string v4, ""

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_b7

    :cond_103
    const-string v0, "MobileAgent"

    const-string v1, "evnrt log sd"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d1

    :cond_10b
    const/4 v3, 0x2

    if-ne v0, v3, :cond_117

    const-string v0, "MobileAgent"

    const-string v3, "please check your network"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_115
    .catch Lorg/json/JSONException; {:try_start_e9 .. :try_end_115} :catch_df

    move v0, v1

    goto :goto_d2

    :cond_117
    move v0, v1

    goto :goto_d2

    :cond_119
    if-nez p2, :cond_123

    invoke-static {p0, v6}, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->recordDate(Landroid/content/Context;I)V

    invoke-static {p0, p1}, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->deleteLog(Landroid/content/Context;Ljava/lang/String;)V

    move v0, v2

    goto :goto_d2

    :cond_123
    move v0, v1

    goto :goto_d2
.end method

.method protected static sendEventSpMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10

    const/4 v6, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p2, :cond_d3

    invoke-static {p0, p1}, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->getLogStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_9
    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_119

    :try_start_11
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/chinaMobile/udata/charge/mini/h;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "pid"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "protocolVersion"

    const-string v5, "3.1.4"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "sdkVersion"

    const-string v5, "3.2.1.2"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "cid"

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "appKey"

    invoke-static {p0}, Lcom/chinaMobile/udata/charge/mini/h;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "packageName"

    invoke-static {p0}, Lcom/chinaMobile/udata/charge/mini/h;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "versionCode"

    invoke-static {p0}, Lcom/chinaMobile/udata/charge/mini/h;->o(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "versionName"

    invoke-static {p0}, Lcom/chinaMobile/udata/charge/mini/h;->p(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "sendTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "mac"

    invoke-static {p0}, Lcom/chinaMobile/udata/charge/mini/h;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_69
    .catch Lorg/json/JSONException; {:try_start_11 .. :try_end_69} :catch_df

    :try_start_69
    const-string v0, "deviceDetail"

    invoke-static {}, Lcom/chinaMobile/udata/charge/mini/h;->a()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_78
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_69 .. :try_end_78} :catch_d6
    .catch Lorg/json/JSONException; {:try_start_69 .. :try_end_78} :catch_df

    :goto_78
    :try_start_78
    const-string v0, "manufacturer"

    invoke-static {}, Lcom/chinaMobile/udata/charge/mini/h;->b()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_87
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_78 .. :try_end_87} :catch_e8
    .catch Lorg/json/JSONException; {:try_start_78 .. :try_end_87} :catch_df

    :goto_87
    :try_start_87
    const-string v0, "phoneOs"

    invoke-static {}, Lcom/chinaMobile/udata/charge/mini/h;->c()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_96
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_87 .. :try_end_96} :catch_f1
    .catch Lorg/json/JSONException; {:try_start_87 .. :try_end_96} :catch_df

    :goto_96
    :try_start_96
    const-string v0, "accessPoint"

    invoke-static {p0}, Lcom/chinaMobile/udata/charge/mini/h;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "deviceId"

    invoke-static {p0}, Lcom/chinaMobile/udata/charge/mini/h;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_a8
    .catch Lorg/json/JSONException; {:try_start_96 .. :try_end_a8} :catch_df

    :try_start_a8
    const-string v0, "channel"

    invoke-static {p0}, Lcom/chinaMobile/udata/charge/mini/h;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_b7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_a8 .. :try_end_b7} :catch_fa
    .catch Lorg/json/JSONException; {:try_start_a8 .. :try_end_b7} :catch_df

    :goto_b7
    :try_start_b7
    const-string v0, "http://da.mmarket.com/mmsdk/mmsdk?func=mmsdk:specposteventlog"

    invoke-static {p0, v0, v3}, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->HttpPostData(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v0

    if-eq v0, v2, :cond_c1

    if-ne v0, v6, :cond_10b

    :cond_c1
    if-nez p2, :cond_103

    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->recordDate(Landroid/content/Context;I)V

    invoke-static {p0, p1}, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->deleteLog(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "MobileAgent"

    const-string v1, "evn sp log sd"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_d1
    move v0, v2

    :goto_d2
    return v0

    :cond_d3
    move-object v0, p2

    goto/16 :goto_9

    :catch_d6
    move-exception v0

    const-string v0, "deviceDetail"

    const-string v4, ""

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_de
    .catch Lorg/json/JSONException; {:try_start_b7 .. :try_end_de} :catch_df

    goto :goto_78

    :catch_df
    move-exception v0

    invoke-static {p0, p1}, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->deleteLog(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move v0, v2

    goto :goto_d2

    :catch_e8
    move-exception v0

    :try_start_e9
    const-string v0, "manufacturer"

    const-string v4, ""

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_87

    :catch_f1
    move-exception v0

    const-string v0, "phoneOs"

    const-string v4, ""

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_96

    :catch_fa
    move-exception v0

    const-string v0, "channel"

    const-string v4, ""

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_b7

    :cond_103
    const-string v0, "MobileAgent"

    const-string v1, "evnrt sp log sd"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d1

    :cond_10b
    const/4 v3, 0x2

    if-ne v0, v3, :cond_117

    const-string v0, "MobileAgent"

    const-string v3, "please check your network"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_115
    .catch Lorg/json/JSONException; {:try_start_e9 .. :try_end_115} :catch_df

    move v0, v1

    goto :goto_d2

    :cond_117
    move v0, v1

    goto :goto_d2

    :cond_119
    if-nez p2, :cond_123

    invoke-static {p0, v6}, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->recordDate(Landroid/content/Context;I)V

    invoke-static {p0, p1}, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->deleteLog(Landroid/content/Context;Ljava/lang/String;)V

    move v0, v2

    goto :goto_d2

    :cond_123
    move v0, v1

    goto :goto_d2
.end method

.method protected static sendFeedbackMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/chinaMobile/udata/charge/mini/c;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/chinaMobile/udata/charge/mini/c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method protected static sendSystemMessage(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x1

    invoke-static {p0, p1}, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->getLogStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :try_start_5
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "http://da.mmarket.com/mmsdk/mmsdk?func=mmsdk:postsyslog"

    invoke-static {p0, v1, v2}, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->HttpPostData(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v1

    if-ne v1, v0, :cond_2b

    invoke-static {p0, p1}, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->deleteLog(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->setFirst(Landroid/content/Context;)V

    const-string v1, "MobileAgent"

    const-string v2, "sys log sd"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_1f} :catch_20

    :goto_1f
    return v0

    :catch_20
    move-exception v0

    invoke-static {p0, p1}, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->deleteLog(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "MobileAgent"

    const-string v1, "SDK del a dirty data"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method private static sessionPolicy(Landroid/content/Context;)Z
    .registers 11

    const-wide/16 v8, 0x0

    const/4 v6, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "MobileAgentRun"

    const-string v3, "run into sessionpolicy"

    invoke-static {v2, v3}, Lcom/chinaMobile/udata/charge/mini/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/chinaMobile/udata/charge/mini/h;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->getStateSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "sessionId"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->isSessionTimeOut(Landroid/content/SharedPreferences;)Z

    move-result v5

    if-eqz v5, :cond_71

    if-eqz v4, :cond_5a

    invoke-static {p0, v3, v0}, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->getLastLaunchData(Landroid/content/Context;Landroid/content/SharedPreferences;Z)Z

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "readFlowRev"

    invoke-interface {v3, v5, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v6, "readFlowSnd"

    invoke-interface {v3, v6, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    const-string v7, "readFlowRev"

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-interface {v4, v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v5, "readFlowSnd"

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-interface {v4, v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_5a
    invoke-static {p0, v2, v3}, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->createSession(Landroid/content/Context;Ljava/lang/String;Landroid/content/SharedPreferences;)Ljava/lang/String;

    invoke-static {p0, v3, v1}, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->getLastLaunchData(Landroid/content/Context;Landroid/content/SharedPreferences;Z)Z

    invoke-static {p0}, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->isFirst(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_69

    invoke-static {p0}, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->pushSysLog(Landroid/content/Context;)V

    :cond_69
    :goto_69
    const-string v1, "MobileAgentRun"

    const-string v2, "run out sessionpolicy"

    invoke-static {v1, v2}, Lcom/chinaMobile/udata/charge/mini/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_71
    const-string v2, "activities"

    invoke-interface {v3, v2, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "activities"

    const-string v6, "onResume"

    invoke-static {p0, v6, v2}, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->getActivityStateStr(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v5, "lastResumeTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-interface {v4, v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    sget v4, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->g:I

    if-eq v4, v0, :cond_9f

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    const/16 v2, 0x2710

    if-le v0, v2, :cond_a2

    :cond_9f
    invoke-static {p0, v3, v1}, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->getLastLaunchData(Landroid/content/Context;Landroid/content/SharedPreferences;Z)Z

    :cond_a2
    move v0, v1

    goto :goto_69
.end method

.method public static setAutoListenCrash(Ljava/lang/Boolean;)V
    .registers 2

    sget v0, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->c:I

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->d:Z

    goto :goto_4
.end method

.method private static setFirst(Landroid/content/Context;)V
    .registers 4

    invoke-static {p0}, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->getConfigPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "is_first_run"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method protected static strategy(Landroid/content/Context;Z)V
    .registers 6

    const/4 v3, 0x0

    const/4 v2, 0x6

    sget v0, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->c:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    :goto_7
    return-void

    :cond_8
    const-string v0, "MobileAgentRun"

    const-string v1, "run into strategy"

    invoke-static {v0, v1}, Lcom/chinaMobile/udata/charge/mini/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->syncParams(Landroid/content/Context;)V

    sget-boolean v0, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->e:Z

    if-eqz v0, :cond_20

    sget-boolean v0, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->e:Z

    if-eqz v0, :cond_25

    invoke-static {p0}, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->isWiFi(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_25

    :cond_20
    sget v0, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->g:I

    packed-switch v0, :pswitch_data_56

    :cond_25
    :goto_25
    sput-boolean v3, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->f:Z

    const-string v0, "MobileAgentRun"

    const-string v1, "run out strategy"

    invoke-static {v0, v1}, Lcom/chinaMobile/udata/charge/mini/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :pswitch_2f
    new-instance v0, Lcom/chinaMobile/udata/charge/mini/e;

    invoke-direct {v0, p0, v2}, Lcom/chinaMobile/udata/charge/mini/e;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Lcom/chinaMobile/udata/charge/mini/e;->start()V

    goto :goto_25

    :pswitch_38
    if-eqz p1, :cond_25

    new-instance v0, Lcom/chinaMobile/udata/charge/mini/e;

    invoke-direct {v0, p0, v2}, Lcom/chinaMobile/udata/charge/mini/e;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Lcom/chinaMobile/udata/charge/mini/e;->start()V

    sput-boolean v3, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->f:Z

    goto :goto_25

    :pswitch_45
    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->isOnce(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_25

    new-instance v0, Lcom/chinaMobile/udata/charge/mini/e;

    invoke-direct {v0, p0, v2}, Lcom/chinaMobile/udata/charge/mini/e;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Lcom/chinaMobile/udata/charge/mini/e;->start()V

    goto :goto_25

    nop

    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_2f
        :pswitch_38
        :pswitch_45
    .end packed-switch
.end method

.method protected static syncParams(Landroid/content/Context;)V
    .registers 4

    const/4 v2, 0x1

    sget-boolean v0, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->f:Z

    if-eqz v0, :cond_3b

    const-string v0, "updateonlyonwifi"

    invoke-static {p0, v0}, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->getConfigParams(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    sput-boolean v2, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->e:Z

    :goto_15
    const-string v0, "updatedelay"

    invoke-static {p0, v0}, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->getConfigParams(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    sput v0, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->h:I

    :cond_2b
    const-string v0, "send_policy"

    invoke-static {p0, v0}, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->getConfigParams(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->g:I

    if-nez v0, :cond_3b

    sput v2, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->g:I

    :cond_3b
    return-void

    :cond_3c
    const/4 v0, 0x0

    sput-boolean v0, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->e:Z

    goto :goto_15
.end method

.method private static updateApkMd5(Landroid/content/Context;)V
    .registers 4

    invoke-static {p0}, Lcom/chinaMobile/udata/charge/mini/a/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "md5"

    invoke-static {p0, v1}, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->getConfigParams(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    :cond_10
    :goto_10
    return-void

    :cond_11
    invoke-static {p0}, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->getConfigPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "md5"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v1, "#apk_security_check "

    invoke-static {p0, v1}, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->isRecordEvent(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_10

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/chinaMobile/udata/charge/mini/d;

    invoke-direct {v2, p0, v0}, Lcom/chinaMobile/udata/charge/mini/d;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_10
.end method

.method static declared-synchronized uploadList(Landroid/content/Context;)V
    .registers 7

    const-class v1, Lcom/chinaMobile/udata/charge/mini/MobileAgent;

    monitor-enter v1

    :try_start_3
    const-string v0, "MobileAgentRun"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "run into uploadlist :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/chinaMobile/udata/charge/mini/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->g:I
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_72

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2e

    :try_start_28
    sget v0, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->h:I

    int-to-long v2, v0

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2e
    .catch Ljava/lang/InterruptedException; {:try_start_28 .. :try_end_2e} :catch_75
    .catchall {:try_start_28 .. :try_end_2e} :catchall_72

    :cond_2e
    :goto_2e
    const/4 v0, 0x1

    :try_start_2f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    :goto_32
    invoke-static {p0}, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->popUploadFileName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_cd

    if-eqz v0, :cond_cd

    const/4 v3, 0x0

    const/4 v4, 0x6

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->i:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7a

    invoke-static {p0, v2}, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->sendActionMessage(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_51
    .catchall {:try_start_2f .. :try_end_51} :catchall_72

    move-result v0

    :cond_52
    :goto_52
    if-eqz v0, :cond_59

    const-wide/16 v4, 0x0

    :try_start_56
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_59
    .catch Ljava/lang/InterruptedException; {:try_start_56 .. :try_end_59} :catch_c8
    .catchall {:try_start_56 .. :try_end_59} :catchall_72

    :cond_59
    :goto_59
    :try_start_59
    const-string v3, "MobileAgentRun"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "finish a task : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/chinaMobile/udata/charge/mini/g;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_71
    .catchall {:try_start_59 .. :try_end_71} :catchall_72

    goto :goto_32

    :catchall_72
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_75
    move-exception v0

    :try_start_76
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2e

    :cond_7a
    const/4 v3, 0x0

    const/4 v4, 0x6

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->j:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8e

    const/4 v0, 0x0

    invoke-static {p0, v2, v0}, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->sendEventMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_52

    :cond_8e
    const/4 v3, 0x0

    const/4 v4, 0x6

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->l:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a1

    invoke-static {p0, v2}, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->sendErrorMessage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    goto :goto_52

    :cond_a1
    const/4 v3, 0x0

    const/4 v4, 0x6

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->k:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b5

    const/4 v0, 0x0

    invoke-static {p0, v2, v0}, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->sendEventSpMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_52

    :cond_b5
    const/4 v3, 0x0

    const/4 v4, 0x6

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->m:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_52

    invoke-static {p0, v2}, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->sendSystemMessage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    goto :goto_52

    :catch_c8
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_59

    :cond_cd
    const-string v0, "MobileAgentRun"

    const-string v2, " finish uploadlist "

    invoke-static {v0, v2}, Lcom/chinaMobile/udata/charge/mini/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MobileAgentRun"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "run out uploadlist :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/chinaMobile/udata/charge/mini/g;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f4
    .catchall {:try_start_76 .. :try_end_f4} :catchall_72

    monitor-exit v1

    return-void
.end method

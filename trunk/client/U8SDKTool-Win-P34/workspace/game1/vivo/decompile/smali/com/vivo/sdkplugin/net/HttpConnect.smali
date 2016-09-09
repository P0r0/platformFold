.class public Lcom/vivo/sdkplugin/net/HttpConnect;
.super Ljava/lang/Object;


# static fields
.field public static final CONNECT_TYPE_HTTPCLIENT_GET:I = 0x0

.field public static final CONNECT_TYPE_HTTPCLIENT_POST:I = 0x1

.field public static final DEFAULT_USER_AGENT:Ljava/lang/String; = "BBKAccountV2"

.field public static final FROM:Ljava/lang/String; = "game"

.field public static final RESULT_TYPE_INPUTSTREAM:I = 0x1

.field public static final RESULT_TYPE_STRING:I = 0x0

.field public static final RETURN_FILE:Ljava/lang/String; = "1"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/Object;

.field private c:Lcom/vivo/sdkplugin/net/HttpResponed;

.field private d:Ljava/lang/String;

.field private e:Ljava/util/HashMap;

.field private f:Ljava/util/HashMap;

.field private g:Lorg/apache/http/client/HttpClient;

.field private h:I

.field private i:I

.field private j:Ljava/lang/String;

.field private k:I

.field private l:Z

.field private m:Z

.field private n:I

.field private o:Z

.field private p:Z

.field private q:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

.field private r:Ljava/net/HttpURLConnection;

.field private s:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->a:Landroid/content/Context;

    iput-object v1, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->b:Ljava/lang/Object;

    iput-object v1, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->c:Lcom/vivo/sdkplugin/net/HttpResponed;

    iput-object v1, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->d:Ljava/lang/String;

    iput-object v1, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->e:Ljava/util/HashMap;

    iput-object v1, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->f:Ljava/util/HashMap;

    iput-object v1, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->g:Lorg/apache/http/client/HttpClient;

    const/4 v0, -0x1

    iput v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->h:I

    iput v2, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->i:I

    iput-object v1, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->j:Ljava/lang/String;

    iput v2, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->k:I

    iput-boolean v2, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->l:Z

    iput-boolean v2, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->m:Z

    iput v2, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->n:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->o:Z

    iput-boolean v2, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->p:Z

    iput-object p1, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    new-instance v0, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-direct {v0, p1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->q:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    iput-object p3, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->j:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->l:Z

    invoke-static {}, Lcom/vivo/sdkplugin/net/BBKSSLSocketFactory;->getNewHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->g:Lorg/apache/http/client/HttpClient;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/vivo/sdkplugin/net/HttpConnect;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput p4, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->n:I

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/util/HashMap;I)Ljava/io/InputStream;
    .registers 10

    const/4 v2, 0x0

    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->j:Ljava/lang/String;

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->j:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_46

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->r:Ljava/net/HttpURLConnection;
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_37} :catch_56

    :goto_37
    iget-object v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->r:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_74

    iget v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->i:I

    if-lez v0, :cond_6b

    iget v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->i:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->i:I

    goto :goto_1

    :cond_46
    :try_start_46
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->r:Ljava/net/HttpURLConnection;
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_55} :catch_56

    goto :goto_37

    :catch_56
    move-exception v0

    iget v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->i:I

    if-lez v0, :cond_62

    iget v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->i:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->i:I

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

    if-ne p3, v0, :cond_e1

    :try_start_77
    iget-object v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->r:Ljava/net/HttpURLConnection;

    const-string v1, "request-hs"

    const-string v3, "post"

    invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :goto_80
    iget-object v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->j:Ljava/lang/String;

    if-eqz v0, :cond_b1

    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->r:Ljava/net/HttpURLConnection;

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
    .catch Ljava/lang/IllegalStateException; {:try_start_77 .. :try_end_be} :catch_ee
    .catch Ljava/lang/NullPointerException; {:try_start_77 .. :try_end_be} :catch_135
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_77 .. :try_end_be} :catch_141
    .catch Ljava/net/MalformedURLException; {:try_start_77 .. :try_end_be} :catch_14d

    move-result v0

    if-nez v0, :cond_111

    :cond_c1
    :try_start_c1
    iget-object v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->r:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_c6
    .catch Ljava/lang/Exception; {:try_start_c1 .. :try_end_c6} :catch_159

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_1b0

    :try_start_cb
    iget-object v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->r:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->s:Ljava/io/InputStream;

    iget-object v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->s:Ljava/io/InputStream;

    if-eqz v0, :cond_175

    iget-object v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->c:Lcom/vivo/sdkplugin/net/HttpResponed;

    iget-object v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->r:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    iget-object v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->s:Ljava/io/InputStream;
    :try_end_e0
    .catch Ljava/io/IOException; {:try_start_cb .. :try_end_e0} :catch_194

    goto :goto_6a

    :cond_e1
    const/4 v0, 0x2

    if-ne p3, v0, :cond_fa

    :try_start_e4
    iget-object v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->r:Ljava/net/HttpURLConnection;

    const-string v1, "request-hs"

    const-string v3, "get"

    invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ed
    .catch Ljava/lang/IllegalStateException; {:try_start_e4 .. :try_end_ed} :catch_ee
    .catch Ljava/lang/NullPointerException; {:try_start_e4 .. :try_end_ed} :catch_135
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_e4 .. :try_end_ed} :catch_141
    .catch Ljava/net/MalformedURLException; {:try_start_e4 .. :try_end_ed} :catch_14d

    goto :goto_80

    :catch_ee
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    iget-object v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->r:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object v0, v2

    goto/16 :goto_6a

    :cond_fa
    :try_start_fa
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

    :cond_111
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

    iget-object v4, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->r:Ljava/net/HttpURLConnection;

    invoke-virtual {v4, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_134
    .catch Ljava/lang/IllegalStateException; {:try_start_fa .. :try_end_134} :catch_ee
    .catch Ljava/lang/NullPointerException; {:try_start_fa .. :try_end_134} :catch_135
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_fa .. :try_end_134} :catch_141
    .catch Ljava/net/MalformedURLException; {:try_start_fa .. :try_end_134} :catch_14d

    goto :goto_bb

    :catch_135
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    iget-object v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->r:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object v0, v2

    goto/16 :goto_6a

    :catch_141
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    iget-object v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->r:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object v0, v2

    goto/16 :goto_6a

    :catch_14d
    move-exception v0

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    iget-object v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->r:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object v0, v2

    goto/16 :goto_6a

    :catch_159
    move-exception v0

    iget v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->i:I

    if-lez v0, :cond_166

    iget v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->i:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->i:I

    goto/16 :goto_1

    :cond_166
    const-string v0, "HttpConnect"

    const-string v1, "can not get the status code"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->r:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object v0, v2

    goto/16 :goto_6a

    :cond_175
    :try_start_175
    iget v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->i:I

    if-lez v0, :cond_185

    iget v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->i:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->i:I

    invoke-direct {p0, p1, p2, p3}, Lcom/vivo/sdkplugin/net/HttpConnect;->a(Ljava/lang/String;Ljava/util/HashMap;I)Ljava/io/InputStream;

    move-result-object v0

    goto/16 :goto_6a

    :cond_185
    const-string v0, "HttpConnect"

    const-string v1, "get nothing from server"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->r:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_191
    .catch Ljava/io/IOException; {:try_start_175 .. :try_end_191} :catch_194

    move-object v0, v2

    goto/16 :goto_6a

    :catch_194
    move-exception v0

    iget v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->i:I

    if-lez v0, :cond_1a1

    iget v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->i:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->i:I

    goto/16 :goto_1

    :cond_1a1
    const-string v0, "HttpConnect"

    const-string v1, "get content error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->r:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :goto_1ad
    move-object v0, v2

    goto/16 :goto_6a

    :cond_1b0
    iget v1, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->i:I

    if-lez v1, :cond_1bc

    iget v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->i:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->i:I

    goto/16 :goto_1

    :cond_1bc
    const-string v1, "HttpConnect"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "status code error, status code is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->r:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_1ad
.end method

.method private a(Ljava/lang/String;I)V
    .registers 16

    :goto_0
    iget-object v1, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->e:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->f:Ljava/util/HashMap;

    const-string v2, "regpro"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v2, "HttpConnect"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "doHttpClient,method="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", mTryNum="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->i:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_1fe

    const-string v2, ""

    :try_start_2e
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_36
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_39} :catch_1bd

    move-result v0

    if-nez v0, :cond_127

    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8dd

    const-string v0, "&"

    const-string v1, "?"

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_5d
    const-string v1, "HttpConnect"

    const-string v2, "***************************"

    invoke-static {v1, v2}, Lcom/vivo/sdkplugin/Utils/VivoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "HttpConnect"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "paramStr="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/vivo/sdkplugin/Utils/VivoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->p:Z

    if-eqz v0, :cond_ec

    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "&s="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/vivo/md5/Wave;->getM2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HttpConnect"

    const-string v2, "***************************"

    invoke-static {v1, v2}, Lcom/vivo/sdkplugin/Utils/VivoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "HttpConnect"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "***url="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " paramStrvaccsign"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vivo/sdkplugin/Utils/VivoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "HttpConnect"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "***s********:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vivo/sdkplugin/Utils/VivoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_ec
    const-string v0, "HttpConnect"

    const-string v1, "***************************"

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "HttpConnect"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "***Get url="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_107
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
    :try_end_10c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_107 .. :try_end_10c} :catch_1e6

    :goto_10c
    iget-object v5, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->g:Lorg/apache/http/client/HttpClient;

    iget-boolean v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->l:Z

    if-nez v0, :cond_114

    if-nez v5, :cond_33a

    :cond_114
    iget-object v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->c:Lcom/vivo/sdkplugin/net/HttpResponed;

    if-eqz v0, :cond_126

    iget-boolean v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->m:Z

    if-nez v0, :cond_126

    iget-object v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->c:Lcom/vivo/sdkplugin/net/HttpResponed;

    iget-object v1, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->b:Ljava/lang/Object;

    const/16 v2, 0xcf

    const/4 v3, 0x0

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/vivo/sdkplugin/net/HttpResponed;->respond(Lcom/vivo/sdkplugin/net/HttpConnect;Ljava/lang/Object;ILjava/lang/String;)V

    :cond_126
    :goto_126
    return-void

    :cond_127
    :try_start_127
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v5, "HttpConnect"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "---------key: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " val: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "main/pwdque/verify"

    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1d5

    const-string v5, "answer"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_175

    const-string v5, "question"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_175

    :cond_16f
    :goto_16f
    const-string v5, "UTF-8"

    invoke-static {v0, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_175
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "&"

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "---------key: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " val: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;)V
    :try_end_1bb
    .catch Ljava/lang/Exception; {:try_start_127 .. :try_end_1bb} :catch_1bd

    goto/16 :goto_36

    :catch_1bd
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->c:Lcom/vivo/sdkplugin/net/HttpResponed;

    if-eqz v0, :cond_126

    iget-boolean v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->m:Z

    if-nez v0, :cond_126

    iget-object v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->c:Lcom/vivo/sdkplugin/net/HttpResponed;

    iget-object v1, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->b:Ljava/lang/Object;

    const/16 v2, 0xc9

    const/4 v3, 0x0

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/vivo/sdkplugin/net/HttpResponed;->respond(Lcom/vivo/sdkplugin/net/HttpConnect;Ljava/lang/Object;ILjava/lang/String;)V

    goto/16 :goto_126

    :cond_1d5
    :try_start_1d5
    const-string v5, "main/fpw"

    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_16f

    const-string v5, "account"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1e2
    .catch Ljava/lang/Exception; {:try_start_1d5 .. :try_end_1e2} :catch_1bd

    move-result v5

    if-nez v5, :cond_175

    goto :goto_16f

    :catch_1e6
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    iget-object v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->c:Lcom/vivo/sdkplugin/net/HttpResponed;

    if-eqz v0, :cond_126

    iget-boolean v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->m:Z

    if-nez v0, :cond_126

    iget-object v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->c:Lcom/vivo/sdkplugin/net/HttpResponed;

    iget-object v1, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->b:Ljava/lang/Object;

    const/16 v2, 0xc9

    const/4 v3, 0x0

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/vivo/sdkplugin/net/HttpResponed;->respond(Lcom/vivo/sdkplugin/net/HttpConnect;Ljava/lang/Object;ILjava/lang/String;)V

    goto/16 :goto_126

    :cond_1fe
    const/4 v2, 0x1

    if-ne p2, v2, :cond_324

    const-string v2, "HttpConnect"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "params"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1, v1}, Lcom/vivo/sdkplugin/net/HttpConnect;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    :try_start_218
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v2, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    const-string v3, "Charset"

    const-string v5, "UTF-8"

    invoke-virtual {v2, v3, v5}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "accept"

    const-string v5, "text/html"

    invoke-virtual {v2, v3, v5}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "accept-charset"

    const-string v5, "UTF-8"

    invoke-virtual {v2, v3, v5}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_241

    const-string v3, "Cookie"

    const-string v5, "Cookie"

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_241
    .catch Ljava/lang/IllegalArgumentException; {:try_start_218 .. :try_end_241} :catch_25e

    :cond_241
    new-instance v3, Lorg/apache/http/entity/mime/MultipartEntity;

    invoke-direct {v3}, Lorg/apache/http/entity/mime/MultipartEntity;-><init>()V

    if-eqz v1, :cond_256

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_250
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_276

    :cond_256
    move-object v0, v2

    check-cast v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v0, v3}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    goto/16 :goto_10c

    :catch_25e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    iget-object v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->c:Lcom/vivo/sdkplugin/net/HttpResponed;

    if-eqz v0, :cond_126

    iget-boolean v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->m:Z

    if-nez v0, :cond_126

    iget-object v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->c:Lcom/vivo/sdkplugin/net/HttpResponed;

    iget-object v1, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->b:Ljava/lang/Object;

    const/16 v2, 0xc9

    const/4 v3, 0x0

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/vivo/sdkplugin/net/HttpResponed;->respond(Lcom/vivo/sdkplugin/net/HttpConnect;Ljava/lang/Object;ILjava/lang/String;)V

    goto/16 :goto_126

    :cond_276
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v6, "file"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2b5

    new-instance v6, Lorg/apache/http/entity/mime/content/FileBody;

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v1, "image/jpeg"

    invoke-direct {v6, v7, v1}, Lorg/apache/http/entity/mime/content/FileBody;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v1, "HttpConnect"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "mFileBody="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3, v0, v6}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    goto :goto_250

    :cond_2b5
    const-string v6, "s"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2cb

    :try_start_2bd
    new-instance v6, Lorg/apache/http/entity/mime/content/StringBody;

    invoke-direct {v6, v1}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v6}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V
    :try_end_2c5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2bd .. :try_end_2c5} :catch_2c6

    goto :goto_250

    :catch_2c6
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_250

    :cond_2cb
    :try_start_2cb
    new-instance v6, Lorg/apache/http/entity/mime/content/StringBody;

    const-string v7, "UTF-8"

    invoke-static {v7}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v7

    invoke-direct {v6, v1, v7}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    invoke-virtual {v3, v0, v6}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V
    :try_end_2d9
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2cb .. :try_end_2d9} :catch_2db
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2cb .. :try_end_2d9} :catch_2f3

    goto/16 :goto_250

    :catch_2db
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    iget-object v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->c:Lcom/vivo/sdkplugin/net/HttpResponed;

    if-eqz v0, :cond_126

    iget-boolean v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->m:Z

    if-nez v0, :cond_126

    iget-object v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->c:Lcom/vivo/sdkplugin/net/HttpResponed;

    iget-object v1, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->b:Ljava/lang/Object;

    const/16 v2, 0xc9

    const/4 v3, 0x0

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/vivo/sdkplugin/net/HttpResponed;->respond(Lcom/vivo/sdkplugin/net/HttpConnect;Ljava/lang/Object;ILjava/lang/String;)V

    goto/16 :goto_126

    :catch_2f3
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    const-string v2, "uuid"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_310

    if-eqz v1, :cond_309

    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_310

    :cond_309
    const-string v0, "HttpConnect"

    const-string v1, "deleteAccount"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_310
    iget-object v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->c:Lcom/vivo/sdkplugin/net/HttpResponed;

    if-eqz v0, :cond_126

    iget-boolean v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->m:Z

    if-nez v0, :cond_126

    iget-object v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->c:Lcom/vivo/sdkplugin/net/HttpResponed;

    iget-object v1, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->b:Ljava/lang/Object;

    const/16 v2, 0xc9

    const/4 v3, 0x0

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/vivo/sdkplugin/net/HttpResponed;->respond(Lcom/vivo/sdkplugin/net/HttpConnect;Ljava/lang/Object;ILjava/lang/String;)V

    goto/16 :goto_126

    :cond_324
    const-string v0, "HttpConnect"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "doHttpClient, unspport connect type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_126

    :cond_33a
    iget-object v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->a:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_35e

    iget-object v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->c:Lcom/vivo/sdkplugin/net/HttpResponed;

    if-eqz v0, :cond_126

    iget-boolean v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->m:Z

    if-nez v0, :cond_126

    iget-object v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->c:Lcom/vivo/sdkplugin/net/HttpResponed;

    iget-object v1, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->b:Ljava/lang/Object;

    const/16 v2, 0xca

    const/4 v3, 0x0

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/vivo/sdkplugin/net/HttpResponed;->respond(Lcom/vivo/sdkplugin/net/HttpConnect;Ljava/lang/Object;ILjava/lang/String;)V

    goto/16 :goto_126

    :cond_35e
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v1

    const-string v3, "HttpConnect"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "***network type = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-nez v0, :cond_3d5

    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v1

    const-string v3, "HttpConnect"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Proxy host: is "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " port is: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_3d5

    const/4 v3, -0x1

    if-eq v1, v3, :cond_3d5

    const-string v3, "HttpConnect"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Proxy host: is "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " port is: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Lorg/apache/http/HttpHost;

    const-string v6, "http"

    invoke-direct {v3, v0, v1, v6}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v5}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const-string v1, "http.route.default-proxy"

    invoke-interface {v0, v1, v3}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    :cond_3d5
    invoke-interface {v5}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/apache/http/client/params/HttpClientParams;->setRedirecting(Lorg/apache/http/params/HttpParams;Z)V

    const/4 v3, 0x0

    const-string v1, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    :try_start_3e4
    invoke-interface {v5, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_3e7
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_3e4 .. :try_end_3e7} :catch_41a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3e4 .. :try_end_3e7} :catch_455
    .catch Ljava/io/IOException; {:try_start_3e4 .. :try_end_3e7} :catch_490
    .catch Ljava/lang/IllegalStateException; {:try_start_3e4 .. :try_end_3e7} :catch_4de
    .catch Ljava/lang/NullPointerException; {:try_start_3e4 .. :try_end_3e7} :catch_52c

    move-result-object v5

    const-string v0, "HttpConnect"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "***connect time : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v6, v10, v6

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v5, :cond_595

    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    const-string v0, "HttpConnect"

    const-string v1, "doHttpClientConnect, got httpRespones is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->i:I

    if-lez v0, :cond_57a

    iget v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->i:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->i:I

    goto/16 :goto_0

    :catch_41a
    move-exception v0

    const-string v1, "HttpConnect"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "connect time : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    const-string v0, "HttpConnect"

    const-string v1, "doHttpClientConnect, can\'t connect because ClientProtocolException"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->c:Lcom/vivo/sdkplugin/net/HttpResponed;

    if-eqz v0, :cond_126

    iget-boolean v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->m:Z

    if-nez v0, :cond_126

    iget-object v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->c:Lcom/vivo/sdkplugin/net/HttpResponed;

    iget-object v1, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->b:Ljava/lang/Object;

    const/16 v2, 0xc9

    const/4 v3, 0x0

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/vivo/sdkplugin/net/HttpResponed;->respond(Lcom/vivo/sdkplugin/net/HttpConnect;Ljava/lang/Object;ILjava/lang/String;)V

    goto/16 :goto_126

    :catch_455
    move-exception v0

    const-string v1, "HttpConnect"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "connect time : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    const-string v0, "HttpConnect"

    const-string v1, "doHttpClientConnect, can\'t connect because IllegalArgumentException"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->c:Lcom/vivo/sdkplugin/net/HttpResponed;

    if-eqz v0, :cond_126

    iget-boolean v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->m:Z

    if-nez v0, :cond_126

    iget-object v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->c:Lcom/vivo/sdkplugin/net/HttpResponed;

    iget-object v1, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->b:Ljava/lang/Object;

    const/16 v2, 0xca

    const/4 v3, 0x0

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/vivo/sdkplugin/net/HttpResponed;->respond(Lcom/vivo/sdkplugin/net/HttpConnect;Ljava/lang/Object;ILjava/lang/String;)V

    goto/16 :goto_126

    :catch_490
    move-exception v0

    const-string v1, "HttpConnect"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "connect time : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "HttpConnect"

    const-string v3, "doHttpClientConnect, get a IOException when connect to server"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    iget v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->i:I

    if-lez v0, :cond_4c3

    iget v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->i:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->i:I

    goto/16 :goto_0

    :cond_4c3
    const-string v0, "HttpConnect"

    const-string v1, "doHttpClientConnect, can\'t connect because IOException"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->c:Lcom/vivo/sdkplugin/net/HttpResponed;

    if-eqz v0, :cond_126

    iget-boolean v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->m:Z

    if-nez v0, :cond_126

    iget-object v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->c:Lcom/vivo/sdkplugin/net/HttpResponed;

    iget-object v1, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->b:Ljava/lang/Object;

    const/16 v2, 0xca

    const/4 v3, 0x0

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/vivo/sdkplugin/net/HttpResponed;->respond(Lcom/vivo/sdkplugin/net/HttpConnect;Ljava/lang/Object;ILjava/lang/String;)V

    goto/16 :goto_126

    :catch_4de
    move-exception v0

    const-string v1, "HttpConnect"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "connect time : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "HttpConnect"

    const-string v3, "doHttpClientConnect, get a IllegalStateException when connect to server"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    iget v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->i:I

    if-lez v0, :cond_511

    iget v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->i:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->i:I

    goto/16 :goto_0

    :cond_511
    const-string v0, "HttpConnect"

    const-string v1, "doHttpClientConnect, can\'t connect because IllegalStateException"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->c:Lcom/vivo/sdkplugin/net/HttpResponed;

    if-eqz v0, :cond_126

    iget-boolean v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->m:Z

    if-nez v0, :cond_126

    iget-object v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->c:Lcom/vivo/sdkplugin/net/HttpResponed;

    iget-object v1, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->b:Ljava/lang/Object;

    const/16 v2, 0xca

    const/4 v3, 0x0

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/vivo/sdkplugin/net/HttpResponed;->respond(Lcom/vivo/sdkplugin/net/HttpConnect;Ljava/lang/Object;ILjava/lang/String;)V

    goto/16 :goto_126

    :catch_52c
    move-exception v0

    const-string v1, "HttpConnect"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "connect time : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "HttpConnect"

    const-string v3, "doHttpClientConnect, get a NullPointerException when connect to server"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    iget v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->i:I

    if-lez v0, :cond_55f

    iget v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->i:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->i:I

    goto/16 :goto_0

    :cond_55f
    const-string v0, "HttpConnect"

    const-string v1, "doHttpClientConnect, can\'t connect because NullPointerException"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->c:Lcom/vivo/sdkplugin/net/HttpResponed;

    if-eqz v0, :cond_126

    iget-boolean v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->m:Z

    if-nez v0, :cond_126

    iget-object v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->c:Lcom/vivo/sdkplugin/net/HttpResponed;

    iget-object v1, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->b:Ljava/lang/Object;

    const/16 v2, 0xca

    const/4 v3, 0x0

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/vivo/sdkplugin/net/HttpResponed;->respond(Lcom/vivo/sdkplugin/net/HttpConnect;Ljava/lang/Object;ILjava/lang/String;)V

    goto/16 :goto_126

    :cond_57a
    const-string v0, "HttpConnect"

    const-string v1, "can not connect to server because get HttpRespones always null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->c:Lcom/vivo/sdkplugin/net/HttpResponed;

    if-eqz v0, :cond_126

    iget-boolean v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->m:Z

    if-nez v0, :cond_126

    iget-object v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->c:Lcom/vivo/sdkplugin/net/HttpResponed;

    iget-object v1, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->b:Ljava/lang/Object;

    const/16 v2, 0xcb

    const/4 v3, 0x0

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/vivo/sdkplugin/net/HttpResponed;->respond(Lcom/vivo/sdkplugin/net/HttpConnect;Ljava/lang/Object;ILjava/lang/String;)V

    goto/16 :goto_126

    :cond_595
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    if-nez v0, :cond_5cc

    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    const-string v0, "HttpConnect"

    const-string v1, "doHttpClientConnect, get status line is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->i:I

    if-lez v0, :cond_5b1

    iget v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->i:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->i:I

    goto/16 :goto_0

    :cond_5b1
    const-string v0, "HttpConnect"

    const-string v1, "can not get the status code"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->c:Lcom/vivo/sdkplugin/net/HttpResponed;

    if-eqz v0, :cond_126

    iget-boolean v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->m:Z

    if-nez v0, :cond_126

    iget-object v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->c:Lcom/vivo/sdkplugin/net/HttpResponed;

    iget-object v1, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->b:Ljava/lang/Object;

    const/16 v2, 0xcc

    const/4 v3, 0x0

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/vivo/sdkplugin/net/HttpResponed;->respond(Lcom/vivo/sdkplugin/net/HttpConnect;Ljava/lang/Object;ILjava/lang/String;)V

    goto/16 :goto_126

    :cond_5cc
    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v6, 0xc8

    if-ne v0, v6, :cond_86f

    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v7

    if-eqz v7, :cond_5e7

    const/4 v0, 0x0

    :goto_5e4
    array-length v8, v7

    if-lt v0, v8, :cond_64b

    :cond_5e7
    if-eqz v6, :cond_8d9

    :try_start_5e9
    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v0

    if-eqz v0, :cond_60b

    const-string v0, "HttpConnect"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "httpEntity.getContentEncoding()="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_60b
    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v0

    if-eqz v0, :cond_6bc

    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v7, "HttpConnect"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "httpEntity.getContentType()="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_6bc

    const-string v7, "application/vnd.wap.wmlc"

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6bc

    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    iget v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->i:I

    if-lez v0, :cond_679

    iget v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->i:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->i:I

    invoke-direct {p0, p1, p2}, Lcom/vivo/sdkplugin/net/HttpConnect;->a(Ljava/lang/String;I)V
    :try_end_647
    .catch Ljava/lang/IllegalStateException; {:try_start_5e9 .. :try_end_647} :catch_693
    .catch Ljava/io/IOException; {:try_start_5e9 .. :try_end_647} :catch_7de
    .catchall {:try_start_5e9 .. :try_end_647} :catchall_834

    :cond_647
    :goto_647
    iget v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->n:I

    goto/16 :goto_126

    :cond_64b
    aget-object v8, v7, v0

    invoke-interface {v8}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    invoke-interface {v8}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    const-string v9, "HttpConnect"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "header["

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_5e4

    :cond_679
    :try_start_679
    const-string v0, "HttpConnect"

    const-string v1, "contenType error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->c:Lcom/vivo/sdkplugin/net/HttpResponed;

    if-eqz v0, :cond_647

    iget-boolean v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->m:Z

    if-nez v0, :cond_647

    iget-object v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->c:Lcom/vivo/sdkplugin/net/HttpResponed;

    iget-object v1, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->b:Ljava/lang/Object;

    const/16 v4, 0xcc

    const/4 v5, 0x0

    invoke-interface {v0, p0, v1, v4, v5}, Lcom/vivo/sdkplugin/net/HttpResponed;->respond(Lcom/vivo/sdkplugin/net/HttpConnect;Ljava/lang/Object;ILjava/lang/String;)V
    :try_end_692
    .catch Ljava/lang/IllegalStateException; {:try_start_679 .. :try_end_692} :catch_693
    .catch Ljava/io/IOException; {:try_start_679 .. :try_end_692} :catch_7de
    .catchall {:try_start_679 .. :try_end_692} :catchall_834

    goto :goto_647

    :catch_693
    move-exception v0

    :try_start_694
    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    const-string v0, "HttpConnect"

    const-string v1, "doHttpClientConnect, get an IllegalStateException when get content from HttpResonse"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->i:I

    if-lez v0, :cond_7b4

    iget v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->i:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->i:I

    invoke-direct {p0, p1, p2}, Lcom/vivo/sdkplugin/net/HttpConnect;->a(Ljava/lang/String;I)V
    :try_end_6ab
    .catchall {:try_start_694 .. :try_end_6ab} :catchall_834

    iget v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->n:I

    if-nez v0, :cond_126

    if-eqz v3, :cond_126

    :try_start_6b1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6b4
    .catch Ljava/io/IOException; {:try_start_6b1 .. :try_end_6b4} :catch_6b6

    goto/16 :goto_126

    :catch_6b6
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_126

    :cond_6bc
    :try_start_6bc
    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    const-string v0, "HttpConnect"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "resultType="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->n:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->n:I

    if-nez v0, :cond_844

    new-instance v0, Ljava/io/InputStreamReader;

    const-string v6, "utf-8"

    invoke-direct {v0, v3, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    new-instance v6, Ljava/io/BufferedReader;

    invoke-direct {v6, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const/4 v0, 0x0

    move-object v12, v1

    move v1, v0

    move-object v0, v12

    :goto_6ea
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_744

    const-string v6, "HttpConnect"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "isGetProtocol="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",matchEnd="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_845

    if-nez v1, :cond_845

    const-string v0, "HttpConnect"

    const-string v1, "Can not match the key work, retry"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v1

    if-eqz v1, :cond_723

    const/4 v0, 0x0

    :goto_720
    array-length v4, v1

    if-lt v0, v4, :cond_763

    :cond_723
    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    iget v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->i:I

    if-lez v0, :cond_78a

    iget v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->i:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->i:I

    invoke-direct {p0, p1, p2}, Lcom/vivo/sdkplugin/net/HttpConnect;->a(Ljava/lang/String;I)V
    :try_end_733
    .catch Ljava/lang/IllegalStateException; {:try_start_6bc .. :try_end_733} :catch_693
    .catch Ljava/io/IOException; {:try_start_6bc .. :try_end_733} :catch_7de
    .catchall {:try_start_6bc .. :try_end_733} :catchall_834

    iget v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->n:I

    if-nez v0, :cond_126

    if-eqz v3, :cond_126

    :try_start_739
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_73c
    .catch Ljava/io/IOException; {:try_start_739 .. :try_end_73c} :catch_73e

    goto/16 :goto_126

    :catch_73e
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_126

    :cond_744
    if-eqz v4, :cond_751

    if-nez v1, :cond_751

    :try_start_748
    const-string v8, "vivo@\u6b65\u6b65\u9ad8"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_751

    const/4 v1, 0x1

    :cond_751
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6ea

    :cond_763
    aget-object v4, v1, v0

    const-string v5, "HttpConnect"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "header["

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_720

    :cond_78a
    const-string v0, "HttpConnect"

    const-string v1, "contenType error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->c:Lcom/vivo/sdkplugin/net/HttpResponed;

    if-eqz v0, :cond_7a3

    iget-boolean v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->m:Z

    if-nez v0, :cond_7a3

    iget-object v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->c:Lcom/vivo/sdkplugin/net/HttpResponed;

    iget-object v1, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->b:Ljava/lang/Object;

    const/16 v4, 0xcc

    const/4 v5, 0x0

    invoke-interface {v0, p0, v1, v4, v5}, Lcom/vivo/sdkplugin/net/HttpResponed;->respond(Lcom/vivo/sdkplugin/net/HttpConnect;Ljava/lang/Object;ILjava/lang/String;)V
    :try_end_7a3
    .catch Ljava/lang/IllegalStateException; {:try_start_748 .. :try_end_7a3} :catch_693
    .catch Ljava/io/IOException; {:try_start_748 .. :try_end_7a3} :catch_7de
    .catchall {:try_start_748 .. :try_end_7a3} :catchall_834

    :cond_7a3
    iget v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->n:I

    if-nez v0, :cond_126

    if-eqz v3, :cond_126

    :try_start_7a9
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7ac
    .catch Ljava/io/IOException; {:try_start_7a9 .. :try_end_7ac} :catch_7ae

    goto/16 :goto_126

    :catch_7ae
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_126

    :cond_7b4
    :try_start_7b4
    const-string v0, "HttpConnect"

    const-string v1, "doHttpClientConnect, can not get content from HttpResponse because IllegalStateException"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->c:Lcom/vivo/sdkplugin/net/HttpResponed;

    if-eqz v0, :cond_7cd

    iget-boolean v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->m:Z

    if-nez v0, :cond_7cd

    iget-object v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->c:Lcom/vivo/sdkplugin/net/HttpResponed;

    iget-object v1, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->b:Ljava/lang/Object;

    const/16 v2, 0xce

    const/4 v4, 0x0

    invoke-interface {v0, p0, v1, v2, v4}, Lcom/vivo/sdkplugin/net/HttpResponed;->respond(Lcom/vivo/sdkplugin/net/HttpConnect;Ljava/lang/Object;ILjava/lang/String;)V
    :try_end_7cd
    .catchall {:try_start_7b4 .. :try_end_7cd} :catchall_834

    :cond_7cd
    iget v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->n:I

    if-nez v0, :cond_126

    if-eqz v3, :cond_126

    :try_start_7d3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7d6
    .catch Ljava/io/IOException; {:try_start_7d3 .. :try_end_7d6} :catch_7d8

    goto/16 :goto_126

    :catch_7d8
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_126

    :catch_7de
    move-exception v0

    :try_start_7df
    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const-string v0, "HttpConnect"

    const-string v1, "doHttpClientConnect, get an IOException when get content from HttpResponse"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->i:I

    if-lez v0, :cond_80a

    iget v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->i:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->i:I

    invoke-direct {p0, p1, p2}, Lcom/vivo/sdkplugin/net/HttpConnect;->a(Ljava/lang/String;I)V
    :try_end_7f9
    .catchall {:try_start_7df .. :try_end_7f9} :catchall_834

    iget v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->n:I

    if-nez v0, :cond_126

    if-eqz v3, :cond_126

    :try_start_7ff
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_802
    .catch Ljava/io/IOException; {:try_start_7ff .. :try_end_802} :catch_804

    goto/16 :goto_126

    :catch_804
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_126

    :cond_80a
    :try_start_80a
    const-string v0, "HttpConnect"

    const-string v1, "doHttpClientConnect, can not get content from HttpResponse because IOException"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->c:Lcom/vivo/sdkplugin/net/HttpResponed;

    if-eqz v0, :cond_823

    iget-boolean v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->m:Z

    if-nez v0, :cond_823

    iget-object v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->c:Lcom/vivo/sdkplugin/net/HttpResponed;

    iget-object v1, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->b:Ljava/lang/Object;

    const/16 v2, 0xce

    const/4 v4, 0x0

    invoke-interface {v0, p0, v1, v2, v4}, Lcom/vivo/sdkplugin/net/HttpResponed;->respond(Lcom/vivo/sdkplugin/net/HttpConnect;Ljava/lang/Object;ILjava/lang/String;)V
    :try_end_823
    .catchall {:try_start_80a .. :try_end_823} :catchall_834

    :cond_823
    iget v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->n:I

    if-nez v0, :cond_126

    if-eqz v3, :cond_126

    :try_start_829
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_82c
    .catch Ljava/io/IOException; {:try_start_829 .. :try_end_82c} :catch_82e

    goto/16 :goto_126

    :catch_82e
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_126

    :catchall_834
    move-exception v0

    iget v1, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->n:I

    if-nez v1, :cond_83e

    if-eqz v3, :cond_83e

    :try_start_83b
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_83e
    .catch Ljava/io/IOException; {:try_start_83b .. :try_end_83e} :catch_83f

    :cond_83e
    :goto_83e
    throw v0

    :catch_83f
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_83e

    :cond_844
    move-object v0, v1

    :cond_845
    iget v1, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->n:I

    if-nez v1, :cond_8d6

    if-eqz v3, :cond_8d6

    :try_start_84b
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_84e
    .catch Ljava/io/IOException; {:try_start_84b .. :try_end_84e} :catch_869

    move-object v1, v3

    :goto_84f
    iget-object v3, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->c:Lcom/vivo/sdkplugin/net/HttpResponed;

    if-eqz v3, :cond_864

    iget v3, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->n:I

    if-nez v3, :cond_8ba

    iget-boolean v1, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->m:Z

    if-nez v1, :cond_864

    iget-object v1, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->c:Lcom/vivo/sdkplugin/net/HttpResponed;

    iget-object v3, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->b:Ljava/lang/Object;

    const/16 v4, 0x12c

    invoke-interface {v1, p0, v3, v4, v0}, Lcom/vivo/sdkplugin/net/HttpResponed;->respond(Lcom/vivo/sdkplugin/net/HttpConnect;Ljava/lang/Object;ILjava/lang/String;)V

    :cond_864
    :goto_864
    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    goto/16 :goto_126

    :catch_869
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v1, v3

    goto :goto_84f

    :cond_86f
    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    const-string v1, "HttpConnect"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "doHttpClientConnect, get wrong status code : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->i:I

    if-lez v1, :cond_892

    iget v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->i:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->i:I

    goto/16 :goto_0

    :cond_892
    const-string v1, "HttpConnect"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "doHttpClientConnect, status code error, status code is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->c:Lcom/vivo/sdkplugin/net/HttpResponed;

    if-eqz v0, :cond_126

    iget-boolean v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->m:Z

    if-nez v0, :cond_126

    iget-object v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->c:Lcom/vivo/sdkplugin/net/HttpResponed;

    iget-object v1, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->b:Ljava/lang/Object;

    const/16 v2, 0xcd

    const/4 v3, 0x0

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/vivo/sdkplugin/net/HttpResponed;->respond(Lcom/vivo/sdkplugin/net/HttpConnect;Ljava/lang/Object;ILjava/lang/String;)V

    goto/16 :goto_126

    :cond_8ba
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-boolean v3, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->m:Z

    if-nez v3, :cond_8cb

    iget-object v3, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->c:Lcom/vivo/sdkplugin/net/HttpResponed;

    iget-object v4, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->b:Ljava/lang/Object;

    const/16 v5, 0x12c

    invoke-interface {v3, p0, v4, v5, v0}, Lcom/vivo/sdkplugin/net/HttpResponed;->respond(Lcom/vivo/sdkplugin/net/HttpConnect;Ljava/lang/Object;ILandroid/graphics/Bitmap;)V

    :cond_8cb
    if-eqz v1, :cond_864

    :try_start_8cd
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_8d0
    .catch Ljava/io/IOException; {:try_start_8cd .. :try_end_8d0} :catch_8d1

    goto :goto_864

    :catch_8d1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_864

    :cond_8d6
    move-object v1, v3

    goto/16 :goto_84f

    :cond_8d9
    move-object v0, v1

    move-object v1, v3

    goto/16 :goto_84f

    :cond_8dd
    move-object v0, v2

    goto/16 :goto_5d
.end method

.method private static a(Ljava/lang/String;Ljava/util/HashMap;)V
    .registers 8

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v0, ""

    const-string v3, "POST"

    if-eqz p1, :cond_33

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_33

    const-string v0, "?"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_50

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_33
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Method: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and Url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;)V

    return-void

    :cond_50
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v5, "="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1e
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


# virtual methods
.method public cancelConnect()V
    .registers 3

    const-string v0, "HttpConnect"

    const-string v1, "Cancel Connect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->m:Z

    return-void
.end method

.method public connect(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;IILjava/lang/Object;Lcom/vivo/sdkplugin/net/HttpResponed;)V
    .registers 14

    iput-object p7, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->c:Lcom/vivo/sdkplugin/net/HttpResponed;

    iput-object p6, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->b:Ljava/lang/Object;

    iput-object p1, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->d:Ljava/lang/String;

    if-nez p3, :cond_d

    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    :cond_d
    iput-object p3, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->e:Ljava/util/HashMap;

    iput-object p2, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->f:Ljava/util/HashMap;

    iput p5, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->i:I

    iput p4, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->h:I

    iget-boolean v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->o:Z

    if-eqz v0, :cond_a4

    iget-object v1, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->e:Ljava/util/HashMap;

    if-eqz v1, :cond_a4

    iget-object v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->a:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_23a

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-eqz v0, :cond_39

    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_233

    :cond_39
    const-string v3, "imei"

    const-string v4, "012345678987654"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_40
    const-string v3, "model"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "from"

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->a:Landroid/content/Context;

    invoke-static {v5}, Lcom/vivo/sdkplugin/Utils/VivoMakeDiffUtil;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "_game"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "locale"

    const-string v4, "zh_CN"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "verCode"

    const-string v4, "5.0"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "HttpConnect"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "general information, mimi code is "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "HttpConnect"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "general information, model number is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_99
    const-string v0, "ec"

    iget-object v2, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->q:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v2}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getEmmcId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a4
    iget-boolean v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->p:Z

    if-eqz v0, :cond_169

    iget-object v1, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->e:Ljava/util/HashMap;

    if-eqz v1, :cond_169

    iget-object v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->a:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_26a

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v0, "imei"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_d7

    if-eqz v2, :cond_d0

    const-string v0, "0"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_243

    :cond_d0
    const-string v0, "imei"

    const-string v4, "012345678987654"

    invoke-virtual {v1, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d7
    :goto_d7
    const-string v0, "model"

    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "locale"

    const-string v4, "zh_CN"

    invoke-virtual {v1, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "APKPluginAssit"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24a

    const-string v0, "APKPluginAssit"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, "y"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24a

    const-string v0, "from"

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->a:Landroid/content/Context;

    invoke-static {v5}, Lcom/vivo/sdkplugin/Utils/VivoMakeDiffUtil;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "_game"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "APKPluginAssit"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_11e
    const-string v0, "ec"

    iget-object v4, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->q:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v4}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getEmmcId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "HttpConnect"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "general information, mimi code is "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "HttpConnect"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "general information, model number is "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->h:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_169

    :try_start_156
    const-string v0, "s"

    invoke-static {v1}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->getParamsList(Ljava/util/HashMap;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v2}, Lcom/vivo/md5/Wave;->getM2ForPost(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "utf-8"

    invoke-static {v2, v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_169
    .catch Ljava/lang/Exception; {:try_start_156 .. :try_end_169} :catch_27f

    :cond_169
    :goto_169
    const-string v0, "HttpConnect"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "connect, mUrlAddress = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "HttpConnect"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "connect, mTryNum = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->i:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "HttpConnect"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "connect, proxy ip = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "HttpConnect"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "connect, connect type  = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "HttpConnect"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "connect cs is "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->e:Ljava/util/HashMap;

    const-string v3, "cs"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "HttpConnect"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "connect miei is "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->e:Ljava/util/HashMap;

    const-string v3, "imei"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "HttpConnect"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "connect model number  is "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->e:Ljava/util/HashMap;

    const-string v3, "model"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p4, :pswitch_data_282

    const-string v0, "HttpConnect"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "connect, unsupport connect type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_232
    return-void

    :cond_233
    const-string v3, "imei"

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_40

    :cond_23a
    const-string v0, "HttpConnect"

    const-string v2, "appendGreneralInfomation, can not get TelephonyManager instance"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_99

    :cond_243
    const-string v0, "imei"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_d7

    :cond_24a
    const-string v0, "from"

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->a:Landroid/content/Context;

    invoke-static {v5}, Lcom/vivo/sdkplugin/Utils/VivoMakeDiffUtil;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "_game"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_11e

    :cond_26a
    const-string v0, "HttpConnect"

    const-string v1, "appendGreneralInfomation, can not get TelephonyManager instance"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_169

    :pswitch_273
    iget-object v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->d:Ljava/lang/String;

    invoke-direct {p0, v0, p4}, Lcom/vivo/sdkplugin/net/HttpConnect;->a(Ljava/lang/String;I)V

    goto :goto_232

    :pswitch_279
    iget-object v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->d:Ljava/lang/String;

    invoke-direct {p0, v0, p3, p4}, Lcom/vivo/sdkplugin/net/HttpConnect;->a(Ljava/lang/String;Ljava/util/HashMap;I)Ljava/io/InputStream;

    goto :goto_232

    :catch_27f
    move-exception v0

    goto/16 :goto_169

    :pswitch_data_282
    .packed-switch 0x0
        :pswitch_273
        :pswitch_273
        :pswitch_279
        :pswitch_279
    .end packed-switch
.end method

.method public connectAgain()V
    .registers 9

    iget-object v1, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->f:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->e:Ljava/util/HashMap;

    iget v4, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->h:I

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->b:Ljava/lang/Object;

    iget-object v7, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->c:Lcom/vivo/sdkplugin/net/HttpResponed;

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/vivo/sdkplugin/net/HttpConnect;->connect(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;IILjava/lang/Object;Lcom/vivo/sdkplugin/net/HttpResponed;)V

    return-void
.end method

.method public disconnect()V
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->g:Lorg/apache/http/client/HttpClient;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->g:Lorg/apache/http/client/HttpClient;

    instance-of v0, v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->g:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    :cond_13
    :goto_13
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->l:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->g:Lorg/apache/http/client/HttpClient;

    return-void

    :cond_1a
    iget-object v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->g:Lorg/apache/http/client/HttpClient;

    instance-of v0, v0, Landroid/net/http/AndroidHttpClient;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->g:Lorg/apache/http/client/HttpClient;

    check-cast v0, Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    goto :goto_13
.end method

.method public setappendGreneralInfomation(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->o:Z

    return-void
.end method

.method public setappendSDKGreneralInfomation(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/vivo/sdkplugin/net/HttpConnect;->p:Z

    return-void
.end method

.method public transferToString(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 11

    const/4 v8, -0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x2000

    new-array v5, v1, [B

    array-length v1, v5

    div-int/lit8 v6, v1, 0x2

    move v1, v2

    move v3, v2

    :goto_11
    if-ne v3, v8, :cond_1a

    :try_start_13
    const-string v1, "utf-8"

    invoke-virtual {v4, v1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_19
    return-object v0

    :cond_1a
    monitor-enter p0
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_1b} :catch_32

    :try_start_1b
    array-length v3, v5

    sub-int/2addr v3, v1

    invoke-virtual {p1, v5, v1, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    if-eq v3, v8, :cond_24

    add-int/2addr v1, v3

    :cond_24
    if-eq v3, v8, :cond_28

    if-lt v1, v6, :cond_2d

    :cond_28
    const/4 v7, 0x0

    invoke-virtual {v4, v5, v7, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    move v1, v2

    :cond_2d
    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_1b .. :try_end_2e} :catchall_2f

    goto :goto_11

    :catchall_2f
    move-exception v1

    :try_start_30
    monitor-exit p0

    throw v1
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_32} :catch_32

    :catch_32
    move-exception v1

    const-string v1, "HttpConnect"

    const-string v2, "IOException"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19
.end method

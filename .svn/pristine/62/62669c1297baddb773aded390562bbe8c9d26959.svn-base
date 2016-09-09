.class Lcom/baidu/platformsdk/wxpay/obf/b$a;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/platformsdk/wxpay/obf/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/baidu/platformsdk/wxpay/obf/b$b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/platformsdk/wxpay/obf/b;

.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lcom/baidu/platformsdk/wxpay/IPayCallback;


# direct methods
.method public constructor <init>(Lcom/baidu/platformsdk/wxpay/obf/b;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/platformsdk/wxpay/IPayCallback;)V
    .registers 6

    .prologue
    .line 82
    iput-object p1, p0, Lcom/baidu/platformsdk/wxpay/obf/b$a;->a:Lcom/baidu/platformsdk/wxpay/obf/b;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 83
    iput-object p2, p0, Lcom/baidu/platformsdk/wxpay/obf/b$a;->b:Landroid/content/Context;

    .line 84
    iput-object p3, p0, Lcom/baidu/platformsdk/wxpay/obf/b$a;->c:Ljava/lang/String;

    .line 85
    iput-object p4, p0, Lcom/baidu/platformsdk/wxpay/obf/b$a;->d:Ljava/lang/String;

    .line 86
    iput-object p5, p0, Lcom/baidu/platformsdk/wxpay/obf/b$a;->e:Lcom/baidu/platformsdk/wxpay/IPayCallback;

    .line 87
    return-void
.end method

.method private a()V
    .registers 5

    .prologue
    .line 159
    iget-object v0, p0, Lcom/baidu/platformsdk/wxpay/obf/b$a;->a:Lcom/baidu/platformsdk/wxpay/obf/b;

    iget-object v0, v0, Lcom/baidu/platformsdk/wxpay/obf/b;->c:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 161
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 162
    if-eqz v0, :cond_38

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-nez v0, :cond_38

    .line 164
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v0

    .line 165
    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v1

    .line 166
    if-eqz v0, :cond_38

    .line 167
    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-direct {v2, v0, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 169
    iget-object v0, p0, Lcom/baidu/platformsdk/wxpay/obf/b$a;->a:Lcom/baidu/platformsdk/wxpay/obf/b;

    new-instance v1, Ljava/net/Proxy;

    sget-object v3, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    invoke-direct {v1, v3, v2}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    iput-object v1, v0, Lcom/baidu/platformsdk/wxpay/obf/b;->b:Ljava/net/Proxy;

    .line 172
    :cond_38
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lcom/baidu/platformsdk/wxpay/obf/b$b;
    .registers 8

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 104
    iget-object v1, p0, Lcom/baidu/platformsdk/wxpay/obf/b$a;->e:Lcom/baidu/platformsdk/wxpay/IPayCallback;

    if-nez v1, :cond_7

    .line 151
    :goto_6
    return-object v0

    .line 108
    :cond_7
    new-instance v1, Lcom/baidu/platformsdk/wxpay/obf/b$b;

    invoke-direct {v1, v0}, Lcom/baidu/platformsdk/wxpay/obf/b$b;-><init>(Lcom/baidu/platformsdk/wxpay/obf/b$1;)V

    .line 109
    iput-boolean v2, v1, Lcom/baidu/platformsdk/wxpay/obf/b$b;->a:Z

    .line 111
    invoke-direct {p0}, Lcom/baidu/platformsdk/wxpay/obf/b$a;->a()V

    .line 114
    :try_start_11
    new-instance v0, Ljava/net/URL;

    iget-object v2, p0, Lcom/baidu/platformsdk/wxpay/obf/b$a;->c:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 116
    iget-object v2, p0, Lcom/baidu/platformsdk/wxpay/obf/b$a;->a:Lcom/baidu/platformsdk/wxpay/obf/b;

    iget-object v2, v2, Lcom/baidu/platformsdk/wxpay/obf/b;->b:Ljava/net/Proxy;

    if-eqz v2, :cond_78

    .line 117
    iget-object v2, p0, Lcom/baidu/platformsdk/wxpay/obf/b$a;->a:Lcom/baidu/platformsdk/wxpay/obf/b;

    iget-object v2, v2, Lcom/baidu/platformsdk/wxpay/obf/b;->b:Ljava/net/Proxy;

    invoke-virtual {v0, v2}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 121
    :goto_28
    iget-object v2, p0, Lcom/baidu/platformsdk/wxpay/obf/b$a;->a:Lcom/baidu/platformsdk/wxpay/obf/b;

    invoke-static {v2}, Lcom/baidu/platformsdk/wxpay/obf/b;->a(Lcom/baidu/platformsdk/wxpay/obf/b;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 122
    iget-object v2, p0, Lcom/baidu/platformsdk/wxpay/obf/b$a;->a:Lcom/baidu/platformsdk/wxpay/obf/b;

    invoke-static {v2}, Lcom/baidu/platformsdk/wxpay/obf/b;->b(Lcom/baidu/platformsdk/wxpay/obf/b;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 123
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 125
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 126
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 128
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/baidu/platformsdk/wxpay/obf/b$a;->d:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 129
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_55

    .line 130
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 132
    :cond_55
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 133
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 135
    const/16 v2, 0x400

    new-array v2, v2, [B

    .line 137
    :goto_61
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_7f

    .line 138
    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_6b
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_6b} :catch_6c

    goto :goto_61

    .line 146
    :catch_6c
    move-exception v0

    .line 147
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 148
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/baidu/platformsdk/wxpay/obf/b$b;->b:Ljava/lang/String;

    :goto_76
    move-object v0, v1

    .line 151
    goto :goto_6

    .line 119
    :cond_78
    :try_start_78
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    goto :goto_28

    .line 141
    :cond_7f
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 142
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 144
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/baidu/platformsdk/wxpay/obf/b$b;->a:Z
    :try_end_88
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_88} :catch_6c

    goto :goto_76
.end method

.method protected a(Lcom/baidu/platformsdk/wxpay/obf/b$b;)V
    .registers 5

    .prologue
    .line 91
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 92
    iget-object v0, p0, Lcom/baidu/platformsdk/wxpay/obf/b$a;->e:Lcom/baidu/platformsdk/wxpay/IPayCallback;

    if-nez v0, :cond_8

    .line 100
    :cond_7
    :goto_7
    return-void

    .line 95
    :cond_8
    iget-object v1, p0, Lcom/baidu/platformsdk/wxpay/obf/b$a;->e:Lcom/baidu/platformsdk/wxpay/IPayCallback;

    iget-boolean v0, p1, Lcom/baidu/platformsdk/wxpay/obf/b$b;->a:Z

    if-eqz v0, :cond_20

    const/4 v0, 0x0

    :goto_f
    iget-object v2, p1, Lcom/baidu/platformsdk/wxpay/obf/b$b;->b:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Lcom/baidu/platformsdk/wxpay/IPayCallback;->onCallback(ILjava/lang/String;)V

    .line 97
    iget-boolean v0, p1, Lcom/baidu/platformsdk/wxpay/obf/b$b;->a:Z

    if-eqz v0, :cond_7

    .line 98
    iget-object v0, p0, Lcom/baidu/platformsdk/wxpay/obf/b$a;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/baidu/platformsdk/wxpay/obf/b$a;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/baidu/platformsdk/wxpay/obf/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_7

    .line 95
    :cond_20
    const/4 v0, 0x1

    goto :goto_f
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 74
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/baidu/platformsdk/wxpay/obf/b$a;->a([Ljava/lang/Void;)Lcom/baidu/platformsdk/wxpay/obf/b$b;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 74
    check-cast p1, Lcom/baidu/platformsdk/wxpay/obf/b$b;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/baidu/platformsdk/wxpay/obf/b$a;->a(Lcom/baidu/platformsdk/wxpay/obf/b$b;)V

    return-void
.end method

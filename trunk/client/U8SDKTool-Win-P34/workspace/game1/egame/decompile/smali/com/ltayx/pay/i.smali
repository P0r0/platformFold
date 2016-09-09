.class public Lcom/ltayx/pay/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/net/HttpURLConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/ltayx/pay/i;->a:Landroid/content/Context;

    .line 34
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 99
    if-nez p1, :cond_4

    .line 100
    const/4 v0, 0x0

    .line 111
    :goto_3
    return-object v0

    .line 104
    :cond_4
    invoke-static {}, Lcom/ltayx/pay/g;->r()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2a

    .line 105
    invoke-static {}, Lcom/ltayx/pay/g;->r()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "/"

    invoke-static {}, Lcom/ltayx/pay/g;->r()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 108
    :cond_2a
    const/4 v0, 0x0

    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public a()V
    .registers 2

    .prologue
    .line 40
    :try_start_0
    iget-object v0, p0, Lcom/ltayx/pay/i;->b:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_c

    .line 41
    iget-object v0, p0, Lcom/ltayx/pay/i;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ltayx/pay/i;->b:Ljava/net/HttpURLConnection;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    .line 48
    :cond_c
    :goto_c
    return-void

    .line 45
    :catch_d
    move-exception v0

    goto :goto_c
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 14

    .prologue
    const/4 v1, 0x0

    const/4 v6, -0x1

    .line 143
    invoke-virtual {p0}, Lcom/ltayx/pay/i;->a()V

    .line 154
    :try_start_5
    invoke-virtual {p0}, Lcom/ltayx/pay/i;->b()Ljava/net/Proxy;

    move-result-object v3

    .line 163
    if-eqz v3, :cond_117

    invoke-virtual {v3}, Ljava/net/Proxy;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/ltayx/pay/g;->t()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v6, :cond_117

    .line 166
    invoke-virtual {p0, p3}, Lcom/ltayx/pay/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 167
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "http:/"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, p3}, Lcom/ltayx/pay/i;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    move-object v2, v0

    .line 171
    :goto_3d
    invoke-static {}, Lcom/ltayx/pay/g;->p()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ec

    if-eqz p1, :cond_ec

    .line 172
    new-instance v0, Ljava/net/URL;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 179
    :goto_65
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcom/ltayx/pay/i;->b:Ljava/net/HttpURLConnection;

    .line 186
    iget-object v0, p0, Lcom/ltayx/pay/i;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/ltayx/pay/i;->b:Ljava/net/HttpURLConnection;

    const/16 v4, 0x61a8

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 188
    iget-object v0, p0, Lcom/ltayx/pay/i;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p5}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 190
    invoke-static {}, Lcom/ltayx/pay/g;->q()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_94

    .line 191
    iget-object v0, p0, Lcom/ltayx/pay/i;->b:Ljava/net/HttpURLConnection;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 192
    iget-object v0, p0, Lcom/ltayx/pay/i;->b:Ljava/net/HttpURLConnection;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 197
    :cond_94
    if-eqz v3, :cond_ad

    if-eqz v2, :cond_ad

    invoke-virtual {v3}, Ljava/net/Proxy;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/ltayx/pay/g;->t()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v6, :cond_ad

    .line 200
    iget-object v0, p0, Lcom/ltayx/pay/i;->b:Ljava/net/HttpURLConnection;

    const-string v3, "X-Online-Host"

    invoke-virtual {v0, v3, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    :cond_ad
    iget-object v0, p0, Lcom/ltayx/pay/i;->b:Ljava/net/HttpURLConnection;

    const-string v2, "Charset"

    const-string v3, "UTF-8"

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/ltayx/pay/i;->b:Ljava/net/HttpURLConnection;

    const-string v2, "Content-type"

    invoke-virtual {v0, v2, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lcom/ltayx/pay/i;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 213
    invoke-static {}, Lcom/ltayx/pay/g;->q()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_115

    .line 214
    iget-object v0, p0, Lcom/ltayx/pay/i;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;
    :try_end_d1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_d1} :catch_f3
    .catchall {:try_start_5 .. :try_end_d1} :catchall_fe

    move-result-object v0

    .line 215
    :try_start_d2
    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 216
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 224
    :goto_de
    iget-object v1, p0, Lcom/ltayx/pay/i;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_e3
    .catch Ljava/lang/Exception; {:try_start_d2 .. :try_end_e3} :catch_113
    .catchall {:try_start_d2 .. :try_end_e3} :catchall_10e

    .line 235
    if-eqz v0, :cond_e8

    .line 236
    :try_start_e5
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_e8
    .catch Ljava/lang/Exception; {:try_start_e5 .. :try_end_e8} :catch_10c

    .line 243
    :cond_e8
    :goto_e8
    invoke-virtual {p0}, Lcom/ltayx/pay/i;->a()V

    .line 245
    :goto_eb
    return-void

    .line 175
    :cond_ec
    :try_start_ec
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_f1
    .catch Ljava/lang/Exception; {:try_start_ec .. :try_end_f1} :catch_f3
    .catchall {:try_start_ec .. :try_end_f1} :catchall_fe

    goto/16 :goto_65

    .line 230
    :catch_f3
    move-exception v0

    move-object v0, v1

    .line 235
    :goto_f5
    if-eqz v0, :cond_fa

    .line 236
    :try_start_f7
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_fa
    .catch Ljava/lang/Exception; {:try_start_f7 .. :try_end_fa} :catch_108

    .line 243
    :cond_fa
    :goto_fa
    invoke-virtual {p0}, Lcom/ltayx/pay/i;->a()V

    goto :goto_eb

    .line 233
    :catchall_fe
    move-exception v0

    .line 235
    :goto_ff
    if-eqz v1, :cond_104

    .line 236
    :try_start_101
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_104
    .catch Ljava/lang/Exception; {:try_start_101 .. :try_end_104} :catch_10a

    .line 243
    :cond_104
    :goto_104
    invoke-virtual {p0}, Lcom/ltayx/pay/i;->a()V

    .line 244
    throw v0

    .line 240
    :catch_108
    move-exception v0

    goto :goto_fa

    :catch_10a
    move-exception v1

    goto :goto_104

    :catch_10c
    move-exception v0

    goto :goto_e8

    .line 233
    :catchall_10e
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_ff

    .line 230
    :catch_113
    move-exception v1

    goto :goto_f5

    :cond_115
    move-object v0, v1

    goto :goto_de

    :cond_117
    move-object v2, v1

    goto/16 :goto_3d
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 115
    if-nez p1, :cond_4

    .line 116
    const/4 v0, 0x0

    .line 127
    :goto_3
    return-object v0

    .line 120
    :cond_4
    invoke-static {}, Lcom/ltayx/pay/g;->r()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_26

    .line 121
    const-string v0, "/"

    invoke-static {}, Lcom/ltayx/pay/g;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 124
    :cond_26
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public b()Ljava/net/Proxy;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 58
    iget-object v0, p0, Lcom/ltayx/pay/i;->a:Landroid/content/Context;

    if-nez v0, :cond_6

    .line 95
    :goto_5
    return-object v1

    .line 65
    :cond_6
    iget-object v0, p0, Lcom/ltayx/pay/i;->a:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 66
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 71
    if-eqz v0, :cond_3a

    .line 72
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 73
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-nez v0, :cond_3a

    .line 77
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v0

    .line 81
    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v2

    .line 83
    if-eqz v0, :cond_3a

    .line 87
    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, v0, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 91
    new-instance v0, Ljava/net/Proxy;

    sget-object v2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    invoke-direct {v0, v2, v1}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    :goto_38
    move-object v1, v0

    .line 95
    goto :goto_5

    :cond_3a
    move-object v0, v1

    goto :goto_38
.end method

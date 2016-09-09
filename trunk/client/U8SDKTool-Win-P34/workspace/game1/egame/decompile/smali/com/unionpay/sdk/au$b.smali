.class Lcom/unionpay/sdk/au$b;
.super Lcom/unionpay/sdk/au$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unionpay/sdk/au;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# static fields
.field private static volatile g:Lcom/unionpay/sdk/au$b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/unionpay/sdk/au$b;->g:Lcom/unionpay/sdk/au$b;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/unionpay/sdk/au$e;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/unionpay/sdk/au$b;
    .registers 4

    sget-object v0, Lcom/unionpay/sdk/au$b;->g:Lcom/unionpay/sdk/au$b;

    if-nez v0, :cond_13

    const-class v1, Lcom/unionpay/sdk/au$b;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/unionpay/sdk/au$b;->g:Lcom/unionpay/sdk/au$b;

    if-nez v0, :cond_12

    new-instance v0, Lcom/unionpay/sdk/au$b;

    invoke-direct {v0}, Lcom/unionpay/sdk/au$b;-><init>()V

    sput-object v0, Lcom/unionpay/sdk/au$b;->g:Lcom/unionpay/sdk/au$b;

    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_1b

    :cond_13
    sget-object v0, Lcom/unionpay/sdk/au$b;->g:Lcom/unionpay/sdk/au$b;

    invoke-virtual {v0, p0, p1}, Lcom/unionpay/sdk/au$b;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/unionpay/sdk/au$b;->g:Lcom/unionpay/sdk/au$b;

    return-object v0

    :catchall_1b
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method final a([BLjava/net/URL;)Lcom/unionpay/sdk/au$d;
    .registers 10

    const/4 v2, 0x0

    :try_start_1
    const-string v0, "TLS"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    new-instance v1, Lcom/unionpay/sdk/au$c;

    iget-object v3, p0, Lcom/unionpay/sdk/au$b;->f:Ljava/lang/String;

    invoke-static {v3}, Lcom/unionpay/sdk/au;->a(Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/unionpay/sdk/au$c;-><init>(Ljava/security/cert/X509Certificate;)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljavax/net/ssl/TrustManager;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v4, v1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-static {v0}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    new-instance v0, Lcom/unionpay/sdk/av;

    invoke-direct {v0, p0}, Lcom/unionpay/sdk/av;-><init>(Lcom/unionpay/sdk/au$b;)V

    invoke-static {v0}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    invoke-virtual {p2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_32} :catch_ec
    .catchall {:try_start_1 .. :try_end_32} :catchall_b3

    :try_start_32
    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v1, "Content-Length"

    array-length v3, p1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_4c} :catch_f0
    .catchall {:try_start_32 .. :try_end_4c} :catchall_d8

    move-result-object v4

    :try_start_4d
    invoke-virtual {v4, p1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    new-instance v3, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_61
    .catch Ljava/lang/Throwable; {:try_start_4d .. :try_end_61} :catch_f6
    .catchall {:try_start_4d .. :try_end_61} :catchall_de

    :try_start_61
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    :goto_66
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_97

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0xd

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_74
    .catch Ljava/lang/Throwable; {:try_start_61 .. :try_end_74} :catch_75
    .catchall {:try_start_61 .. :try_end_74} :catchall_e3

    goto :goto_66

    :catch_75
    move-exception v1

    move-object v2, v3

    move-object v3, v4

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_7b
    :try_start_7b
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_7e
    .catchall {:try_start_7b .. :try_end_7e} :catchall_e7

    if-eqz v3, :cond_83

    :try_start_80
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_83
    .catch Ljava/lang/Throwable; {:try_start_80 .. :try_end_83} :catch_cc

    :cond_83
    :goto_83
    if-eqz v2, :cond_88

    :try_start_85
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_88
    .catch Ljava/lang/Throwable; {:try_start_85 .. :try_end_88} :catch_ce

    :cond_88
    :goto_88
    if-eqz v1, :cond_8d

    :try_start_8a
    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V
    :try_end_8d
    .catch Ljava/lang/Throwable; {:try_start_8a .. :try_end_8d} :catch_d0

    :cond_8d
    :goto_8d
    new-instance v0, Lcom/unionpay/sdk/au$d;

    const/16 v1, 0x258

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/unionpay/sdk/au$d;-><init>(ILjava/lang/String;)V

    :goto_96
    return-object v0

    :cond_97
    :try_start_97
    new-instance v1, Lcom/unionpay/sdk/au$d;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v5

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v5, v2}, Lcom/unionpay/sdk/au$d;-><init>(ILjava/lang/String;)V
    :try_end_a4
    .catch Ljava/lang/Throwable; {:try_start_97 .. :try_end_a4} :catch_75
    .catchall {:try_start_97 .. :try_end_a4} :catchall_e3

    if-eqz v4, :cond_a9

    :try_start_a6
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_a9
    .catch Ljava/lang/Throwable; {:try_start_a6 .. :try_end_a9} :catch_c6

    :cond_a9
    :goto_a9
    :try_start_a9
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_ac
    .catch Ljava/lang/Throwable; {:try_start_a9 .. :try_end_ac} :catch_c8

    :goto_ac
    if-eqz v0, :cond_b1

    :try_start_ae
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V
    :try_end_b1
    .catch Ljava/lang/Throwable; {:try_start_ae .. :try_end_b1} :catch_ca

    :cond_b1
    :goto_b1
    move-object v0, v1

    goto :goto_96

    :catchall_b3
    move-exception v0

    move-object v3, v2

    move-object v4, v2

    :goto_b6
    if-eqz v4, :cond_bb

    :try_start_b8
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_bb
    .catch Ljava/lang/Throwable; {:try_start_b8 .. :try_end_bb} :catch_d2

    :cond_bb
    :goto_bb
    if-eqz v3, :cond_c0

    :try_start_bd
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_c0
    .catch Ljava/lang/Throwable; {:try_start_bd .. :try_end_c0} :catch_d4

    :cond_c0
    :goto_c0
    if-eqz v2, :cond_c5

    :try_start_c2
    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V
    :try_end_c5
    .catch Ljava/lang/Throwable; {:try_start_c2 .. :try_end_c5} :catch_d6

    :cond_c5
    :goto_c5
    throw v0

    :catch_c6
    move-exception v2

    goto :goto_a9

    :catch_c8
    move-exception v2

    goto :goto_ac

    :catch_ca
    move-exception v0

    goto :goto_b1

    :catch_cc
    move-exception v0

    goto :goto_83

    :catch_ce
    move-exception v0

    goto :goto_88

    :catch_d0
    move-exception v0

    goto :goto_8d

    :catch_d2
    move-exception v1

    goto :goto_bb

    :catch_d4
    move-exception v1

    goto :goto_c0

    :catch_d6
    move-exception v1

    goto :goto_c5

    :catchall_d8
    move-exception v1

    move-object v3, v2

    move-object v4, v2

    move-object v2, v0

    move-object v0, v1

    goto :goto_b6

    :catchall_de
    move-exception v1

    move-object v3, v2

    move-object v2, v0

    move-object v0, v1

    goto :goto_b6

    :catchall_e3
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_b6

    :catchall_e7
    move-exception v0

    move-object v4, v3

    move-object v3, v2

    move-object v2, v1

    goto :goto_b6

    :catch_ec
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    goto :goto_7b

    :catch_f0
    move-exception v1

    move-object v3, v2

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    goto :goto_7b

    :catch_f6
    move-exception v1

    move-object v3, v4

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    goto :goto_7b
.end method

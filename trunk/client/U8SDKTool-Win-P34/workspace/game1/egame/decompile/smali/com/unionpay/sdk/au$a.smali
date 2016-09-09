.class final Lcom/unionpay/sdk/au$a;
.super Lcom/unionpay/sdk/au$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unionpay/sdk/au;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field private static volatile g:Lcom/unionpay/sdk/au$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/unionpay/sdk/au$a;->g:Lcom/unionpay/sdk/au$a;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/unionpay/sdk/au$e;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/unionpay/sdk/au$a;
    .registers 4

    sget-object v0, Lcom/unionpay/sdk/au$a;->g:Lcom/unionpay/sdk/au$a;

    if-nez v0, :cond_18

    const-class v1, Lcom/unionpay/sdk/au$b;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/unionpay/sdk/au$a;->g:Lcom/unionpay/sdk/au$a;

    if-nez v0, :cond_12

    new-instance v0, Lcom/unionpay/sdk/au$a;

    invoke-direct {v0}, Lcom/unionpay/sdk/au$a;-><init>()V

    sput-object v0, Lcom/unionpay/sdk/au$a;->g:Lcom/unionpay/sdk/au$a;

    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_1b

    sget-object v0, Lcom/unionpay/sdk/au$a;->g:Lcom/unionpay/sdk/au$a;

    invoke-virtual {v0, p0, p1}, Lcom/unionpay/sdk/au$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_18
    sget-object v0, Lcom/unionpay/sdk/au$a;->g:Lcom/unionpay/sdk/au$a;

    return-object v0

    :catchall_1b
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a([BLjava/net/URL;)Lcom/unionpay/sdk/au$d;
    .registers 10

    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {p2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_7} :catch_c1
    .catchall {:try_start_1 .. :try_end_7} :catchall_88

    :try_start_7
    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v1, "Content-Length"

    array-length v3, p1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_21} :catch_c5
    .catchall {:try_start_7 .. :try_end_21} :catchall_ad

    move-result-object v4

    :try_start_22
    invoke-virtual {v4, p1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    new-instance v3, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_36} :catch_cb
    .catchall {:try_start_22 .. :try_end_36} :catchall_b3

    :try_start_36
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    :goto_3b
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_49} :catch_4a
    .catchall {:try_start_36 .. :try_end_49} :catchall_b8

    goto :goto_3b

    :catch_4a
    move-exception v1

    move-object v2, v3

    move-object v3, v4

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_50
    :try_start_50
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_bc

    if-eqz v3, :cond_58

    :try_start_55
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_58
    .catch Ljava/lang/Throwable; {:try_start_55 .. :try_end_58} :catch_a1

    :cond_58
    :goto_58
    if-eqz v2, :cond_5d

    :try_start_5a
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5d
    .catch Ljava/lang/Throwable; {:try_start_5a .. :try_end_5d} :catch_a3

    :cond_5d
    :goto_5d
    if-eqz v1, :cond_62

    :try_start_5f
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_62
    .catch Ljava/lang/Throwable; {:try_start_5f .. :try_end_62} :catch_a5

    :cond_62
    :goto_62
    new-instance v0, Lcom/unionpay/sdk/au$d;

    const/16 v1, 0x258

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/unionpay/sdk/au$d;-><init>(ILjava/lang/String;)V

    :goto_6b
    return-object v0

    :cond_6c
    :try_start_6c
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Lcom/unionpay/sdk/au$d;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    invoke-direct {v1, v5, v2}, Lcom/unionpay/sdk/au$d;-><init>(ILjava/lang/String;)V
    :try_end_79
    .catch Ljava/lang/Throwable; {:try_start_6c .. :try_end_79} :catch_4a
    .catchall {:try_start_6c .. :try_end_79} :catchall_b8

    if-eqz v4, :cond_7e

    :try_start_7b
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_7e
    .catch Ljava/lang/Throwable; {:try_start_7b .. :try_end_7e} :catch_9b

    :cond_7e
    :goto_7e
    :try_start_7e
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_81
    .catch Ljava/lang/Throwable; {:try_start_7e .. :try_end_81} :catch_9d

    :goto_81
    if-eqz v0, :cond_86

    :try_start_83
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_86
    .catch Ljava/lang/Throwable; {:try_start_83 .. :try_end_86} :catch_9f

    :cond_86
    :goto_86
    move-object v0, v1

    goto :goto_6b

    :catchall_88
    move-exception v0

    move-object v3, v2

    move-object v4, v2

    :goto_8b
    if-eqz v4, :cond_90

    :try_start_8d
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_90
    .catch Ljava/lang/Throwable; {:try_start_8d .. :try_end_90} :catch_a7

    :cond_90
    :goto_90
    if-eqz v3, :cond_95

    :try_start_92
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_95
    .catch Ljava/lang/Throwable; {:try_start_92 .. :try_end_95} :catch_a9

    :cond_95
    :goto_95
    if-eqz v2, :cond_9a

    :try_start_97
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_9a
    .catch Ljava/lang/Throwable; {:try_start_97 .. :try_end_9a} :catch_ab

    :cond_9a
    :goto_9a
    throw v0

    :catch_9b
    move-exception v2

    goto :goto_7e

    :catch_9d
    move-exception v2

    goto :goto_81

    :catch_9f
    move-exception v0

    goto :goto_86

    :catch_a1
    move-exception v0

    goto :goto_58

    :catch_a3
    move-exception v0

    goto :goto_5d

    :catch_a5
    move-exception v0

    goto :goto_62

    :catch_a7
    move-exception v1

    goto :goto_90

    :catch_a9
    move-exception v1

    goto :goto_95

    :catch_ab
    move-exception v1

    goto :goto_9a

    :catchall_ad
    move-exception v1

    move-object v3, v2

    move-object v4, v2

    move-object v2, v0

    move-object v0, v1

    goto :goto_8b

    :catchall_b3
    move-exception v1

    move-object v3, v2

    move-object v2, v0

    move-object v0, v1

    goto :goto_8b

    :catchall_b8
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_8b

    :catchall_bc
    move-exception v0

    move-object v4, v3

    move-object v3, v2

    move-object v2, v1

    goto :goto_8b

    :catch_c1
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    goto :goto_50

    :catch_c5
    move-exception v1

    move-object v3, v2

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    goto :goto_50

    :catch_cb
    move-exception v1

    move-object v3, v4

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    goto :goto_50
.end method

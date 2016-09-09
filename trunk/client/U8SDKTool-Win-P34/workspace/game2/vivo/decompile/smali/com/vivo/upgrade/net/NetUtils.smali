.class public Lcom/vivo/upgrade/net/NetUtils;
.super Ljava/lang/Object;
.source "NetUtils.java"


# static fields
.field public static final CONNECTION_TYPE_MOBILE:I = 0x1

.field public static final CONNECTION_TYPE_NULL:I = 0x0

.field public static final CONNECTION_TYPE_WIFI:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 7
    .param p0, "is"    # Ljava/io/InputStream;

    .prologue
    .line 91
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 92
    .local v2, "reader":Ljava/io/BufferedReader;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 96
    .local v1, "line":Ljava/lang/String;
    :goto_10
    :try_start_10
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_13} :catch_35
    .catchall {:try_start_10 .. :try_end_13} :catchall_42

    move-result-object v1

    if-nez v1, :cond_1e

    .line 103
    :try_start_16
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_19} :catch_4c

    .line 109
    :goto_19
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 97
    :cond_1e
    :try_start_1e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_34} :catch_35
    .catchall {:try_start_1e .. :try_end_34} :catchall_42

    goto :goto_10

    .line 99
    :catch_35
    move-exception v0

    .line 100
    .local v0, "e":Ljava/io/IOException;
    :try_start_36
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_42

    .line 103
    :try_start_39
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3c} :catch_3d

    goto :goto_19

    .line 104
    :catch_3d
    move-exception v0

    .line 105
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_19

    .line 101
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_42
    move-exception v4

    .line 103
    :try_start_43
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_46} :catch_47

    .line 107
    :goto_46
    throw v4

    .line 104
    :catch_47
    move-exception v0

    .line 105
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_46

    .line 104
    .end local v0    # "e":Ljava/io/IOException;
    :catch_4c
    move-exception v0

    .line 105
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_19
.end method

.method public static getConnectionType(Landroid/content/Context;)I
    .registers 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 25
    const-string v6, "connectivity"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 26
    .local v0, "conMan":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 28
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    if-nez v1, :cond_12

    .line 41
    :cond_11
    :goto_11
    return v3

    .line 31
    :cond_12
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v6

    sget-object v7, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v6, v7, :cond_11

    .line 35
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    .line 36
    .local v2, "type":I
    if-ne v2, v5, :cond_22

    move v3, v4

    .line 37
    goto :goto_11

    .line 38
    :cond_22
    if-nez v2, :cond_26

    move v3, v5

    .line 39
    goto :goto_11

    :cond_26
    move v3, v4

    .line 41
    goto :goto_11
.end method

.method public static getConnectionTypeName(Landroid/content/Context;)Ljava/lang/String;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 53
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 54
    .local v0, "conMan":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 56
    .local v2, "networkInfo":Landroid/net/NetworkInfo;
    if-nez v2, :cond_10

    .line 73
    :cond_f
    :goto_f
    return-object v1

    .line 60
    :cond_10
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v4, v5, :cond_f

    .line 64
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    .line 66
    .local v3, "type":I
    const/4 v4, 0x1

    if-ne v3, v4, :cond_24

    .line 67
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v1

    goto :goto_f

    .line 68
    :cond_24
    if-nez v3, :cond_f

    .line 69
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v1

    .line 70
    .local v1, "netType":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 71
    goto :goto_f
.end method

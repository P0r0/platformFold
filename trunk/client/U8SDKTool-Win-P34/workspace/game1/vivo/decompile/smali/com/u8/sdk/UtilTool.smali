.class public Lcom/u8/sdk/UtilTool;
.super Ljava/lang/Object;
.source "UtilTool.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UtilTool"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkSignatrue(Ljava/lang/String;)Z
    .registers 7
    .param p0, "sign_str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 171
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 172
    .local v1, "json":Lorg/json/JSONObject;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 173
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 174
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 175
    .local v2, "key":Ljava/lang/String;
    :cond_f
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1c

    .line 181
    const-string v5, "20131030114035565895"

    invoke-static {v3, v5}, Lcom/u8/sdk/VivoSignUtils;->verifySignature(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v4

    .line 182
    .local v4, "result":Z
    return v4

    .line 176
    .end local v4    # "result":Z
    :cond_1c
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "key":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 177
    .restart local v2    # "key":Ljava/lang/String;
    const-string v5, "respCode"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_32

    const-string v5, "respMsg"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f

    .line 178
    :cond_32
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f
.end method

.method public static checkStringIsNull(Ljava/lang/String;)Z
    .registers 2
    .param p0, "target"    # Ljava/lang/String;

    .prologue
    .line 25
    if-eqz p0, :cond_c

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_e

    .line 26
    :cond_c
    const/4 v0, 0x1

    .line 28
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static checkStringNull(Ljava/lang/String;)Z
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 118
    if-eqz p0, :cond_c

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_e

    .line 119
    :cond_c
    const/4 v0, 0x1

    .line 121
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static chmod(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p0, "permission"    # Ljava/lang/String;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 57
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "chmod "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "command":Ljava/lang/String;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    .line 59
    .local v2, "runtime":Ljava/lang/Runtime;
    invoke-virtual {v2, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_20} :catch_21

    .line 63
    .end local v0    # "command":Ljava/lang/String;
    .end local v2    # "runtime":Ljava/lang/Runtime;
    :goto_20
    return-void

    .line 60
    :catch_21
    move-exception v1

    .line 61
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_20
.end method

.method public static convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 6
    .param p0, "is"    # Ljava/io/InputStream;

    .prologue
    .line 32
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 33
    .local v2, "reader":Ljava/io/BufferedReader;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 36
    .local v1, "line":Ljava/lang/String;
    :goto_10
    :try_start_10
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_13} :catch_22
    .catchall {:try_start_10 .. :try_end_13} :catchall_2f

    move-result-object v1

    if-nez v1, :cond_1e

    .line 43
    :try_start_16
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_19} :catch_39

    .line 48
    :goto_19
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 37
    :cond_1e
    :try_start_1e
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_21} :catch_22
    .catchall {:try_start_1e .. :try_end_21} :catchall_2f

    goto :goto_10

    .line 39
    :catch_22
    move-exception v0

    .line 40
    .local v0, "e":Ljava/io/IOException;
    :try_start_23
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_2f

    .line 43
    :try_start_26
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_29} :catch_2a

    goto :goto_19

    .line 44
    :catch_2a
    move-exception v0

    .line 45
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_19

    .line 41
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_2f
    move-exception v4

    .line 43
    :try_start_30
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_33} :catch_34

    .line 47
    :goto_33
    throw v4

    .line 44
    :catch_34
    move-exception v0

    .line 45
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_33

    .line 44
    .end local v0    # "e":Ljava/io/IOException;
    :catch_39
    move-exception v0

    .line 45
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_19
.end method

.method public static generateRandomSeq(I)Ljava/lang/String;
    .registers 7
    .param p0, "len"    # I

    .prologue
    .line 126
    new-instance v2, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/util/Random;-><init>(J)V

    .line 127
    .local v2, "rnd":Ljava/util/Random;
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    .line 128
    .local v1, "random_seq":Ljava/lang/String;
    const/16 v4, 0xa

    invoke-virtual {v2, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 129
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_19
    if-lt v0, p0, :cond_1c

    .line 155
    return-object v1

    .line 130
    :cond_1c
    invoke-virtual {v2, p0}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    .line 131
    .local v3, "temp":I
    packed-switch v3, :pswitch_data_b4

    .line 151
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 129
    :goto_38
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 133
    :pswitch_3b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "A"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 134
    goto :goto_38

    .line 136
    :pswitch_4f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "B"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 137
    goto :goto_38

    .line 139
    :pswitch_63
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "C"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 140
    goto :goto_38

    .line 142
    :pswitch_77
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "D"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 143
    goto :goto_38

    .line 145
    :pswitch_8b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "E"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 146
    goto :goto_38

    .line 148
    :pswitch_9f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "F"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 149
    goto :goto_38

    .line 131
    nop

    :pswitch_data_b4
    .packed-switch 0xa
        :pswitch_3b
        :pswitch_4f
        :pswitch_63
        :pswitch_77
        :pswitch_8b
        :pswitch_9f
    .end packed-switch
.end method

.method public static isNetworkAvailable(Landroid/content/Context;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 159
    .line 160
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 159
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 161
    .local v0, "connManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 162
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_1a

    .line 163
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 164
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v2

    if-nez v2, :cond_1c

    .line 165
    :cond_1a
    const/4 v2, 0x0

    .line 167
    :goto_1b
    return v2

    :cond_1c
    const/4 v2, 0x1

    goto :goto_1b
.end method

.method public static log(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    return-void
.end method

.method public static showDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "strTitle"    # Ljava/lang/String;
    .param p2, "strText"    # Ljava/lang/String;

    .prologue
    .line 88
    invoke-static {p2}, Lcom/u8/sdk/UtilTool;->checkStringNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_24

    .line 89
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 91
    .local v0, "tDialog":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 92
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 93
    const-string v1, "\u786e\u5b9a"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 94
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 95
    const-string v1, "UtilTool"

    const-string v2, "activity isFinishing"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    .end local v0    # "tDialog":Landroid/app/AlertDialog$Builder;
    :cond_24
    :goto_24
    return-void

    .line 97
    .restart local v0    # "tDialog":Landroid/app/AlertDialog$Builder;
    :cond_25
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_24
.end method

.method public static showProgress(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "message"    # Ljava/lang/CharSequence;
    .param p3, "indeterminate"    # Z
    .param p4, "cancelable"    # Z

    .prologue
    .line 70
    const/4 v0, 0x0

    .line 71
    .local v0, "dialog":Landroid/app/ProgressDialog;
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/u8/sdk/UtilTool;->checkStringNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 72
    new-instance v0, Landroid/app/ProgressDialog;

    .end local v0    # "dialog":Landroid/app/ProgressDialog;
    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 73
    .restart local v0    # "dialog":Landroid/app/ProgressDialog;
    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 74
    invoke-virtual {v0, p2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 75
    invoke-virtual {v0, p3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 76
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 83
    :cond_1d
    return-object v0
.end method

.method public static string2JSON(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 10
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "split"    # Ljava/lang/String;

    .prologue
    .line 103
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 105
    .local v4, "json":Lorg/json/JSONObject;
    :try_start_5
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 106
    .local v1, "arrStr":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_a
    array-length v5, v1

    if-lt v3, v5, :cond_e

    .line 114
    .end local v1    # "arrStr":[Ljava/lang/String;
    .end local v3    # "i":I
    :goto_d
    return-object v4

    .line 107
    .restart local v1    # "arrStr":[Ljava/lang/String;
    .restart local v3    # "i":I
    :cond_e
    aget-object v5, v1, v3

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "arrKeyValue":[Ljava/lang/String;
    const/4 v5, 0x0

    aget-object v5, v0, v5

    .line 109
    aget-object v6, v1, v3

    const/4 v7, 0x0

    aget-object v7, v0, v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 108
    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_2b} :catch_2e

    .line 106
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 111
    .end local v0    # "arrKeyValue":[Ljava/lang/String;
    .end local v1    # "arrStr":[Ljava/lang/String;
    .end local v3    # "i":I
    :catch_2e
    move-exception v2

    .line 112
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_d
.end method

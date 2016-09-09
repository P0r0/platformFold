.class public final Lcom/alipay/sdk/net/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Lcom/alipay/sdk/data/c;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/sdk/net/d;->a:I

    .line 57
    return-void
.end method

.method public constructor <init>(Lcom/alipay/sdk/data/c;)V
    .registers 3

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/sdk/net/d;->a:I

    .line 52
    iput-object p1, p0, Lcom/alipay/sdk/net/d;->b:Lcom/alipay/sdk/data/c;

    .line 53
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/sdk/data/c;Lcom/alipay/sdk/data/f;)Ljava/lang/String;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/sdk/exception/NetErrorException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 191
    :try_start_1
    sget-object v0, Lcom/alipay/sdk/net/c;->a:Lcom/alipay/sdk/net/a;

    if-nez v0, :cond_3a

    new-instance v0, Lcom/alipay/sdk/net/a;

    invoke-direct {v0, p1, p2}, Lcom/alipay/sdk/net/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/alipay/sdk/net/c;->a:Lcom/alipay/sdk/net/a;

    :cond_c
    :goto_c
    if-eqz p4, :cond_54

    sget-object v0, Lcom/alipay/sdk/net/c;->a:Lcom/alipay/sdk/net/a;

    invoke-virtual {v0, p3, p4}, Lcom/alipay/sdk/net/a;->a(Ljava/lang/String;Lcom/alipay/sdk/data/c;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 195
    :goto_14
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    .line 196
    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    iput v2, p5, Lcom/alipay/sdk/data/f;->c:I

    .line 197
    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p5, Lcom/alipay/sdk/data/f;->d:Ljava/lang/String;

    .line 199
    iget-object v1, p0, Lcom/alipay/sdk/net/d;->b:Lcom/alipay/sdk/data/c;

    const-string v2, "Msp-Param"

    invoke-interface {v0, v2}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v2

    if-eqz v1, :cond_33

    array-length v3, v2

    if-lez v3, :cond_33

    iput-object v2, v1, Lcom/alipay/sdk/data/c;->b:[Lorg/apache/http/Header;

    .line 202
    :cond_33
    invoke-static {v0}, Lcom/alipay/sdk/net/c;->a(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_36} :catch_49
    .catchall {:try_start_1 .. :try_end_36} :catchall_50

    move-result-object v0

    .line 207
    sput-object v4, Lcom/alipay/sdk/net/c;->a:Lcom/alipay/sdk/net/a;

    return-object v0

    .line 191
    :cond_3a
    :try_start_3a
    sget-object v0, Lcom/alipay/sdk/net/c;->a:Lcom/alipay/sdk/net/a;

    iget-object v0, v0, Lcom/alipay/sdk/net/a;->a:Ljava/lang/String;

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    sget-object v0, Lcom/alipay/sdk/net/c;->a:Lcom/alipay/sdk/net/a;

    iput-object p2, v0, Lcom/alipay/sdk/net/a;->a:Ljava/lang/String;
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_48} :catch_49
    .catchall {:try_start_3a .. :try_end_48} :catchall_50

    goto :goto_c

    .line 205
    :catch_49
    move-exception v0

    :try_start_4a
    new-instance v0, Lcom/alipay/sdk/exception/NetErrorException;

    invoke-direct {v0}, Lcom/alipay/sdk/exception/NetErrorException;-><init>()V

    throw v0
    :try_end_50
    .catchall {:try_start_4a .. :try_end_50} :catchall_50

    .line 207
    :catchall_50
    move-exception v0

    sput-object v4, Lcom/alipay/sdk/net/c;->a:Lcom/alipay/sdk/net/a;

    throw v0

    .line 191
    :cond_54
    :try_start_54
    sget-object v0, Lcom/alipay/sdk/net/c;->a:Lcom/alipay/sdk/net/a;

    const/4 v1, 0x0

    invoke-virtual {v0, p3, v1}, Lcom/alipay/sdk/net/a;->a(Ljava/lang/String;Lcom/alipay/sdk/data/c;)Lorg/apache/http/HttpResponse;
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_5a} :catch_49
    .catchall {:try_start_54 .. :try_end_5a} :catchall_50

    move-result-object v0

    goto :goto_14
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    .prologue
    const/4 v0, 0x0

    .line 130
    .line 133
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_48
    .catchall {:try_start_1 .. :try_end_6} :catchall_38

    .line 134
    :try_start_6
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 136
    const/16 v3, 0x800

    new-array v3, v3, [C

    .line 137
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    :goto_19
    invoke-virtual {v2, v3}, Ljava/io/BufferedReader;->read([C)I

    move-result v5

    if-lez v5, :cond_2b

    .line 140
    const/4 v6, 0x0

    invoke-virtual {v4, v3, v6, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_23} :catch_24
    .catchall {:try_start_6 .. :try_end_23} :catchall_46

    goto :goto_19

    .line 147
    :catch_24
    move-exception v2

    :goto_25
    if-eqz v1, :cond_2a

    .line 149
    :try_start_27
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2a} :catch_42

    .line 154
    :cond_2a
    :goto_2a
    return-object v0

    .line 143
    :cond_2b
    :try_start_2b
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 144
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_31} :catch_24
    .catchall {:try_start_2b .. :try_end_31} :catchall_46

    move-result-object v0

    .line 147
    :try_start_32
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_35} :catch_36

    goto :goto_2a

    :catch_36
    move-exception v1

    goto :goto_2a

    :catchall_38
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    :goto_3c
    if-eqz v1, :cond_41

    .line 149
    :try_start_3e
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_44

    .line 151
    :cond_41
    :goto_41
    throw v0

    :catch_42
    move-exception v1

    goto :goto_2a

    :catch_44
    move-exception v1

    goto :goto_41

    .line 147
    :catchall_46
    move-exception v0

    goto :goto_3c

    :catch_48
    move-exception v1

    move-object v1, v0

    goto :goto_25
.end method

.method private a(Landroid/content/Context;Lcom/alipay/sdk/data/e;Lcom/alipay/sdk/data/f;)Lorg/json/JSONObject;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/sdk/exception/NetErrorException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x3

    const/4 v0, 0x0

    const-wide/high16 v8, 0x4039000000000000L    # 25.0

    .line 99
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_e
    const/16 v3, 0x18

    if-ge v0, v3, :cond_61

    invoke-virtual {v1, v10}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    packed-switch v3, :pswitch_data_e8

    :goto_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :pswitch_1c
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    mul-double/2addr v4, v8

    const-wide v6, 0x4050400000000000L    # 65.0

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v3, v4

    int-to-char v3, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_19

    :pswitch_35
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    mul-double/2addr v4, v8

    const-wide v6, 0x4058400000000000L    # 97.0

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v3, v4

    int-to-char v3, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_19

    :pswitch_4e
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_19

    :cond_61
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 101
    :try_start_65
    iget-object v0, p2, Lcom/alipay/sdk/data/e;->a:Lcom/alipay/sdk/data/a;

    iget-object v2, v0, Lcom/alipay/sdk/data/a;->a:Ljava/lang/String;

    .line 104
    invoke-virtual {p2, v6}, Lcom/alipay/sdk/data/e;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    .line 105
    iget-object v0, p2, Lcom/alipay/sdk/data/e;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/sdk/data/c;

    move-object v0, p0

    move-object v1, p1

    move-object v5, p3

    .line 103
    invoke-direct/range {v0 .. v5}, Lcom/alipay/sdk/net/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/sdk/data/c;Lcom/alipay/sdk/data/f;)Ljava/lang/String;

    move-result-object v0

    .line 108
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iput-wide v2, p3, Lcom/alipay/sdk/data/f;->e:J

    .line 111
    iget-boolean v1, p2, Lcom/alipay/sdk/data/e;->c:Z

    if-eqz v1, :cond_ca

    .line 112
    invoke-static {v0, p3}, Lcom/alipay/sdk/net/d;->a(Ljava/lang/String;Lcom/alipay/sdk/data/f;)Lorg/json/JSONObject;

    move-result-object v0

    iget v1, p3, Lcom/alipay/sdk/data/f;->c:I

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_a7

    iget v1, p0, Lcom/alipay/sdk/net/d;->a:I

    if-ge v1, v10, :cond_a7

    iget v0, p0, Lcom/alipay/sdk/net/d;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alipay/sdk/net/d;->a:I

    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/sdk/net/d;->a(Landroid/content/Context;Lcom/alipay/sdk/data/e;Lcom/alipay/sdk/data/f;)Lorg/json/JSONObject;

    move-result-object v0

    .line 120
    :goto_a6
    return-object v0

    .line 112
    :cond_a7
    const/4 v1, 0x0

    iput v1, p0, Lcom/alipay/sdk/net/d;->a:I

    const-string v1, "res_data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/alipay/sdk/encrypt/e;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "respData:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_c7
    .catch Lcom/alipay/sdk/exception/NetErrorException; {:try_start_65 .. :try_end_c7} :catch_c8
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_c7} :catch_e1

    goto :goto_a6

    .line 121
    :catch_c8
    move-exception v0

    throw v0

    .line 115
    :cond_ca
    :try_start_ca
    invoke-static {v0, p3}, Lcom/alipay/sdk/net/d;->a(Ljava/lang/String;Lcom/alipay/sdk/data/f;)Lorg/json/JSONObject;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "respData:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_e0
    .catch Lcom/alipay/sdk/exception/NetErrorException; {:try_start_ca .. :try_end_e0} :catch_c8
    .catch Ljava/lang/Exception; {:try_start_ca .. :try_end_e0} :catch_e1

    goto :goto_a6

    .line 124
    :catch_e1
    move-exception v0

    new-instance v0, Lcom/alipay/sdk/exception/NetErrorException;

    invoke-direct {v0}, Lcom/alipay/sdk/exception/NetErrorException;-><init>()V

    throw v0

    .line 99
    :pswitch_data_e8
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_35
        :pswitch_4e
    .end packed-switch
.end method

.method private a(Landroid/content/Context;Lcom/alipay/sdk/data/e;Lcom/alipay/sdk/data/f;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Lcom/alipay/sdk/exception/NetErrorException;
        }
    .end annotation

    .prologue
    .line 161
    invoke-static {p5, p3}, Lcom/alipay/sdk/net/d;->a(Ljava/lang/String;Lcom/alipay/sdk/data/f;)Lorg/json/JSONObject;

    move-result-object v0

    .line 162
    iget v1, p3, Lcom/alipay/sdk/data/f;->c:I

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_1a

    iget v1, p0, Lcom/alipay/sdk/net/d;->a:I

    const/4 v2, 0x3

    if-ge v1, v2, :cond_1a

    .line 164
    iget v0, p0, Lcom/alipay/sdk/net/d;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alipay/sdk/net/d;->a:I

    .line 165
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/sdk/net/d;->a(Landroid/content/Context;Lcom/alipay/sdk/data/e;Lcom/alipay/sdk/data/f;)Lorg/json/JSONObject;

    move-result-object v0

    .line 175
    :goto_19
    return-object v0

    .line 167
    :cond_1a
    const/4 v1, 0x0

    iput v1, p0, Lcom/alipay/sdk/net/d;->a:I

    .line 170
    const-string v1, "res_data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 173
    invoke-static {p4, v0}, Lcom/alipay/sdk/encrypt/e;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "respData:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_19
.end method

.method private static a(Lcom/alipay/sdk/data/f;Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 181
    invoke-static {p1, p0}, Lcom/alipay/sdk/net/d;->a(Ljava/lang/String;Lcom/alipay/sdk/data/f;)Lorg/json/JSONObject;

    move-result-object v0

    .line 182
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "respData:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 184
    return-object v0
.end method

.method private static a(Ljava/lang/String;Lcom/alipay/sdk/data/f;)Lorg/json/JSONObject;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x1f7

    .line 213
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 215
    const-string v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 217
    if-eqz v0, :cond_72

    .line 219
    const-string v1, "code"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p1, Lcom/alipay/sdk/data/f;->c:I

    .line 220
    const-string v1, "error_msg"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/alipay/sdk/data/f;->d:Ljava/lang/String;

    .line 222
    const-string v1, "params"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 223
    if-eqz v0, :cond_6e

    .line 224
    iget v1, p1, Lcom/alipay/sdk/data/f;->c:I

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_46

    .line 226
    const-string v1, "public_key"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_46

    invoke-static {}, Lcom/alipay/sdk/sys/b;->a()Lcom/alipay/sdk/sys/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/sdk/sys/b;->b()Lcom/alipay/sdk/data/d;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/alipay/sdk/data/d;->a(Ljava/lang/String;)V

    .line 229
    :cond_46
    new-instance v1, Lcom/alipay/sdk/data/a;

    invoke-direct {v1}, Lcom/alipay/sdk/data/a;-><init>()V

    .line 230
    const-string v2, "next_api_name"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/sdk/data/a;->c:Ljava/lang/String;

    .line 231
    const-string v2, "next_api_version"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/sdk/data/a;->d:Ljava/lang/String;

    .line 232
    const-string v2, "next_namespace"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/sdk/data/a;->b:Ljava/lang/String;

    .line 233
    const-string v2, "next_request_url"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/sdk/data/a;->a:Ljava/lang/String;

    .line 234
    iput-object v1, p1, Lcom/alipay/sdk/data/f;->l:Lcom/alipay/sdk/data/a;

    .line 244
    :goto_6d
    return-object v0

    .line 237
    :cond_6e
    iget v0, p1, Lcom/alipay/sdk/data/f;->c:I

    .line 244
    :goto_70
    const/4 v0, 0x0

    goto :goto_6d

    .line 241
    :cond_72
    iput v2, p1, Lcom/alipay/sdk/data/f;->c:I

    .line 242
    const-string v0, ""

    iput-object v0, p1, Lcom/alipay/sdk/data/f;->d:Ljava/lang/String;

    goto :goto_70
.end method

.method private static a(Lorg/json/JSONObject;)V
    .registers 3

    .prologue
    .line 248
    const-string v0, "public_key"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 249
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 250
    invoke-static {}, Lcom/alipay/sdk/sys/b;->a()Lcom/alipay/sdk/sys/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/sdk/sys/b;->b()Lcom/alipay/sdk/data/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/sdk/data/d;->a(Ljava/lang/String;)V

    .line 252
    :cond_17
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/alipay/sdk/data/e;Z)Lcom/alipay/sdk/protocol/c;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/sdk/exception/NetErrorException;
        }
    .end annotation

    .prologue
    .line 62
    new-instance v1, Lcom/alipay/sdk/data/f;

    invoke-direct {v1}, Lcom/alipay/sdk/data/f;-><init>()V

    .line 65
    invoke-direct {p0, p1, p2, v1}, Lcom/alipay/sdk/net/d;->a(Landroid/content/Context;Lcom/alipay/sdk/data/e;Lcom/alipay/sdk/data/f;)Lorg/json/JSONObject;

    move-result-object v2

    .line 68
    const-string v0, "gzip"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 69
    if-eqz v0, :cond_69

    .line 70
    const-string v0, "form"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 71
    if-eqz v0, :cond_50

    const-string v3, "quickpay"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_50

    .line 72
    const-string v3, "quickpay"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 73
    invoke-static {v0}, Lcom/alipay/sdk/encrypt/a;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 75
    :try_start_2b
    invoke-static {v0}, Lcom/alipay/sdk/data/b;->a([B)[B

    move-result-object v0

    .line 76
    invoke-static {v0}, Lcom/alipay/sdk/encrypt/c;->a([B)Ljava/lang/String;

    move-result-object v3

    .line 77
    const-string v4, "md5"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 78
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_50

    .line 79
    new-instance v3, Ljava/lang/String;

    const-string v4, "utf-8"

    invoke-direct {v3, v0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 80
    const-string v0, "form"

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_50} :catch_134

    .line 88
    :cond_50
    :goto_50
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "responsestring decoded "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    new-instance v0, Lcom/alipay/sdk/protocol/c;

    invoke-direct {v0, p2, v1}, Lcom/alipay/sdk/protocol/c;-><init>(Lcom/alipay/sdk/data/e;Lcom/alipay/sdk/data/f;)V

    .line 90
    invoke-virtual {v0, v2}, Lcom/alipay/sdk/protocol/c;->a(Lorg/json/JSONObject;)V

    .line 91
    if-eqz p3, :cond_6d

    .line 94
    :goto_68
    return-object v0

    .line 86
    :cond_69
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/alipay/sdk/data/f;->k:Z

    goto :goto_50

    .line 93
    :cond_6d
    new-instance v1, Lcom/alipay/sdk/protocol/e;

    invoke-direct {v1}, Lcom/alipay/sdk/protocol/e;-><init>()V

    invoke-static {v0}, Lcom/alipay/sdk/protocol/e;->a(Lcom/alipay/sdk/protocol/c;)Lcom/alipay/sdk/protocol/h;

    move-result-object v1

    if-nez v1, :cond_137

    :goto_78
    iget-object v2, v0, Lcom/alipay/sdk/protocol/c;->b:Lcom/alipay/sdk/data/f;

    iget-object v3, v0, Lcom/alipay/sdk/protocol/c;->c:Lorg/json/JSONObject;

    iget-object v1, v0, Lcom/alipay/sdk/protocol/c;->a:Lcom/alipay/sdk/data/e;

    iget-object v1, v1, Lcom/alipay/sdk/data/e;->a:Lcom/alipay/sdk/data/a;

    iget-object v4, v0, Lcom/alipay/sdk/protocol/c;->b:Lcom/alipay/sdk/data/f;

    iget-object v4, v4, Lcom/alipay/sdk/data/f;->l:Lcom/alipay/sdk/data/a;

    iget-object v5, v4, Lcom/alipay/sdk/data/a;->c:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_90

    iget-object v5, v1, Lcom/alipay/sdk/data/a;->c:Ljava/lang/String;

    iput-object v5, v4, Lcom/alipay/sdk/data/a;->c:Ljava/lang/String;

    :cond_90
    iget-object v5, v4, Lcom/alipay/sdk/data/a;->d:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_9c

    iget-object v5, v1, Lcom/alipay/sdk/data/a;->d:Ljava/lang/String;

    iput-object v5, v4, Lcom/alipay/sdk/data/a;->d:Ljava/lang/String;

    :cond_9c
    iget-object v5, v4, Lcom/alipay/sdk/data/a;->b:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_a8

    iget-object v5, v1, Lcom/alipay/sdk/data/a;->b:Ljava/lang/String;

    iput-object v5, v4, Lcom/alipay/sdk/data/a;->b:Ljava/lang/String;

    :cond_a8
    iget-object v5, v4, Lcom/alipay/sdk/data/a;->a:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_b4

    iget-object v1, v1, Lcom/alipay/sdk/data/a;->a:Ljava/lang/String;

    iput-object v1, v4, Lcom/alipay/sdk/data/a;->a:Ljava/lang/String;

    :cond_b4
    const-string v1, "session"

    const-string v4, "reflected_data"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_10a

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "session = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ""

    invoke-virtual {v4, v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v1, v0, Lcom/alipay/sdk/protocol/c;->b:Lcom/alipay/sdk/data/f;

    iput-object v4, v1, Lcom/alipay/sdk/data/f;->i:Lorg/json/JSONObject;

    :cond_d6
    :goto_d6
    const-string v1, "end_code"

    const-string v4, "0"

    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/alipay/sdk/data/f;->f:Ljava/lang/String;

    const-string v1, "user_id"

    const-string v4, ""

    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/alipay/sdk/data/f;->j:Ljava/lang/String;

    const-string v1, "result"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :try_start_f0
    const-string v4, "result"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_fb
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_f0 .. :try_end_fb} :catch_132

    move-result-object v1

    :goto_fc
    iput-object v1, v2, Lcom/alipay/sdk/data/f;->g:Ljava/lang/String;

    const-string v1, "memo"

    const-string v4, ""

    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/alipay/sdk/data/f;->h:Ljava/lang/String;

    goto/16 :goto_68

    :cond_10a
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d6

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    :try_start_115
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/alipay/sdk/tid/b;->a()Lcom/alipay/sdk/tid/b;

    move-result-object v1

    iget-object v1, v1, Lcom/alipay/sdk/tid/b;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_12d

    const-string v5, "tid"

    invoke-virtual {v4, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_12d
    iput-object v4, v2, Lcom/alipay/sdk/data/f;->i:Lorg/json/JSONObject;
    :try_end_12f
    .catch Lorg/json/JSONException; {:try_start_115 .. :try_end_12f} :catch_130

    goto :goto_d6

    :catch_130
    move-exception v1

    goto :goto_d6

    :catch_132
    move-exception v4

    goto :goto_fc

    :catch_134
    move-exception v0

    goto/16 :goto_50

    :cond_137
    move-object v0, v1

    goto/16 :goto_78
.end method

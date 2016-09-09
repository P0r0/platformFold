.class public Lcom/baidu/mtjstatsdk/HeadObject;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:I

.field private j:I

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string v0, "Android"

    iput-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->a:Ljava/lang/String;

    .line 29
    const-string v0, "1"

    iput-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->b:Ljava/lang/String;

    .line 31
    iput-object v1, p0, Lcom/baidu/mtjstatsdk/HeadObject;->d:Ljava/lang/String;

    .line 32
    iput-object v1, p0, Lcom/baidu/mtjstatsdk/HeadObject;->e:Ljava/lang/String;

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->f:I

    .line 40
    iput-object v1, p0, Lcom/baidu/mtjstatsdk/HeadObject;->k:Ljava/lang/String;

    return-void
.end method

.method private static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 371
    invoke-static {p0}, Lcom/baidu/mtjstatsdk/cx;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 373
    if-eqz v0, :cond_f

    .line 376
    const-string v1, ":"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 381
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 408
    const/4 v1, 0x0

    .line 410
    :try_start_1
    const-string v0, "h9YLQoINGWyOBYYk"

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v0, v2}, Lcom/baidu/mtjstatsdk/cr;->a(Ljava/lang/String;[B)[B

    move-result-object v0

    const-string v2, "utf-8"

    invoke-static {v0, v2}, Lcom/baidu/mtjstatsdk/cv;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 411
    const-string v0, "statsdk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u52a0\u5bc6=secretValue="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/baidu/mtjstatsdk/cw;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_29} :catch_2f

    move-object v0, v1

    .line 415
    :goto_2a
    if-nez v0, :cond_2e

    .line 416
    const-string v0, ""

    .line 417
    :cond_2e
    return-object v0

    .line 412
    :catch_2f
    move-exception v0

    .line 413
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_2a
.end method

.method private static a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 356
    if-nez p0, :cond_4

    .line 357
    const/4 p0, 0x0

    .line 366
    :cond_3
    :goto_3
    return-object p0

    .line 358
    :cond_4
    const-string v0, "000000000000000"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 361
    invoke-static {p1}, Lcom/baidu/mtjstatsdk/HeadObject;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 362
    const-string v0, "statsdk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "imei=null,mac="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/mtjstatsdk/cw;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public static getMacID(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 391
    invoke-static {}, Lcom/baidu/mtjstatsdk/BasicStoreTools;->getInstance()Lcom/baidu/mtjstatsdk/BasicStoreTools;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/mtjstatsdk/BasicStoreTools;->getAppDeviceMac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 392
    if-nez v0, :cond_39

    .line 393
    invoke-static {p0}, Lcom/baidu/mtjstatsdk/HeadObject;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 395
    if-eqz v0, :cond_39

    .line 396
    invoke-static {v0}, Lcom/baidu/mtjstatsdk/HeadObject;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 397
    const-string v1, "statsdk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u52a0\u5bc6=mac="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/mtjstatsdk/cw;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    if-eqz v0, :cond_39

    const-string v1, ""

    if-eq v0, v1, :cond_39

    .line 399
    invoke-static {}, Lcom/baidu/mtjstatsdk/BasicStoreTools;->getInstance()Lcom/baidu/mtjstatsdk/BasicStoreTools;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/baidu/mtjstatsdk/BasicStoreTools;->setAppDeviceMac(Landroid/content/Context;Ljava/lang/String;)V

    .line 404
    :cond_39
    return-object v0
.end method


# virtual methods
.method public declared-synchronized constructHeader(Landroid/content/Context;Ljava/lang/String;)V
    .registers 8

    .prologue
    const/4 v4, 0x2

    .line 103
    monitor-enter p0

    :try_start_2
    iget v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->f:I
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_20c

    if-eqz v0, :cond_8

    .line 294
    :cond_6
    :goto_6
    monitor-exit p0

    return-void

    .line 106
    :cond_8
    :try_start_8
    invoke-static {p2}, Lcom/baidu/mtjstatsdk/cs;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 107
    const-string v0, "statsdk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "constructHeader appkey= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/mtjstatsdk/cw;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_26
    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-static {p1, v0}, Lcom/baidu/mtjstatsdk/ct;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 116
    const-string v0, "android.permission.INTERNET"

    invoke-static {p1, v0}, Lcom/baidu/mtjstatsdk/ct;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 117
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {p1, v0}, Lcom/baidu/mtjstatsdk/ct;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 118
    const-string v0, "android.permission.WRITE_SETTINGS"

    invoke-static {p1, v0}, Lcom/baidu/mtjstatsdk/ct;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 123
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 125
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/mtjstatsdk/HeadObject;->c:Ljava/lang/String;

    .line 126
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/mtjstatsdk/HeadObject;->m:Ljava/lang/String;
    :try_end_4e
    .catchall {:try_start_8 .. :try_end_4e} :catchall_20c

    .line 128
    :try_start_4e
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/mtjstatsdk/HeadObject;->h:Ljava/lang/String;

    .line 130
    iget-object v1, p0, Lcom/baidu/mtjstatsdk/HeadObject;->h:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/baidu/mtjstatsdk/HeadObject;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/mtjstatsdk/HeadObject;->h:Ljava/lang/String;
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_5c} :catch_20f
    .catchall {:try_start_4e .. :try_end_5c} :catchall_20c

    .line 137
    :cond_5c
    :goto_5c
    :try_start_5c
    iget-object v1, p0, Lcom/baidu/mtjstatsdk/HeadObject;->h:Ljava/lang/String;

    if-nez v1, :cond_66

    .line 138
    invoke-static {p1}, Lcom/baidu/mtjstatsdk/HeadObject;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/mtjstatsdk/HeadObject;->h:Ljava/lang/String;

    .line 141
    :cond_66
    iget-object v1, p0, Lcom/baidu/mtjstatsdk/HeadObject;->h:Ljava/lang/String;

    if-eqz v1, :cond_74

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/HeadObject;->h:Ljava/lang/String;

    const-string v2, "000000000000000"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7e

    .line 142
    :cond_74
    invoke-static {}, Lcom/baidu/mtjstatsdk/BasicStoreTools;->getInstance()Lcom/baidu/mtjstatsdk/BasicStoreTools;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/baidu/mtjstatsdk/BasicStoreTools;->loadGenerateDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/mtjstatsdk/HeadObject;->h:Ljava/lang/String;

    .line 145
    :cond_7e
    iget-object v1, p0, Lcom/baidu/mtjstatsdk/HeadObject;->h:Ljava/lang/String;

    if-eqz v1, :cond_8c

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/HeadObject;->h:Ljava/lang/String;

    const-string v2, "000000000000000"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f0

    .line 146
    :cond_8c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 147
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hol"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/mtjstatsdk/HeadObject;->h:Ljava/lang/String;

    .line 148
    invoke-static {}, Lcom/baidu/mtjstatsdk/BasicStoreTools;->getInstance()Lcom/baidu/mtjstatsdk/BasicStoreTools;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/mtjstatsdk/HeadObject;->h:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Lcom/baidu/mtjstatsdk/BasicStoreTools;->setGenerateDeviceId(Landroid/content/Context;Ljava/lang/String;)V

    .line 149
    invoke-static {p2}, Lcom/baidu/mtjstatsdk/cs;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f0

    .line 150
    const-string v1, "statsdk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u8bbe\u5907id\u4e3a\u7a7a\uff0c\u7cfb\u7edf\u751f\u6210id ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/mtjstatsdk/HeadObject;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/mtjstatsdk/cw;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_f0
    iget-object v1, p0, Lcom/baidu/mtjstatsdk/HeadObject;->h:Ljava/lang/String;

    if-eqz v1, :cond_102

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/HeadObject;->h:Ljava/lang/String;

    const-string v2, ""

    if-eq v1, v2, :cond_102

    .line 155
    iget-object v1, p0, Lcom/baidu/mtjstatsdk/HeadObject;->h:Ljava/lang/String;

    invoke-static {v1}, Lcom/baidu/mtjstatsdk/HeadObject;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/mtjstatsdk/HeadObject;->h:Ljava/lang/String;
    :try_end_102
    .catchall {:try_start_5c .. :try_end_102} :catchall_20c

    .line 159
    :cond_102
    :try_start_102
    invoke-static {p1}, Lcom/baidu/mtjstatsdk/HeadObject;->getMacID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/mtjstatsdk/HeadObject;->s:Ljava/lang/String;
    :try_end_108
    .catch Ljava/lang/Exception; {:try_start_102 .. :try_end_108} :catch_21b
    .catchall {:try_start_102 .. :try_end_108} :catchall_20c

    .line 166
    :goto_108
    :try_start_108
    invoke-static {p1}, Lcom/baidu/mtjstatsdk/cx;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/mtjstatsdk/HeadObject;->r:Ljava/lang/String;
    :try_end_10e
    .catch Ljava/lang/Exception; {:try_start_108 .. :try_end_10e} :catch_221
    .catchall {:try_start_108 .. :try_end_10e} :catchall_20c

    .line 172
    :goto_10e
    :try_start_10e
    iget-object v1, p0, Lcom/baidu/mtjstatsdk/HeadObject;->e:Ljava/lang/String;

    if-nez v1, :cond_11d

    .line 173
    new-instance v1, Lcom/baidu/mtjstatsdk/DataCoreObject;

    invoke-direct {v1}, Lcom/baidu/mtjstatsdk/DataCoreObject;-><init>()V

    invoke-virtual {v1, p1}, Lcom/baidu/mtjstatsdk/DataCoreObject;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/mtjstatsdk/HeadObject;->e:Ljava/lang/String;
    :try_end_11d
    .catchall {:try_start_10e .. :try_end_11d} :catchall_20c

    .line 177
    :cond_11d
    :try_start_11d
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->l:Ljava/lang/String;
    :try_end_123
    .catch Ljava/lang/Exception; {:try_start_11d .. :try_end_123} :catch_227
    .catchall {:try_start_11d .. :try_end_123} :catchall_20c

    .line 185
    :cond_123
    :goto_123
    :try_start_123
    invoke-static {p1}, Lcom/baidu/mtjstatsdk/cx;->a(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->i:I

    .line 186
    invoke-static {p1}, Lcom/baidu/mtjstatsdk/cx;->b(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->j:I

    .line 187
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 188
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 189
    if-ne v0, v4, :cond_15d

    .line 190
    invoke-static {p2}, Lcom/baidu/mtjstatsdk/cs;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_148

    .line 191
    const-string v0, "statsdk"

    const-string v1, "Configuration.ORIENTATION_LANDSCAPE"

    invoke-static {v0, v1}, Lcom/baidu/mtjstatsdk/cw;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_148
    iget v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->i:I

    iget v1, p0, Lcom/baidu/mtjstatsdk/HeadObject;->j:I

    xor-int/2addr v0, v1

    iput v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->i:I

    .line 194
    iget v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->i:I

    iget v1, p0, Lcom/baidu/mtjstatsdk/HeadObject;->j:I

    xor-int/2addr v0, v1

    iput v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->j:I

    .line 195
    iget v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->i:I

    iget v1, p0, Lcom/baidu/mtjstatsdk/HeadObject;->j:I

    xor-int/2addr v0, v1

    iput v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->i:I
    :try_end_15d
    .catch Ljava/lang/Exception; {:try_start_123 .. :try_end_15d} :catch_233
    .catchall {:try_start_123 .. :try_end_15d} :catchall_20c

    .line 205
    :cond_15d
    :goto_15d
    :try_start_15d
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->k:Ljava/lang/String;

    if-eqz v0, :cond_16b

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->k:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a0

    .line 206
    :cond_16b
    invoke-static {}, Lcom/baidu/mtjstatsdk/BasicStoreTools;->getInstance()Lcom/baidu/mtjstatsdk/BasicStoreTools;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/baidu/mtjstatsdk/BasicStoreTools;->loadAppChannelWithPreferenceAndAppKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 208
    if-eqz v0, :cond_1a0

    const-string v1, ""

    if-eq v0, v1, :cond_1a0

    .line 209
    const-string v1, "||"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 210
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->k:Ljava/lang/String;

    .line 211
    const-string v0, "statsdk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "======channel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/mtjstatsdk/HeadObject;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/mtjstatsdk/cw;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a0
    .catch Ljava/lang/Exception; {:try_start_15d .. :try_end_1a0} :catch_23f
    .catchall {:try_start_15d .. :try_end_1a0} :catchall_20c

    .line 221
    :cond_1a0
    :goto_1a0
    if-eqz p2, :cond_1a4

    .line 222
    :try_start_1a2
    iput-object p2, p0, Lcom/baidu/mtjstatsdk/HeadObject;->d:Ljava/lang/String;

    .line 225
    :cond_1a4
    if-nez p2, :cond_1b6

    .line 228
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "statsdk"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "====APP Key\u4e22\u5931||can\'t find app key."

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/cw;->b([Ljava/lang/Object;)I
    :try_end_1b6
    .catchall {:try_start_1a2 .. :try_end_1b6} :catchall_20c

    .line 233
    :cond_1b6
    :try_start_1b6
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->g:Ljava/lang/String;

    if-eqz v0, :cond_1c4

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->g:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c8

    .line 234
    :cond_1c4
    const-string v0, "0.1"

    iput-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->g:Ljava/lang/String;
    :try_end_1c8
    .catch Ljava/lang/Exception; {:try_start_1b6 .. :try_end_1c8} :catch_24b
    .catchall {:try_start_1b6 .. :try_end_1c8} :catchall_20c

    .line 244
    :cond_1c8
    :goto_1c8
    :try_start_1c8
    const-string v0, "BaiduMobAd_CELL_LOCATION"

    invoke-static {p1, v0}, Lcom/baidu/mtjstatsdk/cx;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 245
    if-eqz v0, :cond_257

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_257

    .line 246
    const-string v0, "0_0_0"

    iput-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->n:Ljava/lang/String;
    :try_end_1e0
    .catch Ljava/lang/Exception; {:try_start_1c8 .. :try_end_1e0} :catch_25e
    .catchall {:try_start_1c8 .. :try_end_1e0} :catchall_20c

    .line 258
    :cond_1e0
    :goto_1e0
    :try_start_1e0
    const-string v0, "BaiduMobAd_GPS_LOCATION"

    invoke-static {p1, v0}, Lcom/baidu/mtjstatsdk/cx;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 259
    if-eqz v0, :cond_26a

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26a

    .line 260
    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->o:Ljava/lang/String;
    :try_end_1f8
    .catch Ljava/lang/Exception; {:try_start_1e0 .. :try_end_1f8} :catch_271
    .catchall {:try_start_1e0 .. :try_end_1f8} :catchall_20c

    .line 288
    :cond_1f8
    :goto_1f8
    :try_start_1f8
    invoke-static {p1}, Lcom/baidu/mtjstatsdk/cx;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->q:Ljava/lang/String;
    :try_end_1fe
    .catch Ljava/lang/Exception; {:try_start_1f8 .. :try_end_1fe} :catch_200
    .catchall {:try_start_1f8 .. :try_end_1fe} :catchall_20c

    goto/16 :goto_6

    .line 289
    :catch_200
    move-exception v0

    .line 290
    :try_start_201
    invoke-static {p2}, Lcom/baidu/mtjstatsdk/cs;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 291
    invoke-static {v0}, Lcom/baidu/mtjstatsdk/cw;->a(Ljava/lang/Throwable;)I
    :try_end_20a
    .catchall {:try_start_201 .. :try_end_20a} :catchall_20c

    goto/16 :goto_6

    .line 103
    :catchall_20c
    move-exception v0

    monitor-exit p0

    throw v0

    .line 131
    :catch_20f
    move-exception v1

    .line 132
    :try_start_210
    invoke-static {p2}, Lcom/baidu/mtjstatsdk/cs;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 133
    invoke-static {v1}, Lcom/baidu/mtjstatsdk/cw;->a(Ljava/lang/Throwable;)I

    goto/16 :goto_5c

    .line 161
    :catch_21b
    move-exception v1

    .line 162
    invoke-static {v1}, Lcom/baidu/mtjstatsdk/cw;->a(Ljava/lang/Throwable;)I

    goto/16 :goto_108

    .line 168
    :catch_221
    move-exception v1

    .line 169
    invoke-static {v1}, Lcom/baidu/mtjstatsdk/cw;->a(Ljava/lang/Throwable;)I

    goto/16 :goto_10e

    .line 178
    :catch_227
    move-exception v0

    .line 179
    invoke-static {p2}, Lcom/baidu/mtjstatsdk/cs;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_123

    .line 180
    invoke-static {v0}, Lcom/baidu/mtjstatsdk/cw;->a(Ljava/lang/Throwable;)I

    goto/16 :goto_123

    .line 198
    :catch_233
    move-exception v0

    .line 199
    invoke-static {p2}, Lcom/baidu/mtjstatsdk/cs;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15d

    .line 200
    invoke-static {v0}, Lcom/baidu/mtjstatsdk/cw;->a(Ljava/lang/Throwable;)I

    goto/16 :goto_15d

    .line 215
    :catch_23f
    move-exception v0

    .line 216
    invoke-static {p2}, Lcom/baidu/mtjstatsdk/cs;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a0

    .line 217
    invoke-static {v0}, Lcom/baidu/mtjstatsdk/cw;->a(Ljava/lang/Throwable;)I

    goto/16 :goto_1a0

    .line 237
    :catch_24b
    move-exception v0

    .line 238
    invoke-static {p2}, Lcom/baidu/mtjstatsdk/cs;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c8

    .line 239
    invoke-static {v0}, Lcom/baidu/mtjstatsdk/cw;->a(Ljava/lang/Throwable;)I
    :try_end_255
    .catchall {:try_start_210 .. :try_end_255} :catchall_20c

    goto/16 :goto_1c8

    .line 248
    :cond_257
    :try_start_257
    invoke-static {p1}, Lcom/baidu/mtjstatsdk/cx;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->n:Ljava/lang/String;
    :try_end_25d
    .catch Ljava/lang/Exception; {:try_start_257 .. :try_end_25d} :catch_25e
    .catchall {:try_start_257 .. :try_end_25d} :catchall_20c

    goto :goto_1e0

    .line 251
    :catch_25e
    move-exception v0

    .line 252
    :try_start_25f
    invoke-static {p2}, Lcom/baidu/mtjstatsdk/cs;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e0

    .line 253
    invoke-static {v0}, Lcom/baidu/mtjstatsdk/cw;->a(Ljava/lang/Throwable;)I
    :try_end_268
    .catchall {:try_start_25f .. :try_end_268} :catchall_20c

    goto/16 :goto_1e0

    .line 262
    :cond_26a
    :try_start_26a
    invoke-static {p1}, Lcom/baidu/mtjstatsdk/cx;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->o:Ljava/lang/String;
    :try_end_270
    .catch Ljava/lang/Exception; {:try_start_26a .. :try_end_270} :catch_271
    .catchall {:try_start_26a .. :try_end_270} :catchall_20c

    goto :goto_1f8

    .line 265
    :catch_271
    move-exception v0

    .line 266
    :try_start_272
    invoke-static {p2}, Lcom/baidu/mtjstatsdk/cs;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f8

    .line 267
    invoke-static {v0}, Lcom/baidu/mtjstatsdk/cw;->a(Ljava/lang/Throwable;)I
    :try_end_27b
    .catchall {:try_start_272 .. :try_end_27b} :catchall_20c

    goto/16 :goto_1f8
.end method

.method public getAppKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getAppVersionName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getCuid()Ljava/lang/String;
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getSDKType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getappChannel()Ljava/lang/String;
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->k:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized installHeader(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 8

    .prologue
    .line 300
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1, p3}, Lcom/baidu/mtjstatsdk/HeadObject;->constructHeader(Landroid/content/Context;Ljava/lang/String;)V

    .line 301
    invoke-static {p3}, Lcom/baidu/mtjstatsdk/cs;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 302
    const-string v0, "statsdk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "installHeader appkey= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/mtjstatsdk/cw;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_170

    .line 305
    :cond_22
    :try_start_22
    const-string v1, "o"

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->a:Ljava/lang/String;

    if-nez v0, :cond_120

    const-string v0, ""

    :goto_2a
    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 306
    const-string v1, "st"

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->b:Ljava/lang/String;

    if-nez v0, :cond_124

    const-string v0, "1"

    :goto_35
    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 307
    const-string v1, "s"

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->c:Ljava/lang/String;

    if-nez v0, :cond_128

    const-string v0, ""

    :goto_40
    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 308
    const-string v1, "k"

    if-nez p3, :cond_12c

    const-string v0, ""

    :goto_49
    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 309
    const-string v0, "i"

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 310
    const-string v0, "v"

    const-string v1, "1.3"

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 311
    const-string v0, "a"

    iget v1, p0, Lcom/baidu/mtjstatsdk/HeadObject;->f:I

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 312
    const-string v1, "n"

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->g:Ljava/lang/String;

    if-nez v0, :cond_12f

    const-string v0, ""

    :goto_69
    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 313
    const-string v0, "d"

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 314
    const-string v1, "mc"

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->s:Ljava/lang/String;

    if-nez v0, :cond_133

    const-string v0, ""

    :goto_7b
    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 315
    const-string v1, "bm"

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->r:Ljava/lang/String;

    if-nez v0, :cond_137

    const-string v0, ""

    :goto_86
    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 316
    const-string v1, "dd"

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->h:Ljava/lang/String;

    if-nez v0, :cond_13b

    const-string v0, ""

    :goto_91
    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 317
    const-string v1, "ii"

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->e:Ljava/lang/String;

    if-nez v0, :cond_13f

    const-string v0, ""

    :goto_9c
    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 318
    const-string v0, "tg"

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 319
    const-string v0, "w"

    iget v1, p0, Lcom/baidu/mtjstatsdk/HeadObject;->i:I

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 320
    const-string v0, "h"

    iget v1, p0, Lcom/baidu/mtjstatsdk/HeadObject;->j:I

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 321
    const-string v1, "c"

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->k:Ljava/lang/String;

    if-nez v0, :cond_143

    const-string v0, ""

    :goto_bb
    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 322
    const-string v1, "op"

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->l:Ljava/lang/String;

    if-nez v0, :cond_147

    const-string v0, ""

    :goto_c6
    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 323
    const-string v1, "m"

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->m:Ljava/lang/String;

    if-nez v0, :cond_14b

    const-string v0, ""

    :goto_d1
    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 324
    const-string v0, "cl"

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/HeadObject;->n:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 325
    const-string v1, "gl"

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->o:Ljava/lang/String;

    if-nez v0, :cond_14e

    const-string v0, ""

    :goto_e3
    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 327
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->p:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_151

    .line 328
    const-string v0, "wl2"

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/HeadObject;->p:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 334
    :goto_f5
    const-string v1, "l"

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->q:Ljava/lang/String;

    if-nez v0, :cond_173

    const-string v0, ""

    :goto_fd
    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 335
    const-string v0, "t"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p2, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 336
    const-string v0, "sq"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 339
    invoke-static {p3}, Lcom/baidu/mtjstatsdk/cs;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11e

    .line 340
    const-string v0, "statsdk"

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/mtjstatsdk/cw;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11e
    .catch Lorg/json/JSONException; {:try_start_22 .. :try_end_11e} :catch_15c
    .catchall {:try_start_22 .. :try_end_11e} :catchall_170

    .line 343
    :cond_11e
    monitor-exit p0

    return-object p2

    .line 305
    :cond_120
    :try_start_120
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->a:Ljava/lang/String;

    goto/16 :goto_2a

    .line 306
    :cond_124
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->b:Ljava/lang/String;

    goto/16 :goto_35

    .line 307
    :cond_128
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->c:Ljava/lang/String;

    goto/16 :goto_40

    :cond_12c
    move-object v0, p3

    .line 308
    goto/16 :goto_49

    .line 312
    :cond_12f
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->g:Ljava/lang/String;

    goto/16 :goto_69

    .line 314
    :cond_133
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->s:Ljava/lang/String;

    goto/16 :goto_7b

    .line 315
    :cond_137
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->r:Ljava/lang/String;

    goto/16 :goto_86

    .line 316
    :cond_13b
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->h:Ljava/lang/String;

    goto/16 :goto_91

    .line 317
    :cond_13f
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->e:Ljava/lang/String;

    goto/16 :goto_9c

    .line 321
    :cond_143
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->k:Ljava/lang/String;

    goto/16 :goto_bb

    .line 322
    :cond_147
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->l:Ljava/lang/String;

    goto/16 :goto_c6

    .line 323
    :cond_14b
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->m:Ljava/lang/String;

    goto :goto_d1

    .line 325
    :cond_14e
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->o:Ljava/lang/String;

    goto :goto_e3

    .line 330
    :cond_151
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 331
    const-string v1, "wl2"

    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_15b
    .catch Lorg/json/JSONException; {:try_start_120 .. :try_end_15b} :catch_15c
    .catchall {:try_start_120 .. :try_end_15b} :catchall_170

    goto :goto_f5

    .line 344
    :catch_15c
    move-exception v0

    .line 347
    :try_start_15d
    const-string v0, "header ini error"

    .line 348
    invoke-static {p3}, Lcom/baidu/mtjstatsdk/cs;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16a

    .line 349
    const-string v1, "statsdk"

    invoke-static {v1, v0}, Lcom/baidu/mtjstatsdk/cw;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    :cond_16a
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_170
    .catchall {:try_start_15d .. :try_end_170} :catchall_170

    .line 300
    :catchall_170
    move-exception v0

    monitor-exit p0

    throw v0

    .line 334
    :cond_173
    :try_start_173
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->q:Ljava/lang/String;
    :try_end_175
    .catch Lorg/json/JSONException; {:try_start_173 .. :try_end_175} :catch_15c
    .catchall {:try_start_173 .. :try_end_175} :catchall_170

    goto :goto_fd
.end method

.method public setAppChannel(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 70
    iput-object p1, p0, Lcom/baidu/mtjstatsdk/HeadObject;->k:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setAppKey(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 62
    iput-object p1, p0, Lcom/baidu/mtjstatsdk/HeadObject;->d:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setAppVersionName(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 78
    iput-object p1, p0, Lcom/baidu/mtjstatsdk/HeadObject;->g:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public setCuid(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 54
    iput-object p1, p0, Lcom/baidu/mtjstatsdk/HeadObject;->e:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setSDKType(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 91
    iput-object p1, p0, Lcom/baidu/mtjstatsdk/HeadObject;->b:Ljava/lang/String;

    .line 92
    return-void
.end method

.class public Lcom/bbk/payment/selfupdate/SelfUpdateHelper;
.super Ljava/lang/Object;


# static fields
.field public static final FORCE_UPDATE:I = 0xc9

.field public static final INTERNAL_SERVER_ERROR:I = 0x1f4

.field public static final MSG_LATEAST_VERSION:I = 0xc8

.field public static final NET_UNCONNECTED:I = 0x3e9

.field public static final PARAM_ERROR:I = 0x190

.field public static final SELF_UPDATE:I = 0xd2

.field public static final SUGGEST_UPDATE:I = 0xca


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/app/NotificationManager;

.field private c:Lcom/bbk/payment/PaymentActivityController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bbk/payment/PaymentActivityController;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/bbk/payment/selfupdate/SelfUpdateHelper;->c:Lcom/bbk/payment/PaymentActivityController;

    iput-object p1, p0, Lcom/bbk/payment/selfupdate/SelfUpdateHelper;->a:Landroid/content/Context;

    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/bbk/payment/selfupdate/SelfUpdateHelper;->b:Landroid/app/NotificationManager;

    return-void
.end method

.method private static a(Ljava/io/File;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_8

    :goto_7
    return-object v0

    :cond_8
    :try_start_8
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_8 .. :try_end_d} :catch_4e

    move-result-object v1

    :try_start_e
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_13
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_13} :catch_57

    const/16 v0, 0x2000

    new-array v0, v0, [B

    :goto_17
    :try_start_17
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-gtz v3, :cond_60

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    new-instance v1, Ljava/math/BigInteger;

    const/4 v3, 0x1

    invoke-direct {v1, v3, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "%32s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x20

    const/16 v3, 0x30

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_40} :catch_65
    .catchall {:try_start_17 .. :try_end_40} :catchall_6e

    move-result-object v0

    :try_start_41
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_44} :catch_45

    goto :goto_7

    :catch_45
    move-exception v1

    const-string v2, "SelfUpdateHelper"

    const-string v3, "Exception on closing MD5 input stream"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    :catch_4e
    move-exception v1

    const-string v2, "SelfUpdateHelper"

    const-string v3, "Exception while getting Digest"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    :catch_57
    move-exception v1

    const-string v2, "SelfUpdateHelper"

    const-string v3, "Exception while getting FileInputStream"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    :cond_60
    const/4 v4, 0x0

    :try_start_61
    invoke-virtual {v1, v0, v4, v3}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_64} :catch_65
    .catchall {:try_start_61 .. :try_end_64} :catchall_6e

    goto :goto_17

    :catch_65
    move-exception v0

    :try_start_66
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v3, "Unable to process file for MD5"

    invoke-direct {v1, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_6e
    .catchall {:try_start_66 .. :try_end_6e} :catchall_6e

    :catchall_6e
    move-exception v0

    :try_start_6f
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_72
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_72} :catch_73

    :goto_72
    throw v0

    :catch_73
    move-exception v1

    const-string v2, "SelfUpdateHelper"

    const-string v3, "Exception on closing MD5 input stream"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_72
.end method


# virtual methods
.method public appendGreneralInfomation(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 12

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/bbk/payment/model/DeviceInfo;

    invoke-direct {v0, p1}, Lcom/bbk/payment/model/DeviceInfo;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/bbk/payment/model/DeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/bbk/payment/model/DeviceInfo;->getDeviceModel()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    :try_start_16
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "&"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "imei"

    const-string v7, "UTF-8"

    invoke-static {v6, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "UTF-8"

    invoke-static {v2, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_44
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_16 .. :try_end_44} :catch_bc

    move-result-object v1

    :try_start_45
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "model"

    const-string v6, "UTF-8"

    invoke-static {v3, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-static {v0, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "elapsedtime"

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_a6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_45 .. :try_end_a6} :catch_c4

    move-result-object v0

    :goto_a7
    const-string v1, "SelfUpdateHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "after append general information, download url is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :catch_bc
    move-exception v0

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    :goto_c0
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_a7

    :catch_c4
    move-exception v0

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    goto :goto_c0
.end method

.method public cancelNotification(I)V
    .registers 3

    iget-object v0, p0, Lcom/bbk/payment/selfupdate/SelfUpdateHelper;->b:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method public checkAppExist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 11

    const/4 v2, -0x1

    const/4 v0, 0x0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3b

    if-eqz p2, :cond_19

    const-string v3, ""

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_19

    if-nez v1, :cond_3c

    :cond_19
    const-string v1, "SelfUpdateHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "++md5 = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "SelfUpdateHelper"

    const-string v3, "md5 String NULL or UpdateFile NULL"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    :goto_35
    if-eqz v1, :cond_78

    move v1, v0

    :goto_38
    if-eq v1, v2, :cond_3b

    const/4 v0, 0x1

    :cond_3b
    return v0

    :cond_3c
    invoke-static {v1}, Lcom/bbk/payment/selfupdate/SelfUpdateHelper;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4b

    const-string v1, "SelfUpdateHelper"

    const-string v3, "md5 calculatedDigest NULL"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    goto :goto_35

    :cond_4b
    const-string v3, "SelfUpdateHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "md5  Calculated digest: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "SelfUpdateHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "md5  Provided digest: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    goto :goto_35

    :cond_78
    move v1, v2

    goto :goto_38
.end method

.method public detectFileLength(I)Ljava/lang/String;
    .registers 10

    const-wide/high16 v6, 0x4090000000000000L    # 1024.0

    const-string v0, ""

    const/16 v1, 0x400

    if-le p1, v1, :cond_46

    int-to-double v2, p1

    :try_start_9
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v4, "#.##"

    invoke-direct {v1, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    div-double/2addr v2, v6

    cmpl-double v4, v2, v6

    if-lez v4, :cond_2e

    div-double/2addr v2, v6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " MB"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2d
    return-object v0

    :cond_2e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " KB"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2d

    :cond_46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " B"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_58} :catch_5a

    move-result-object v0

    goto :goto_2d

    :catch_5a
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2d
.end method

.method public installApk(Ljava/lang/String;I)V
    .registers 7

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_c

    :goto_b
    return-void

    :cond_c
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "file://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/bbk/payment/selfupdate/SelfUpdateHelper;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/bbk/payment/selfupdate/SelfUpdateHelper;->c:Lcom/bbk/payment/PaymentActivityController;

    invoke-virtual {v0}, Lcom/bbk/payment/PaymentActivityController;->failByUPdate()V

    goto :goto_b
.end method

.method public varargs onProgressUpdate([Ljava/lang/Integer;)V
    .registers 6

    const/4 v3, 0x0

    const-string v0, "SelfUpdateHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onProgressUpdate , values = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_46

    aget-object v0, p1, v3

    if-eqz v0, :cond_46

    const/16 v0, 0xc8

    aget-object v1, p1, v3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v0, v1, :cond_46

    aget-object v0, p1, v3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sparse-switch v0, :sswitch_data_74

    iget-object v0, p0, Lcom/bbk/payment/selfupdate/SelfUpdateHelper;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/bbk/payment/selfupdate/SelfUpdateHelper;->a:Landroid/content/Context;

    const-string v2, "bbk_msg_latest_version"

    invoke-static {v1, v2}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_3c
    iget-object v1, p0, Lcom/bbk/payment/selfupdate/SelfUpdateHelper;->a:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_46
    return-void

    :sswitch_47
    iget-object v0, p0, Lcom/bbk/payment/selfupdate/SelfUpdateHelper;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/bbk/payment/selfupdate/SelfUpdateHelper;->a:Landroid/content/Context;

    const-string v2, "bbk_msg_latest_version"

    invoke-static {v1, v2}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3c

    :sswitch_56
    iget-object v0, p0, Lcom/bbk/payment/selfupdate/SelfUpdateHelper;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/bbk/payment/selfupdate/SelfUpdateHelper;->a:Landroid/content/Context;

    const-string v2, "bbk_msg_server_error"

    invoke-static {v1, v2}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3c

    :sswitch_65
    iget-object v0, p0, Lcom/bbk/payment/selfupdate/SelfUpdateHelper;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/bbk/payment/selfupdate/SelfUpdateHelper;->a:Landroid/content/Context;

    const-string v2, "bbk_network_abnormal"

    invoke-static {v1, v2}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3c

    :sswitch_data_74
    .sparse-switch
        0xc8 -> :sswitch_47
        0x190 -> :sswitch_56
        0x1f4 -> :sswitch_56
        0x3e9 -> :sswitch_65
    .end sparse-switch
.end method

.method public preDownload(J)Z
    .registers 10

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    :try_start_11
    new-instance v2, Landroid/os/StatFs;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v4, v1

    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I
    :try_end_22
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11 .. :try_end_22} :catch_2a

    move-result v1

    int-to-long v2, v1

    mul-long/2addr v2, v4

    cmp-long v1, v2, p1

    if-gtz v1, :cond_2f

    :cond_29
    :goto_29
    return v0

    :catch_2a
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_29

    :cond_2f
    const/4 v0, 0x1

    goto :goto_29
.end method

.class public final Lcom/huanju/data/a/h;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/huanju/data/a/b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "Utility"

    invoke-static {v0}, Lcom/huanju/data/a/b;->a(Ljava/lang/String;)Lcom/huanju/data/a/b;

    move-result-object v0

    sput-object v0, Lcom/huanju/data/a/h;->a:Lcom/huanju/data/a/b;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v0, ""

    const/16 v2, 0x40

    :try_start_8
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_1c

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v2, v2

    if-lez v2, :cond_1c

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1b} :catch_1d

    move-result-object v0

    :cond_1c
    :goto_1c
    return-object v0

    :catch_1d
    move-exception v1

    sget-object v2, Lcom/huanju/data/a/h;->a:Lcom/huanju/data/a/b;

    const-string v3, "get sign error!!!"

    invoke-virtual {v2, v3, v1}, Lcom/huanju/data/a/b;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1c
.end method

.method public static a(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    .registers 8

    const-string v0, ""

    const/4 v2, 0x0

    if-eqz p0, :cond_2a

    :try_start_5
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v3, 0x400

    new-array v3, v3, [B

    :goto_12
    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2b

    new-instance v5, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v5, v3, v6, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_22
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_22} :catch_23
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_22} :catch_4b
    .catchall {:try_start_5 .. :try_end_22} :catchall_53

    goto :goto_12

    :catch_23
    move-exception v1

    :try_start_24
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_53

    invoke-static {v2}, Lcom/huanju/data/a/h;->a(Ljava/io/Closeable;)V

    :cond_2a
    :goto_2a
    return-object v0

    :cond_2b
    :try_start_2b
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/huanju/data/a/h;->a:Lcom/huanju/data/a/b;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ServerRespondInfo="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/huanju/data/a/b;->b(Ljava/lang/String;)V
    :try_end_47
    .catch Ljava/lang/IllegalStateException; {:try_start_2b .. :try_end_47} :catch_23
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_47} :catch_4b
    .catchall {:try_start_2b .. :try_end_47} :catchall_53

    invoke-static {v2}, Lcom/huanju/data/a/h;->a(Ljava/io/Closeable;)V

    goto :goto_2a

    :catch_4b
    move-exception v1

    :try_start_4c
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4f
    .catchall {:try_start_4c .. :try_end_4f} :catchall_53

    invoke-static {v2}, Lcom/huanju/data/a/h;->a(Ljava/io/Closeable;)V

    goto :goto_2a

    :catchall_53
    move-exception v0

    invoke-static {v2}, Lcom/huanju/data/a/h;->a(Ljava/io/Closeable;)V

    throw v0
.end method

.method public static a(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    .registers 2

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/data/a/h;->a(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method private static a([BLjava/lang/String;Z)Ljava/lang/String;
    .registers 9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    array-length v3, p0

    const/4 v0, 0x0

    move v1, v0

    :goto_8
    if-ge v1, v3, :cond_2f

    aget-byte v0, p0, v1

    and-int/lit16 v0, v0, 0xff

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_18

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    :cond_18
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_24

    const-string v4, "0"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_24
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    :cond_2f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a([BZ)Ljava/lang/String;
    .registers 4

    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1, p1}, Lcom/huanju/data/a/h;->a([BLjava/lang/String;Z)Ljava/lang/String;
    :try_end_15
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_15} :catch_17

    move-result-object v0

    return-object v0

    :catch_17
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static a(Landroid/content/Context;)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/huanju/data/b/a/b;",
            ">;"
        }
    .end annotation

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-wide/16 v0, 0x0

    invoke-static {}, Lcom/huanju/data/a/b;->a()Z

    move-result v2

    if-eqz v2, :cond_98

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    move-wide v2, v0

    :goto_f
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_20
    :goto_20
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_73

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v6, "com.android."

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_20

    new-instance v6, Lcom/huanju/data/b/a/b;

    invoke-direct {v6}, Lcom/huanju/data/b/a/b;-><init>()V

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v9, :cond_45

    iput-boolean v9, v6, Lcom/huanju/data/b/a/b;->e:Z

    :cond_45
    iget v1, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v1, v6, Lcom/huanju/data/b/a/b;->d:I

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v1, v6, Lcom/huanju/data/b/a/b;->c:Ljava/lang/String;

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v1, v6, Lcom/huanju/data/b/a/b;->a:Ljava/lang/String;

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v6, Lcom/huanju/data/b/a/b;->b:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/huanju/data/a/h;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0, v8}, Lcom/huanju/data/a/h;->a([BZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/huanju/data/b/a/b;->f:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_20

    :cond_73
    invoke-static {}, Lcom/huanju/data/a/b;->a()Z

    move-result v0

    if-eqz v0, :cond_97

    sget-object v0, Lcom/huanju/data/a/h;->a:Lcom/huanju/data/a/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getInstalledAppList() use time:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v2, v6, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huanju/data/a/b;->b(Ljava/lang/String;)V

    :cond_97
    return-object v4

    :cond_98
    move-wide v2, v0

    goto/16 :goto_f
.end method

.method public static a(Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 2

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-object v0

    :catch_6
    move-exception v0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    goto :goto_5
.end method

.method public static a(Landroid/database/Cursor;)V
    .registers 2

    if-eqz p0, :cond_b

    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_b} :catch_c

    :cond_b
    :goto_b
    return-void

    :catch_c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method public static a(Ljava/io/Closeable;)V
    .registers 2

    if-eqz p0, :cond_5

    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_6

    :cond_5
    :goto_5
    return-void

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5
.end method

.method public static a([B)[B
    .registers 5

    const/4 v1, 0x0

    :try_start_1
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v0, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v0, v2}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v0, p0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/util/zip/GZIPOutputStream;->finish()V

    invoke-virtual {v0}, Ljava/util/zip/GZIPOutputStream;->close()V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_17} :catch_1c

    move-result-object v0

    :try_start_18
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1b} :catch_24

    :goto_1b
    return-object v0

    :catch_1c
    move-exception v0

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    :goto_20
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1b

    :catch_24
    move-exception v1

    goto :goto_20
.end method

.method public static b(Lorg/apache/http/HttpResponse;)Lorg/json/JSONObject;
    .registers 2

    invoke-static {p0}, Lcom/huanju/data/a/h;->a(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/data/a/h;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Z
    .registers 2

    const-string v0, "1"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.class public final Lcom/baidu/sapi2/SapiCache;
.super Ljava/lang/Object;
.source "SapiCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/sapi2/SapiCache$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static d:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 52
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/baidu/sapi2/SapiCache;->a:Ljava/util/Map;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/baidu/sapi2/SapiCache;->b:Ljava/util/List;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/baidu/sapi2/SapiCache;->c:Ljava/util/List;

    .line 55
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 107
    invoke-static {p1}, Lcom/baidu/sapi2/SapiCache;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "moduleId":Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/baidu/sapi2/SapiCache;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static a(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 3
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 591
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v1

    new-array v0, v1, [B

    .line 592
    .local v0, "buffer":[B
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    .line 593
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_e
    .catchall {:try_start_0 .. :try_end_e} :catchall_12

    .line 595
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-object v1

    .end local v0    # "buffer":[B
    :catchall_12
    move-exception v1

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    throw v1
.end method

.method static a()V
    .registers 6

    .prologue
    .line 204
    sget-object v4, Lcom/baidu/sapi2/SapiCache;->d:Landroid/content/Context;

    invoke-static {v4}, Lcom/baidu/sapi2/b;->a(Landroid/content/Context;)Lcom/baidu/sapi2/b;

    move-result-object v3

    .line 205
    .local v3, "sapiContext":Lcom/baidu/sapi2/b;
    invoke-virtual {v3}, Lcom/baidu/sapi2/b;->j()Lcom/baidu/sapi2/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/baidu/sapi2/c;->f()Lcom/baidu/sapi2/c$a;

    move-result-object v0

    .line 206
    .local v0, "cacheOptions":Lcom/baidu/sapi2/c$a;
    invoke-virtual {v0}, Lcom/baidu/sapi2/c$a;->a()Z

    move-result v4

    if-eqz v4, :cond_54

    .line 207
    invoke-virtual {v0}, Lcom/baidu/sapi2/c$a;->b()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/sapi2/c$a$a;

    .line 208
    .local v2, "module":Lcom/baidu/sapi2/c$a$a;
    sget-object v4, Lcom/baidu/sapi2/SapiCache;->b:Ljava/util/List;

    iget-object v5, v2, Lcom/baidu/sapi2/c$a$a;->a:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    .line 210
    .end local v2    # "module":Lcom/baidu/sapi2/c$a$a;
    :cond_30
    sget-object v4, Lcom/baidu/sapi2/SapiCache;->c:Ljava/util/List;

    sget-object v5, Lcom/baidu/sapi2/SapiCache;->b:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 211
    invoke-virtual {v0}, Lcom/baidu/sapi2/c$a;->b()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_54

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/sapi2/c$a$a;

    .line 212
    .restart local v2    # "module":Lcom/baidu/sapi2/c$a$a;
    new-instance v4, Lcom/baidu/sapi2/SapiCache$2;

    invoke-direct {v4}, Lcom/baidu/sapi2/SapiCache$2;-><init>()V

    invoke-static {v2, v4}, Lcom/baidu/sapi2/SapiCache;->a(Lcom/baidu/sapi2/c$a$a;Lcom/baidu/sapi2/SapiCache$a;)V

    goto :goto_3f

    .line 225
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "module":Lcom/baidu/sapi2/c$a$a;
    :cond_54
    return-void
.end method

.method static a(Landroid/content/Context;Lcom/baidu/sapi2/c$a$a;)V
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "module"    # Lcom/baidu/sapi2/c$a$a;

    .prologue
    .line 266
    iget-object v3, p1, Lcom/baidu/sapi2/c$a$a;->a:Ljava/lang/String;

    invoke-static {v3}, Lcom/baidu/sapi2/c$a$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 267
    .local v2, "internalFile":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_26

    .line 269
    :try_start_15
    invoke-static {p0, v2}, Lcom/baidu/sapi2/SapiCache;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 270
    .local v0, "data":Ljava/lang/String;
    iget-object v3, p1, Lcom/baidu/sapi2/c$a$a;->a:Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/baidu/sapi2/SapiCache;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_1e} :catch_1f

    .line 277
    .end local v0    # "data":Ljava/lang/String;
    :goto_1e
    return-void

    .line 271
    :catch_1f
    move-exception v1

    .line 272
    .local v1, "e":Ljava/lang/Throwable;
    iget-object v3, p1, Lcom/baidu/sapi2/c$a$a;->a:Ljava/lang/String;

    invoke-static {p0, v3}, Lcom/baidu/sapi2/SapiCache;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1e

    .line 275
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_26
    iget-object v3, p1, Lcom/baidu/sapi2/c$a$a;->a:Ljava/lang/String;

    invoke-static {p0, v3}, Lcom/baidu/sapi2/SapiCache;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1e
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;[B)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "data"    # [B

    .prologue
    .line 501
    const/4 v0, 0x0

    .line 503
    .local v0, "outputStream":Ljava/io/OutputStream;
    const/4 v1, 0x0

    :try_start_2
    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    .line 504
    invoke-virtual {v0, p2}, Ljava/io/OutputStream;->write([B)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_9} :catch_f
    .catchall {:try_start_2 .. :try_end_9} :catchall_18

    .line 507
    if-eqz v0, :cond_e

    .line 509
    :try_start_b
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_e} :catch_1f

    .line 514
    :cond_e
    :goto_e
    return-void

    .line 505
    :catch_f
    move-exception v1

    .line 507
    if-eqz v0, :cond_e

    .line 509
    :try_start_12
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_15} :catch_16

    goto :goto_e

    .line 510
    :catch_16
    move-exception v1

    goto :goto_e

    .line 507
    :catchall_18
    move-exception v1

    if-eqz v0, :cond_1e

    .line 509
    :try_start_1b
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1e} :catch_21

    .line 511
    :cond_1e
    :goto_1e
    throw v1

    .line 510
    :catch_1f
    move-exception v1

    goto :goto_e

    :catch_21
    move-exception v2

    goto :goto_1e
.end method

.method static a(Lcom/baidu/sapi2/c$a$a;Lcom/baidu/sapi2/SapiCache$a;)V
    .registers 9
    .param p0, "module"    # Lcom/baidu/sapi2/c$a$a;
    .param p1, "listener"    # Lcom/baidu/sapi2/SapiCache$a;

    .prologue
    .line 235
    if-nez p1, :cond_21

    .line 236
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-class v6, Lcom/baidu/sapi2/SapiCache$a;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "can\'t be null"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 239
    :cond_21
    iget-object v4, p0, Lcom/baidu/sapi2/c$a$a;->a:Ljava/lang/String;

    invoke-static {v4}, Lcom/baidu/sapi2/c$a$a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 241
    .local v2, "externalFile":Ljava/lang/String;
    :try_start_27
    const-string v4, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_64

    new-instance v4, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_64

    .line 243
    invoke-static {v2}, Lcom/baidu/sapi2/SapiCache;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 244
    .local v0, "data":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/baidu/android/common/security/MD5Util;->toMd5([BZ)Ljava/lang/String;

    move-result-object v3

    .line 245
    .local v3, "hash":Ljava/lang/String;
    iget-object v4, p0, Lcom/baidu/sapi2/c$a$a;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5b

    .line 246
    invoke-interface {p1, p0, v0}, Lcom/baidu/sapi2/SapiCache$a;->a(Lcom/baidu/sapi2/c$a$a;Ljava/lang/String;)V

    .line 256
    .end local v0    # "data":Ljava/lang/String;
    .end local v3    # "hash":Ljava/lang/String;
    :goto_5a
    return-void

    .line 248
    .restart local v0    # "data":Ljava/lang/String;
    .restart local v3    # "hash":Ljava/lang/String;
    :cond_5b
    invoke-interface {p1, p0}, Lcom/baidu/sapi2/SapiCache$a;->a(Lcom/baidu/sapi2/c$a$a;)V
    :try_end_5e
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_5e} :catch_5f

    goto :goto_5a

    .line 253
    .end local v0    # "data":Ljava/lang/String;
    .end local v3    # "hash":Ljava/lang/String;
    :catch_5f
    move-exception v1

    .line 254
    .local v1, "e":Ljava/lang/Throwable;
    invoke-interface {p1, p0}, Lcom/baidu/sapi2/SapiCache$a;->a(Lcom/baidu/sapi2/c$a$a;)V

    goto :goto_5a

    .line 251
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_64
    :try_start_64
    invoke-interface {p1, p0}, Lcom/baidu/sapi2/SapiCache$a;->a(Lcom/baidu/sapi2/c$a$a;)V
    :try_end_67
    .catch Ljava/lang/Throwable; {:try_start_64 .. :try_end_67} :catch_5f

    goto :goto_5a
.end method

.method static a(Ljava/lang/String;)V
    .registers 2
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 96
    sget-object v0, Lcom/baidu/sapi2/SapiCache;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    return-void
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 87
    sget-object v0, Lcom/baidu/sapi2/SapiCache;->a:Ljava/util/Map;

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    return-void
.end method

.method static a(Ljava/lang/String;[B)V
    .registers 8
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "data"    # [B

    .prologue
    .line 524
    const/4 v2, 0x0

    .line 526
    .local v2, "outputStream":Ljava/io/OutputStream;
    :try_start_1
    const-string v4, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_39

    .line 527
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-direct {v1, v4, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 528
    .local v1, "outputFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_27

    .line 529
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 531
    :cond_27
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_30

    .line 532
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 534
    :cond_30
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_35} :catch_44
    .catchall {:try_start_1 .. :try_end_35} :catchall_53

    .line 535
    .end local v2    # "outputStream":Ljava/io/OutputStream;
    .local v3, "outputStream":Ljava/io/OutputStream;
    :try_start_35
    invoke-virtual {v3, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_38} :catch_62
    .catchall {:try_start_35 .. :try_end_38} :catchall_5f

    move-object v2, v3

    .line 540
    .end local v1    # "outputFile":Ljava/io/File;
    .end local v3    # "outputStream":Ljava/io/OutputStream;
    .restart local v2    # "outputStream":Ljava/io/OutputStream;
    :cond_39
    if-eqz v2, :cond_3e

    .line 542
    :try_start_3b
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_3e} :catch_3f

    .line 548
    :cond_3e
    :goto_3e
    return-void

    .line 543
    :catch_3f
    move-exception v0

    .line 544
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_3e

    .line 537
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_44
    move-exception v0

    .line 538
    .restart local v0    # "e":Ljava/lang/Throwable;
    :goto_45
    :try_start_45
    invoke-static {v0}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V
    :try_end_48
    .catchall {:try_start_45 .. :try_end_48} :catchall_53

    .line 540
    if-eqz v2, :cond_3e

    .line 542
    :try_start_4a
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_4d} :catch_4e

    goto :goto_3e

    .line 543
    :catch_4e
    move-exception v0

    .line 544
    invoke-static {v0}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_3e

    .line 540
    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_53
    move-exception v4

    :goto_54
    if-eqz v2, :cond_59

    .line 542
    :try_start_56
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_59
    .catch Ljava/lang/Throwable; {:try_start_56 .. :try_end_59} :catch_5a

    .line 545
    :cond_59
    :goto_59
    throw v4

    .line 543
    :catch_5a
    move-exception v0

    .line 544
    .restart local v0    # "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_59

    .line 540
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v2    # "outputStream":Ljava/io/OutputStream;
    .restart local v1    # "outputFile":Ljava/io/File;
    .restart local v3    # "outputStream":Ljava/io/OutputStream;
    :catchall_5f
    move-exception v4

    move-object v2, v3

    .end local v3    # "outputStream":Ljava/io/OutputStream;
    .restart local v2    # "outputStream":Ljava/io/OutputStream;
    goto :goto_54

    .line 537
    .end local v2    # "outputStream":Ljava/io/OutputStream;
    .restart local v3    # "outputStream":Ljava/io/OutputStream;
    :catch_62
    move-exception v0

    move-object v2, v3

    .end local v3    # "outputStream":Ljava/io/OutputStream;
    .restart local v2    # "outputStream":Ljava/io/OutputStream;
    goto :goto_45
.end method

.method static a(Lcom/baidu/sapi2/c$a$a;Lcom/baidu/sapi2/c$a$a;)Z
    .registers 4
    .param p0, "newModule"    # Lcom/baidu/sapi2/c$a$a;
    .param p1, "oldModule"    # Lcom/baidu/sapi2/c$a$a;

    .prologue
    .line 463
    iget-object v0, p0, Lcom/baidu/sapi2/c$a$a;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    if-eqz p1, :cond_14

    iget-object v0, p0, Lcom/baidu/sapi2/c$a$a;->c:Ljava/lang/String;

    iget-object v1, p1, Lcom/baidu/sapi2/c$a$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method static b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "moduleId"    # Ljava/lang/String;

    .prologue
    .line 119
    invoke-static {}, Lcom/baidu/sapi2/SapiCache;->e()V

    .line 120
    invoke-static {p0}, Lcom/baidu/sapi2/b;->a(Landroid/content/Context;)Lcom/baidu/sapi2/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/sapi2/b;->j()Lcom/baidu/sapi2/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/sapi2/c;->f()Lcom/baidu/sapi2/c$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/sapi2/c$a;->a()Z

    move-result v2

    if-eqz v2, :cond_38

    .line 122
    invoke-static {p1}, Lcom/baidu/sapi2/SapiCache;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, "data":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_20

    .line 146
    .end local v0    # "data":Ljava/lang/String;
    :goto_1f
    return-object v0

    .line 127
    .restart local v0    # "data":Ljava/lang/String;
    :cond_20
    invoke-static {p0, p1}, Lcom/baidu/sapi2/SapiCache;->c(Landroid/content/Context;Ljava/lang/String;)Lcom/baidu/sapi2/c$a$a;

    move-result-object v1

    .line 128
    .local v1, "module":Lcom/baidu/sapi2/c$a$a;
    if-eqz v1, :cond_33

    .line 129
    new-instance v2, Lcom/baidu/sapi2/SapiCache$1;

    invoke-direct {v2, p0}, Lcom/baidu/sapi2/SapiCache$1;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v2}, Lcom/baidu/sapi2/SapiCache;->a(Lcom/baidu/sapi2/c$a$a;Lcom/baidu/sapi2/SapiCache$a;)V

    .line 144
    invoke-static {p1}, Lcom/baidu/sapi2/SapiCache;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1f

    .line 141
    :cond_33
    invoke-static {p0, p1}, Lcom/baidu/sapi2/SapiCache;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1f

    .line 146
    .end local v0    # "data":Ljava/lang/String;
    .end local v1    # "module":Lcom/baidu/sapi2/c$a$a;
    :cond_38
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "moduleId"    # Ljava/lang/String;

    .prologue
    .line 157
    sget-object v1, Lcom/baidu/sapi2/SapiCache;->a:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    sget-object v1, Lcom/baidu/sapi2/SapiCache;->a:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_25

    .line 159
    sget-object v1, Lcom/baidu/sapi2/SapiCache;->a:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 160
    .local v0, "data":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_25

    .line 164
    .end local v0    # "data":Ljava/lang/String;
    :goto_24
    return-object v0

    :cond_25
    const/4 v0, 0x0

    goto :goto_24
.end method

.method static b()V
    .registers 8

    .prologue
    .line 320
    sget-object v3, Lcom/baidu/sapi2/SapiCache;->d:Landroid/content/Context;

    invoke-static {v3}, Lcom/baidu/sapi2/utils/SapiUtils;->hasActiveNetwork(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 439
    .local v2, "params":Lcom/baidu/cloudsdk/common/http/RequestParams;
    :goto_8
    return-void

    .line 325
    .end local v2    # "params":Lcom/baidu/cloudsdk/common/http/RequestParams;
    :cond_9
    :try_start_9
    invoke-static {}, Lcom/baidu/sapi2/SapiCache;->c()Lcom/baidu/cloudsdk/common/http/RequestParams;

    move-result-object v2

    .line 326
    .restart local v2    # "params":Lcom/baidu/cloudsdk/common/http/RequestParams;
    const-string v3, "/static/appsapi/conf/config.txt"

    invoke-static {v3}, Lcom/baidu/sapi2/utils/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 327
    .local v0, "deviceInfo":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1e

    .line 328
    const-string v3, "di"

    invoke-virtual {v2, v3, v0}, Lcom/baidu/cloudsdk/common/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    :cond_1e
    const-string v3, "cdnversion"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/32 v6, 0x493e0

    div-long/2addr v4, v6

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/baidu/cloudsdk/common/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    new-instance v3, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {v3}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;-><init>()V

    sget-object v4, Lcom/baidu/sapi2/SapiCache;->d:Landroid/content/Context;

    invoke-static {}, Lcom/baidu/sapi2/SapiCache;->d()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/baidu/sapi2/SapiCache$3;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/baidu/sapi2/SapiCache$3;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v3, v4, v5, v2, v6}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->get(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/cloudsdk/common/http/RequestParams;Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;)V
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_47} :catch_48

    goto :goto_8

    .line 436
    .end local v0    # "deviceInfo":Ljava/lang/String;
    :catch_48
    move-exception v1

    .line 437
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {v1}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_8
.end method

.method static declared-synchronized c()Lcom/baidu/cloudsdk/common/http/RequestParams;
    .registers 4

    .prologue
    .line 446
    const-class v2, Lcom/baidu/sapi2/SapiCache;

    monitor-enter v2

    :try_start_3
    new-instance v0, Lcom/baidu/cloudsdk/common/http/RequestParams;

    invoke-direct {v0}, Lcom/baidu/cloudsdk/common/http/RequestParams;-><init>()V

    .line 447
    .local v0, "params":Lcom/baidu/cloudsdk/common/http/RequestParams;
    const-string v1, "tpl"

    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getInstance()Lcom/baidu/sapi2/SapiAccountManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/sapi2/SapiAccountManager;->getSapiConfiguration()Lcom/baidu/sapi2/SapiConfiguration;

    move-result-object v3

    iget-object v3, v3, Lcom/baidu/sapi2/SapiConfiguration;->tpl:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/baidu/cloudsdk/common/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    const-string v1, "sdk_version"

    const-string v3, "6.14.7"

    invoke-virtual {v0, v1, v3}, Lcom/baidu/cloudsdk/common/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    const-string v1, "app_version"

    sget-object v3, Lcom/baidu/sapi2/SapiCache;->d:Landroid/content/Context;

    invoke-static {v3}, Lcom/baidu/sapi2/utils/SapiUtils;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/baidu/cloudsdk/common/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_2b

    .line 451
    monitor-exit v2

    return-object v0

    .line 446
    :catchall_2b
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method static c(Landroid/content/Context;Ljava/lang/String;)Lcom/baidu/sapi2/c$a$a;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "moduleId"    # Ljava/lang/String;

    .prologue
    .line 175
    invoke-static {p0}, Lcom/baidu/sapi2/b;->a(Landroid/content/Context;)Lcom/baidu/sapi2/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/sapi2/b;->j()Lcom/baidu/sapi2/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/sapi2/c;->f()Lcom/baidu/sapi2/c$a;

    move-result-object v0

    .line 176
    .local v0, "cache":Lcom/baidu/sapi2/c$a;
    invoke-virtual {v0}, Lcom/baidu/sapi2/c$a;->b()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/sapi2/c$a$a;

    .line 177
    .local v2, "module":Lcom/baidu/sapi2/c$a$a;
    iget-object v3, v2, Lcom/baidu/sapi2/c$a$a;->a:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 181
    .end local v2    # "module":Lcom/baidu/sapi2/c$a$a;
    :goto_28
    return-object v2

    :cond_29
    const/4 v2, 0x0

    goto :goto_28
.end method

.method static c(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 306
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 307
    .local v1, "uri":Landroid/net/Uri;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/net/Uri;->getPort()I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_46

    const-string v2, ""

    :goto_1a
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 308
    .local v0, "cacheModuleId":Ljava/lang/String;
    const-string v2, ".html"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_45

    .line 309
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".html"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 312
    :cond_45
    return-object v0

    .line 307
    .end local v0    # "cacheModuleId":Ljava/lang/String;
    :cond_46
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/Uri;->getPort()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1a
.end method

.method static d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 471
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getInstance()Lcom/baidu/sapi2/SapiAccountManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/sapi2/SapiAccountManager;->getSapiConfiguration()Lcom/baidu/sapi2/SapiConfiguration;

    move-result-object v1

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->environment:Lcom/baidu/sapi2/utils/enums/Domain;

    invoke-virtual {v1}, Lcom/baidu/sapi2/utils/enums/Domain;->getConfigUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/static/appsapi/conf/config.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "moduleId"    # Ljava/lang/String;

    .prologue
    .line 288
    invoke-static {p1}, Lcom/baidu/sapi2/c$a$a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 290
    .local v0, "assetFile":Ljava/lang/String;
    :try_start_4
    invoke-static {p0, v0}, Lcom/baidu/sapi2/SapiCache;->f(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 291
    .local v1, "data":Ljava/lang/String;
    invoke-static {p1, v1}, Lcom/baidu/sapi2/SapiCache;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    invoke-static {p0, p1}, Lcom/baidu/sapi2/SapiCache;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_e} :catch_10

    move-result-object v3

    .line 294
    .end local v1    # "data":Ljava/lang/String;
    :goto_f
    return-object v3

    .line 293
    :catch_10
    move-exception v2

    .line 294
    .local v2, "ignored":Ljava/lang/Throwable;
    const/4 v3, 0x0

    goto :goto_f
.end method

.method static d(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 559
    new-instance v0, Ljava/io/FileInputStream;

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Lcom/baidu/sapi2/SapiCache;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 572
    invoke-virtual {p0, p1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/sapi2/SapiCache;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static e()V
    .registers 5

    .prologue
    .line 478
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 479
    .local v3, "removedModuleIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v4, Lcom/baidu/sapi2/SapiCache;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_b
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 480
    .local v2, "oldModuleId":Ljava/lang/String;
    sget-object v4, Lcom/baidu/sapi2/SapiCache;->c:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 481
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 482
    invoke-static {v2}, Lcom/baidu/sapi2/SapiCache;->a(Ljava/lang/String;)V

    goto :goto_b

    .line 485
    .end local v2    # "oldModuleId":Ljava/lang/String;
    :cond_26
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2a
    :goto_2a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_44

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 486
    .local v1, "moduleId":Ljava/lang/String;
    sget-object v4, Lcom/baidu/sapi2/SapiCache;->b:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 487
    sget-object v4, Lcom/baidu/sapi2/SapiCache;->b:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_2a

    .line 490
    .end local v1    # "moduleId":Ljava/lang/String;
    :cond_44
    return-void
.end method

.method static synthetic f()Landroid/content/Context;
    .registers 1

    .prologue
    .line 44
    sget-object v0, Lcom/baidu/sapi2/SapiCache;->d:Landroid/content/Context;

    return-object v0
.end method

.method static f(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 585
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/sapi2/SapiCache;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic g()Ljava/util/List;
    .registers 1

    .prologue
    .line 44
    sget-object v0, Lcom/baidu/sapi2/SapiCache;->c:Ljava/util/List;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .registers 3
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 191
    if-nez p0, :cond_a

    .line 192
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 194
    :cond_a
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/baidu/sapi2/SapiCache;->d:Landroid/content/Context;

    .line 195
    invoke-static {}, Lcom/baidu/sapi2/SapiCache;->a()V

    .line 196
    invoke-static {}, Lcom/baidu/sapi2/SapiCache;->b()V

    .line 197
    return-void
.end method

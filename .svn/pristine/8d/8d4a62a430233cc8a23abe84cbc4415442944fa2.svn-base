.class public Lmobisocial/util/PlatformUtils;
.super Ljava/lang/Object;
.source "PlatformUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobisocial/util/PlatformUtils$ContactsUploader;
    }
.end annotation


# static fields
.field static final BATCH_SIZE:I = 0xfa

.field static final TAG:Ljava/lang/String; = "Omlib"

.field static final WAKE_TAG:Ljava/lang/String; = "wake:omlib"

.field private static final mActiveWakeLocks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/PowerManager$WakeLock;",
            ">;"
        }
    .end annotation
.end field

.field private static mNextId:I

.field static final sMainThreadHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 50
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lmobisocial/util/PlatformUtils;->sMainThreadHandler:Landroid/os/Handler;

    .line 89
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lmobisocial/util/PlatformUtils;->mActiveWakeLocks:Landroid/util/SparseArray;

    .line 91
    const/4 v0, 0x1

    sput v0, Lmobisocial/util/PlatformUtils;->mNextId:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    return-void
.end method

.method public static convertDpToPixel(FLandroid/content/Context;)F
    .registers 7
    .param p0, "dp"    # F
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 83
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 84
    .local v2, "resources":Landroid/content/res/Resources;
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 85
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget v3, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v3, v3

    const/high16 v4, 0x43200000    # 160.0f

    div-float/2addr v3, v4

    mul-float v1, p0, v3

    .line 86
    .local v1, "px":F
    return v1
.end method

.method public static includesCancelledException(Ljava/lang/Throwable;)Z
    .registers 2
    .param p0, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 225
    :goto_0
    if-eqz p0, :cond_d

    .line 226
    instance-of v0, p0, Landroid/os/OperationCanceledException;

    if-eqz v0, :cond_8

    .line 227
    const/4 v0, 0x1

    .line 230
    :goto_7
    return v0

    .line 228
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    goto :goto_0

    .line 230
    :cond_d
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static includesCertException(Ljava/lang/Throwable;)Z
    .registers 2
    .param p0, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 234
    :goto_0
    if-eqz p0, :cond_12

    .line 235
    instance-of v0, p0, Lmobisocial/longdan/exception/LongdanException;

    if-eqz v0, :cond_d

    .line 236
    check-cast p0, Lmobisocial/longdan/exception/LongdanException;

    .end local p0    # "t":Ljava/lang/Throwable;
    invoke-virtual {p0}, Lmobisocial/longdan/exception/LongdanException;->isExtCertPathValidatorException()Z

    move-result v0

    .line 239
    :goto_c
    return v0

    .line 237
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_d
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    goto :goto_0

    .line 239
    :cond_12
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public static includesNetworkOrSocketTimeoutException(Ljava/lang/Throwable;)Z
    .registers 2
    .param p0, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 243
    :goto_0
    if-eqz p0, :cond_11

    .line 244
    instance-of v0, p0, Ljava/net/SocketTimeoutException;

    if-nez v0, :cond_a

    instance-of v0, p0, Lmobisocial/longdan/exception/LongdanNetworkException;

    if-eqz v0, :cond_c

    .line 245
    :cond_a
    const/4 v0, 0x1

    .line 249
    :goto_b
    return v0

    .line 247
    :cond_c
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    goto :goto_0

    .line 249
    :cond_11
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static makeUncheckedForThrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
    .registers 2
    .param p0, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 258
    invoke-static {p0}, Lmobisocial/util/PlatformUtils;->thrownInsteadOf(Ljava/lang/Throwable;)V

    .line 260
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static normalizePhoneNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "defaultRegion"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 58
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-ge v2, v3, :cond_f

    .line 59
    const-string v2, "Omlib"

    const-string v3, "Not supported prior to Android SDK 14"

    invoke-static {v2, v3}, Lmobisocial/util/OMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :goto_e
    return-object v1

    .line 63
    :cond_f
    :try_start_f
    invoke-static {p0, p1}, Landroid/telephony/PhoneNumberUtils;->formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_12} :catch_14

    move-result-object v1

    goto :goto_e

    .line 64
    :catch_14
    move-exception v0

    .line 65
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Omlib"

    const-string v3, "Failed to normalize number"

    invoke-static {v2, v3, v0}, Lmobisocial/util/OMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_e
.end method

.method public static declared-synchronized obtainWakeLock(Landroid/content/Context;)I
    .registers 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 96
    const-class v4, Lmobisocial/util/PlatformUtils;

    monitor-enter v4

    :try_start_3
    sget v0, Lmobisocial/util/PlatformUtils;->mNextId:I

    .line 97
    .local v0, "id":I
    sget v3, Lmobisocial/util/PlatformUtils;->mNextId:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lmobisocial/util/PlatformUtils;->mNextId:I

    .line 98
    const-string v3, "power"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 99
    .local v1, "pm":Landroid/os/PowerManager;
    const/4 v3, 0x1

    const-string v5, "wake:omlib"

    invoke-virtual {v1, v3, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    .line 100
    .local v2, "wl":Landroid/os/PowerManager$WakeLock;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 101
    const-wide/32 v6, 0xea60

    invoke-virtual {v2, v6, v7}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 102
    sget-object v3, Lmobisocial/util/PlatformUtils;->mActiveWakeLocks:Landroid/util/SparseArray;

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_2b

    .line 103
    monitor-exit v4

    return v0

    .line 96
    .end local v0    # "id":I
    .end local v1    # "pm":Landroid/os/PowerManager;
    .end local v2    # "wl":Landroid/os/PowerManager$WakeLock;
    :catchall_2b
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public static openInputStream(Landroid/content/Context;Ljava/net/URI;)Ljava/io/InputStream;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 214
    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 215
    .local v1, "scheme":Ljava/lang/String;
    const-string v4, "http"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14

    const-string v4, "https"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 216
    :cond_14
    new-instance v2, Ljava/net/URL;

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 217
    .local v2, "url":Ljava/net/URL;
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    .line 218
    .local v3, "urlConnection":Ljava/net/URLConnection;
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-virtual {v3}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 221
    .end local v2    # "url":Ljava/net/URL;
    .end local v3    # "urlConnection":Ljava/net/URLConnection;
    :goto_2a
    return-object v4

    .line 220
    :cond_2b
    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 221
    .local v0, "aUri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v4

    goto :goto_2a
.end method

.method public static declared-synchronized releaseWakeLock(I)V
    .registers 4
    .param p0, "id"    # I

    .prologue
    .line 107
    const-class v2, Lmobisocial/util/PlatformUtils;

    monitor-enter v2

    :try_start_3
    sget-object v1, Lmobisocial/util/PlatformUtils;->mActiveWakeLocks:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager$WakeLock;

    .line 108
    .local v0, "wl":Landroid/os/PowerManager$WakeLock;
    if-eqz v0, :cond_10

    .line 109
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    .line 111
    :cond_10
    monitor-exit v2

    return-void

    .line 107
    .end local v0    # "wl":Landroid/os/PowerManager$WakeLock;
    :catchall_12
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static runOnMainThread(Ljava/lang/Runnable;)V
    .registers 2
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 53
    sget-object v0, Lmobisocial/util/PlatformUtils;->sMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 54
    return-void
.end method

.method private static thrownInsteadOf(Ljava/lang/Throwable;)V
    .registers 1
    .param p0, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Throwable;",
            ")V^TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 254
    throw p0
.end method

.method public static uploadAddressBook(Landroid/content/Context;Lmobisocial/omlib/client/LongdanClient;Landroid/os/CancellationSignal;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "client"    # Lmobisocial/omlib/client/LongdanClient;
    .param p2, "cancellation"    # Landroid/os/CancellationSignal;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    .line 72
    new-instance v0, Lmobisocial/util/PlatformUtils$ContactsUploader;

    invoke-direct {v0, p0, p1}, Lmobisocial/util/PlatformUtils$ContactsUploader;-><init>(Landroid/content/Context;Lmobisocial/omlib/client/LongdanClient;)V

    if-nez p2, :cond_c

    new-instance p2, Landroid/os/CancellationSignal;

    .end local p2    # "cancellation":Landroid/os/CancellationSignal;
    invoke-direct {p2}, Landroid/os/CancellationSignal;-><init>()V

    :cond_c
    invoke-virtual {v0, p2}, Lmobisocial/util/PlatformUtils$ContactsUploader;->execute(Landroid/os/CancellationSignal;)Ljava/lang/Void;

    .line 73
    return-void
.end method

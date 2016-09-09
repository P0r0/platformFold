.class final Lcom/unionpay/sdk/as;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:Lcom/unionpay/sdk/as;

.field private static e:Lcom/unionpay/sdk/ap;


# instance fields
.field private final b:Ljava/util/zip/CRC32;

.field private c:Landroid/os/Handler;

.field private final d:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x0

    sput-object v0, Lcom/unionpay/sdk/as;->a:Lcom/unionpay/sdk/as;

    sput-object v0, Lcom/unionpay/sdk/as;->e:Lcom/unionpay/sdk/ap;

    invoke-static {}, Lcom/unionpay/sdk/as;->a()Lcom/unionpay/sdk/as;

    move-result-object v0

    iget-object v0, v0, Lcom/unionpay/sdk/as;->d:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    invoke-static {}, Lcom/unionpay/sdk/as;->a()Lcom/unionpay/sdk/as;

    move-result-object v0

    new-instance v1, Lcom/unionpay/sdk/at;

    invoke-static {}, Lcom/unionpay/sdk/as;->a()Lcom/unionpay/sdk/as;

    move-result-object v2

    iget-object v2, v2, Lcom/unionpay/sdk/as;->d:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/unionpay/sdk/at;-><init>(Landroid/os/Looper;)V

    iput-object v1, v0, Lcom/unionpay/sdk/as;->c:Landroid/os/Handler;

    return-void
.end method

.method constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lcom/unionpay/sdk/as;->b:Ljava/util/zip/CRC32;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unionpay/sdk/as;->c:Landroid/os/Handler;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "NetWorkThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/unionpay/sdk/as;->d:Landroid/os/HandlerThread;

    return-void
.end method

.method static synthetic a(Lcom/unionpay/sdk/ap;)Lcom/unionpay/sdk/ap;
    .registers 1

    sput-object p0, Lcom/unionpay/sdk/as;->e:Lcom/unionpay/sdk/ap;

    return-object p0
.end method

.method public static a()Lcom/unionpay/sdk/as;
    .registers 2

    sget-object v0, Lcom/unionpay/sdk/as;->a:Lcom/unionpay/sdk/as;

    if-nez v0, :cond_13

    const-class v1, Lcom/unionpay/sdk/as;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/unionpay/sdk/as;->a:Lcom/unionpay/sdk/as;

    if-nez v0, :cond_12

    new-instance v0, Lcom/unionpay/sdk/as;

    invoke-direct {v0}, Lcom/unionpay/sdk/as;-><init>()V

    sput-object v0, Lcom/unionpay/sdk/as;->a:Lcom/unionpay/sdk/as;

    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    :cond_13
    sget-object v0, Lcom/unionpay/sdk/as;->a:Lcom/unionpay/sdk/as;

    return-object v0

    :catchall_16
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/unionpay/sdk/as;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/Object;IZ)V
    .registers 9

    invoke-direct/range {p0 .. p8}, Lcom/unionpay/sdk/as;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/Object;IZ)V

    return-void
.end method

.method private final declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/Object;IZ)V
    .registers 14

    monitor-enter p0

    if-nez p8, :cond_7

    :try_start_3
    invoke-static {p5}, Lcom/unionpay/sdk/as;->a([B)[B

    move-result-object p5

    :cond_7
    const-string v0, "Gzipped post size is: %d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    array-length v3, p5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unionpay/sdk/al;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unionpay/sdk/as;->b:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->reset()V

    iget-object v0, p0, Lcom/unionpay/sdk/as;->b:Ljava/util/zip/CRC32;

    invoke-virtual {v0, p5}, Ljava/util/zip/CRC32;->update([B)V

    if-nez p7, :cond_85

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?crc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/unionpay/sdk/as;->b:Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_48
    invoke-static {p3, p2, v0, p4}, Lcom/unionpay/sdk/au;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/unionpay/sdk/au$e;

    move-result-object v1

    invoke-virtual {v1, v0, p5}, Lcom/unionpay/sdk/au$e;->a(Ljava/lang/String;[B)Lcom/unionpay/sdk/au$d;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sput-wide v2, Lcom/unionpay/sdk/ad;->f:J

    new-instance v1, Lcom/unionpay/sdk/aq;

    invoke-direct {v1}, Lcom/unionpay/sdk/aq;-><init>()V

    iget-object v2, v1, Lcom/unionpay/sdk/aq;->a:Landroid/os/Bundle;

    const-string v3, "statusCode"

    iget v4, v0, Lcom/unionpay/sdk/au$d;->a:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v2, v1, Lcom/unionpay/sdk/aq;->a:Landroid/os/Bundle;

    const-string v3, "responseMsg"

    iget-object v0, v0, Lcom/unionpay/sdk/au$d;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/unionpay/sdk/aq;->a:Landroid/os/Bundle;

    const-string v2, "action"

    sget-object v3, Lcom/unionpay/sdk/as;->e:Lcom/unionpay/sdk/ap;

    iget-object v3, v3, Lcom/unionpay/sdk/ap;->d:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p6, v1, Lcom/unionpay/sdk/aq;->b:Ljava/lang/Object;

    iput p7, v1, Lcom/unionpay/sdk/aq;->c:I

    invoke-static {}, Lcom/unionpay/sdk/ai;->a()Lcom/unionpay/sdk/OttoBus;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/unionpay/sdk/OttoBus;->post(Ljava/lang/Object;)V
    :try_end_83
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_83} :catch_aa
    .catchall {:try_start_3 .. :try_end_83} :catchall_a7

    :goto_83
    monitor-exit p0

    return-void

    :cond_85
    :try_start_85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?crc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/unionpay/sdk/as;->b:Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_a5
    .catch Ljava/lang/Throwable; {:try_start_85 .. :try_end_a5} :catch_aa
    .catchall {:try_start_85 .. :try_end_a5} :catchall_a7

    move-result-object v0

    goto :goto_48

    :catchall_a7
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_aa
    move-exception v0

    goto :goto_83
.end method

.method private static a([B)[B
    .registers 6

    new-instance v0, Ljava/util/zip/Deflater;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Ljava/util/zip/Deflater;-><init>(I)V

    invoke-virtual {v0, p0}, Ljava/util/zip/Deflater;->setInput([B)V

    const/4 v2, 0x0

    :try_start_b
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    array-length v3, p0

    invoke-direct {v1, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_11
    .catchall {:try_start_b .. :try_end_11} :catchall_63

    :try_start_11
    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finish()V

    const/16 v2, 0x400

    new-array v2, v2, [B

    :goto_18
    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finished()Z

    move-result v3

    if-nez v3, :cond_2e

    invoke-virtual {v0, v2}, Ljava/util/zip/Deflater;->deflate([B)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_26
    .catchall {:try_start_11 .. :try_end_26} :catchall_27

    goto :goto_18

    :catchall_27
    move-exception v0

    :goto_28
    if-eqz v1, :cond_2d

    :try_start_2a
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2d} :catch_61

    :cond_2d
    :goto_2d
    throw v0

    :cond_2e
    :try_start_2e
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_31} :catch_5f

    :goto_31
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Original: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unionpay/sdk/al;->a(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Compressed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unionpay/sdk/al;->a(Ljava/lang/String;)V

    return-object v0

    :catch_5f
    move-exception v0

    goto :goto_31

    :catch_61
    move-exception v1

    goto :goto_2d

    :catchall_63
    move-exception v0

    move-object v1, v2

    goto :goto_28
.end method

.method static synthetic b()Lcom/unionpay/sdk/ap;
    .registers 1

    sget-object v0, Lcom/unionpay/sdk/as;->e:Lcom/unionpay/sdk/ap;

    return-object v0
.end method

.method static synthetic c()V
    .registers 2

    const/4 v1, 0x0

    new-instance v0, Lcom/unionpay/sdk/aq;

    invoke-direct {v0}, Lcom/unionpay/sdk/aq;-><init>()V

    iput-object v1, v0, Lcom/unionpay/sdk/aq;->a:Landroid/os/Bundle;

    iput-object v1, v0, Lcom/unionpay/sdk/aq;->b:Ljava/lang/Object;

    invoke-static {}, Lcom/unionpay/sdk/ai;->a()Lcom/unionpay/sdk/OttoBus;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/unionpay/sdk/OttoBus;->post(Ljava/lang/Object;)V

    return-void
.end method

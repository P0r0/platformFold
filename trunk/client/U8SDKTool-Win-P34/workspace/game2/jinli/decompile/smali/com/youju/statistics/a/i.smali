.class public Lcom/youju/statistics/a/i;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([B)[B
    .registers 11

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v0, 0x0

    const/4 v6, 0x0

    if-eqz p0, :cond_a

    array-length v1, p0

    if-nez v1, :cond_b

    :cond_a
    :goto_a
    return-object v0

    :cond_b
    :try_start_b
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_10} :catch_63
    .catchall {:try_start_b .. :try_end_10} :catchall_4d

    :try_start_10
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v2, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v2, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_1a} :catch_67
    .catchall {:try_start_10 .. :try_end_1a} :catchall_5d

    const/16 v1, 0x2800

    :try_start_1c
    new-array v1, v1, [B

    :goto_1e
    invoke-virtual {v2, v1}, Ljava/util/zip/GZIPInputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_3a

    const/4 v5, 0x0

    invoke-virtual {v3, v1, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_29} :catch_2a
    .catchall {:try_start_1c .. :try_end_29} :catchall_61

    goto :goto_1e

    :catch_2a
    move-exception v1

    :goto_2b
    :try_start_2b
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_61

    new-array v1, v9, [Ljava/io/Closeable;

    aput-object v3, v1, v6

    aput-object v2, v1, v7

    aput-object v2, v1, v8

    invoke-static {v1}, Lcom/youju/statistics/a/n;->a([Ljava/io/Closeable;)V

    goto :goto_a

    :cond_3a
    :try_start_3a
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->flush()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_41} :catch_2a
    .catchall {:try_start_3a .. :try_end_41} :catchall_61

    new-array v1, v9, [Ljava/io/Closeable;

    aput-object v3, v1, v6

    aput-object v2, v1, v7

    aput-object v2, v1, v8

    invoke-static {v1}, Lcom/youju/statistics/a/n;->a([Ljava/io/Closeable;)V

    goto :goto_a

    :catchall_4d
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v0, v1

    :goto_51
    new-array v1, v9, [Ljava/io/Closeable;

    aput-object v3, v1, v6

    aput-object v2, v1, v7

    aput-object v2, v1, v8

    invoke-static {v1}, Lcom/youju/statistics/a/n;->a([Ljava/io/Closeable;)V

    throw v0

    :catchall_5d
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_51

    :catchall_61
    move-exception v0

    goto :goto_51

    :catch_63
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    goto :goto_2b

    :catch_67
    move-exception v1

    move-object v2, v0

    goto :goto_2b
.end method

.method public static b([B)[B
    .registers 9

    const/4 v0, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    if-eqz p0, :cond_9

    array-length v1, p0

    if-nez v1, :cond_a

    :cond_9
    :goto_9
    return-object v0

    :cond_a
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_f
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v2, v3}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_14} :catch_2a
    .catchall {:try_start_f .. :try_end_14} :catchall_39

    const/4 v1, 0x0

    :try_start_15
    array-length v4, p0

    invoke-virtual {v2, p0, v1, v4}, Ljava/util/zip/GZIPOutputStream;->write([BII)V

    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->finish()V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_1f} :catch_48
    .catchall {:try_start_15 .. :try_end_1f} :catchall_46

    move-result-object v0

    new-array v1, v7, [Ljava/io/Closeable;

    aput-object v2, v1, v5

    aput-object v3, v1, v6

    invoke-static {v1}, Lcom/youju/statistics/a/n;->a([Ljava/io/Closeable;)V

    goto :goto_9

    :catch_2a
    move-exception v1

    move-object v2, v0

    :goto_2c
    :try_start_2c
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_46

    new-array v1, v7, [Ljava/io/Closeable;

    aput-object v2, v1, v5

    aput-object v3, v1, v6

    invoke-static {v1}, Lcom/youju/statistics/a/n;->a([Ljava/io/Closeable;)V

    goto :goto_9

    :catchall_39
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_3c
    new-array v1, v7, [Ljava/io/Closeable;

    aput-object v2, v1, v5

    aput-object v3, v1, v6

    invoke-static {v1}, Lcom/youju/statistics/a/n;->a([Ljava/io/Closeable;)V

    throw v0

    :catchall_46
    move-exception v0

    goto :goto_3c

    :catch_48
    move-exception v1

    goto :goto_2c
.end method

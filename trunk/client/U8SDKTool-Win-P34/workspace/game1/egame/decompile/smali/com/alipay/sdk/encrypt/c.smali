.class public final Lcom/alipay/sdk/encrypt/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([B)[B
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 11
    .line 17
    :try_start_1
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_53

    .line 18
    :try_start_6
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_57

    .line 19
    :try_start_b
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v1, v3}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_5b

    .line 20
    const/16 v0, 0x1000

    :try_start_12
    new-array v0, v0, [B

    .line 22
    :goto_14
    invoke-virtual {v4, v0}, Ljava/io/ByteArrayInputStream;->read([B)I

    move-result v2

    const/4 v5, -0x1

    if-eq v2, v5, :cond_33

    .line 23
    const/4 v5, 0x0

    invoke-virtual {v1, v0, v5, v2}, Ljava/util/zip/GZIPOutputStream;->write([BII)V
    :try_end_1f
    .catchall {:try_start_12 .. :try_end_1f} :catchall_20

    goto :goto_14

    .line 29
    :catchall_20
    move-exception v0

    move-object v2, v3

    move-object v3, v4

    :goto_23
    if-eqz v3, :cond_28

    .line 31
    :try_start_25
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_28} :catch_4d

    .line 35
    :cond_28
    :goto_28
    if-eqz v2, :cond_2d

    .line 37
    :try_start_2a
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2d} :catch_4f

    .line 41
    :cond_2d
    :goto_2d
    if-eqz v1, :cond_32

    .line 43
    :try_start_2f
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_32} :catch_51

    .line 45
    :cond_32
    :goto_32
    throw v0

    .line 25
    :cond_33
    :try_start_33
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->flush()V

    .line 26
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 27
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_3c
    .catchall {:try_start_33 .. :try_end_3c} :catchall_20

    move-result-object v0

    .line 29
    :try_start_3d
    invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_40} :catch_47

    .line 35
    :goto_40
    :try_start_40
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_43} :catch_49

    .line 41
    :goto_43
    :try_start_43
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_46} :catch_4b

    .line 48
    :goto_46
    return-object v0

    :catch_47
    move-exception v2

    goto :goto_40

    :catch_49
    move-exception v2

    goto :goto_43

    .line 45
    :catch_4b
    move-exception v1

    goto :goto_46

    :catch_4d
    move-exception v3

    goto :goto_28

    :catch_4f
    move-exception v2

    goto :goto_2d

    :catch_51
    move-exception v1

    goto :goto_32

    .line 29
    :catchall_53
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    goto :goto_23

    :catchall_57
    move-exception v0

    move-object v1, v2

    move-object v3, v4

    goto :goto_23

    :catchall_5b
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    goto :goto_23
.end method

.method public static b([B)[B
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 52
    .line 58
    :try_start_1
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_4c

    .line 59
    :try_start_6
    new-instance v1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v1, v4}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_50

    .line 60
    const/16 v0, 0x1000

    :try_start_d
    new-array v0, v0, [B

    .line 62
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_14
    .catchall {:try_start_d .. :try_end_14} :catchall_54

    .line 63
    :goto_14
    const/4 v2, 0x0

    :try_start_15
    array-length v5, v0

    invoke-virtual {v1, v0, v2, v5}, Ljava/util/zip/GZIPInputStream;->read([BII)I

    move-result v2

    const/4 v5, -0x1

    if-eq v2, v5, :cond_2f

    .line 64
    const/4 v5, 0x0

    invoke-virtual {v3, v0, v5, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_21
    .catchall {:try_start_15 .. :try_end_21} :catchall_22

    goto :goto_14

    .line 69
    :catchall_22
    move-exception v0

    move-object v2, v3

    move-object v3, v4

    .line 70
    :goto_25
    :try_start_25
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_28} :catch_46

    .line 74
    :goto_28
    :try_start_28
    invoke-virtual {v1}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_2b} :catch_48

    .line 78
    :goto_2b
    :try_start_2b
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2e} :catch_4a

    .line 80
    :goto_2e
    throw v0

    .line 66
    :cond_2f
    :try_start_2f
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 67
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_35
    .catchall {:try_start_2f .. :try_end_35} :catchall_22

    move-result-object v0

    .line 70
    :try_start_36
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_39} :catch_40

    .line 74
    :goto_39
    :try_start_39
    invoke-virtual {v1}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_3c} :catch_42

    .line 78
    :goto_3c
    :try_start_3c
    invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_3f} :catch_44

    .line 82
    :goto_3f
    return-object v0

    :catch_40
    move-exception v2

    goto :goto_39

    :catch_42
    move-exception v1

    goto :goto_3c

    .line 81
    :catch_44
    move-exception v1

    goto :goto_3f

    :catch_46
    move-exception v2

    goto :goto_28

    :catch_48
    move-exception v1

    goto :goto_2b

    :catch_4a
    move-exception v1

    goto :goto_2e

    .line 69
    :catchall_4c
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    goto :goto_25

    :catchall_50
    move-exception v0

    move-object v1, v2

    move-object v3, v4

    goto :goto_25

    :catchall_54
    move-exception v0

    move-object v3, v4

    goto :goto_25
.end method

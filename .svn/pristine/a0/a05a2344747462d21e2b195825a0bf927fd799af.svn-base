.class public Lcom/baidu/android/pushservice/message/f;
.super Lcom/baidu/android/pushservice/message/d;


# instance fields
.field private b:Lcom/baidu/android/pushservice/util/h;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/baidu/android/pushservice/message/d;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private a(JI)[B
    .registers 11

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Lcom/baidu/android/pushservice/util/i;

    invoke-direct {v2, v1}, Lcom/baidu/android/pushservice/util/i;-><init>(Ljava/io/OutputStream;)V

    :try_start_a
    invoke-virtual {v2, p1, p2}, Lcom/baidu/android/pushservice/util/i;->a(J)V

    invoke-virtual {v2, p3}, Lcom/baidu/android/pushservice/util/i;->b(I)V

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcom/baidu/android/pushservice/util/i;->b(I)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_17} :catch_5b
    .catchall {:try_start_a .. :try_end_17} :catchall_bc

    move-result-object v0

    :try_start_18
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1b} :catch_1f

    :goto_1b
    :try_start_1b
    invoke-virtual {v2}, Lcom/baidu/android/pushservice/util/i;->a()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1e} :catch_3d

    :goto_1e
    return-object v0

    :catch_1f
    move-exception v1

    const-string v3, "MessageHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b

    :catch_3d
    move-exception v1

    const-string v2, "MessageHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1e

    :catch_5b
    move-exception v0

    :try_start_5c
    const-string v3, "MessageHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_78
    .catchall {:try_start_5c .. :try_end_78} :catchall_bc

    :try_start_78
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7b
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_7b} :catch_80

    :goto_7b
    :try_start_7b
    invoke-virtual {v2}, Lcom/baidu/android/pushservice/util/i;->a()V
    :try_end_7e
    .catch Ljava/io/IOException; {:try_start_7b .. :try_end_7e} :catch_9e

    :goto_7e
    const/4 v0, 0x0

    goto :goto_1e

    :catch_80
    move-exception v0

    const-string v1, "MessageHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7b

    :catch_9e
    move-exception v0

    const-string v1, "MessageHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7e

    :catchall_bc
    move-exception v0

    :try_start_bd
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_c0
    .catch Ljava/io/IOException; {:try_start_bd .. :try_end_c0} :catch_c4

    :goto_c0
    :try_start_c0
    invoke-virtual {v2}, Lcom/baidu/android/pushservice/util/i;->a()V
    :try_end_c3
    .catch Ljava/io/IOException; {:try_start_c0 .. :try_end_c3} :catch_e2

    :goto_c3
    throw v0

    :catch_c4
    move-exception v1

    const-string v3, "MessageHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c0

    :catch_e2
    move-exception v1

    const-string v2, "MessageHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c3
.end method

.method private a(Ljava/lang/String;I)[B
    .registers 8

    const/4 v4, 0x0

    new-array v0, p2, [B

    if-eqz p1, :cond_12

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v2, v0

    array-length v3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_12
    return-object v0
.end method

.method private a(S[B)[B
    .registers 9

    const/4 v0, 0x0

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v3, Lcom/baidu/android/pushservice/util/i;

    invoke-direct {v3, v2}, Lcom/baidu/android/pushservice/util/i;-><init>(Ljava/io/OutputStream;)V

    if-eqz p2, :cond_147

    array-length v0, p2

    move v1, v0

    :goto_f
    :try_start_f
    invoke-virtual {v3, p1}, Lcom/baidu/android/pushservice/util/i;->a(I)V

    sget-object v0, Lcom/baidu/android/pushservice/message/g;->f:Lcom/baidu/android/pushservice/message/g;

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/message/g;->a()I

    move-result v0

    if-eq p1, v0, :cond_58

    sget-object v0, Lcom/baidu/android/pushservice/message/g;->g:Lcom/baidu/android/pushservice/message/g;

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/message/g;->a()I

    move-result v0

    if-eq p1, v0, :cond_58

    invoke-static {}, Lcom/baidu/android/pushservice/b;->a()S

    move-result v0

    invoke-virtual {v3, v0}, Lcom/baidu/android/pushservice/util/i;->a(I)V

    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Lcom/baidu/android/pushservice/util/i;->b(I)V

    iget-object v0, p0, Lcom/baidu/android/pushservice/message/f;->a:Landroid/content/Context;

    iget-object v4, p0, Lcom/baidu/android/pushservice/message/f;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/baidu/android/pushservice/util/q;->e(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_63

    const-string v0, "BaiduApp"

    :goto_3d
    const/16 v4, 0x10

    invoke-direct {p0, v0, v4}, Lcom/baidu/android/pushservice/message/f;->a(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/baidu/android/pushservice/util/i;->a([B)V

    const v0, -0x48f6c6c

    invoke-virtual {v3, v0}, Lcom/baidu/android/pushservice/util/i;->b(I)V

    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Lcom/baidu/android/pushservice/util/i;->b(I)V

    invoke-virtual {v3, v1}, Lcom/baidu/android/pushservice/util/i;->b(I)V

    if-eqz p2, :cond_58

    invoke-virtual {v3, p2}, Lcom/baidu/android/pushservice/util/i;->a([B)V

    :cond_58
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_5b} :catch_a2
    .catchall {:try_start_f .. :try_end_5b} :catchall_103

    move-result-object v0

    :try_start_5c
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_5f} :catch_66

    :goto_5f
    :try_start_5f
    invoke-virtual {v3}, Lcom/baidu/android/pushservice/util/i;->a()V
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_62} :catch_84

    :goto_62
    return-object v0

    :cond_63
    :try_start_63
    const-string v0, "DevApp"
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_65} :catch_a2
    .catchall {:try_start_63 .. :try_end_65} :catchall_103

    goto :goto_3d

    :catch_66
    move-exception v1

    const-string v2, "MessageHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5f

    :catch_84
    move-exception v1

    const-string v2, "MessageHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_62

    :catch_a2
    move-exception v0

    :try_start_a3
    const-string v1, "MessageHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_bf
    .catchall {:try_start_a3 .. :try_end_bf} :catchall_103

    :try_start_bf
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_c2
    .catch Ljava/io/IOException; {:try_start_bf .. :try_end_c2} :catch_c7

    :goto_c2
    :try_start_c2
    invoke-virtual {v3}, Lcom/baidu/android/pushservice/util/i;->a()V
    :try_end_c5
    .catch Ljava/io/IOException; {:try_start_c2 .. :try_end_c5} :catch_e5

    :goto_c5
    const/4 v0, 0x0

    goto :goto_62

    :catch_c7
    move-exception v0

    const-string v1, "MessageHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c2

    :catch_e5
    move-exception v0

    const-string v1, "MessageHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c5

    :catchall_103
    move-exception v0

    :try_start_104
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_107
    .catch Ljava/io/IOException; {:try_start_104 .. :try_end_107} :catch_10b

    :goto_107
    :try_start_107
    invoke-virtual {v3}, Lcom/baidu/android/pushservice/util/i;->a()V
    :try_end_10a
    .catch Ljava/io/IOException; {:try_start_107 .. :try_end_10a} :catch_129

    :goto_10a
    throw v0

    :catch_10b
    move-exception v1

    const-string v2, "MessageHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_107

    :catch_129
    move-exception v1

    const-string v2, "MessageHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10a

    :cond_147
    move v1, v0

    goto/16 :goto_f
.end method

.method private d()Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/baidu/android/pushservice/message/f;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/android/pushservice/util/q;->t(Landroid/content/Context;)I

    move-result v1

    packed-switch v1, :pswitch_data_36

    :goto_a
    return-object v0

    :pswitch_b
    const-string v0, "wifi"

    goto :goto_a

    :pswitch_e
    const-string v0, "2g"

    goto :goto_a

    :pswitch_11
    const-string v0, "3g"

    goto :goto_a

    :pswitch_14
    const-string v0, "4g"
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_16} :catch_17

    goto :goto_a

    :catch_17
    move-exception v1

    const-string v2, "MessageHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    nop

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_b
        :pswitch_e
        :pswitch_11
        :pswitch_14
    .end packed-switch
.end method

.method private e()Ljava/lang/String;
    .registers 6

    const/4 v1, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/baidu/android/pushservice/message/f;->a:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "_"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2d} :catch_2f

    move-result-object v0

    :goto_2e
    return-object v0

    :catch_2f
    move-exception v0

    const-string v2, "MessageHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_2e
.end method

.method private f()Ljava/lang/String;
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/baidu/android/pushservice/message/f;->a:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5e

    const-string v1, "46000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    const-string v1, "46002"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    const-string v1, "46007"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    :cond_28
    const-string v0, "cm"

    :goto_2a
    return-object v0

    :cond_2b
    const-string v1, "46001"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    const-string v0, "uni"

    goto :goto_2a

    :cond_36
    const-string v1, "46003"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5e

    const-string v0, "ct"
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_40} :catch_41

    goto :goto_2a

    :catch_41
    move-exception v0

    const-string v1, "MessageHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5e
    const/4 v0, 0x0

    goto :goto_2a
.end method

.method private g()Ljava/lang/String;
    .registers 6

    const/4 v1, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/baidu/android/pushservice/message/f;->a:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_e} :catch_10

    move-result-object v0

    :goto_f
    return-object v0

    :catch_10
    move-exception v0

    const-string v2, "MessageHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_f
.end method

.method private h()Ljava/lang/String;
    .registers 6

    const/4 v1, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/baidu/android/pushservice/message/f;->a:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_12} :catch_14

    move-result-object v0

    :goto_13
    return-object v0

    :catch_14
    move-exception v0

    const-string v2, "MessageHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_13
.end method


# virtual methods
.method public a([BI)Lcom/baidu/android/pushservice/message/e;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x5000

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v1, Lcom/baidu/android/pushservice/util/h;

    invoke-direct {v1, v4}, Lcom/baidu/android/pushservice/util/h;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lcom/baidu/android/pushservice/message/f;->b:Lcom/baidu/android/pushservice/util/h;

    iget-object v1, p0, Lcom/baidu/android/pushservice/message/f;->b:Lcom/baidu/android/pushservice/util/h;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/util/h;->c()S

    move-result v2

    new-instance v3, Lcom/baidu/android/pushservice/message/e;

    invoke-direct {v3}, Lcom/baidu/android/pushservice/message/e;-><init>()V

    iput-short v2, v3, Lcom/baidu/android/pushservice/message/e;->a:S

    sget-object v1, Lcom/baidu/android/pushservice/message/g;->g:Lcom/baidu/android/pushservice/message/g;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/message/g;->a()I

    move-result v1

    if-eq v2, v1, :cond_2b

    sget-object v1, Lcom/baidu/android/pushservice/message/g;->f:Lcom/baidu/android/pushservice/message/g;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/message/g;->a()I

    move-result v1

    if-ne v2, v1, :cond_53

    :cond_2b
    const-string v0, "MessageHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readMessage tiny heart beat from server, msgType:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/h/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_48

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    :cond_48
    iget-object v0, p0, Lcom/baidu/android/pushservice/message/f;->b:Lcom/baidu/android/pushservice/util/h;

    if-eqz v0, :cond_51

    iget-object v0, p0, Lcom/baidu/android/pushservice/message/f;->b:Lcom/baidu/android/pushservice/util/h;

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/util/h;->a()V

    :cond_51
    move-object v0, v3

    :goto_52
    return-object v0

    :cond_53
    iget-object v1, p0, Lcom/baidu/android/pushservice/message/f;->b:Lcom/baidu/android/pushservice/util/h;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/util/h;->c()S

    move-result v5

    iget-object v1, p0, Lcom/baidu/android/pushservice/message/f;->b:Lcom/baidu/android/pushservice/util/h;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/util/h;->b()I

    move-result v6

    const/16 v1, 0x10

    new-array v1, v1, [B

    iget-object v7, p0, Lcom/baidu/android/pushservice/message/f;->b:Lcom/baidu/android/pushservice/util/h;

    invoke-virtual {v7, v1}, Lcom/baidu/android/pushservice/util/h;->a([B)V

    iget-object v1, p0, Lcom/baidu/android/pushservice/message/f;->b:Lcom/baidu/android/pushservice/util/h;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/util/h;->b()I

    move-result v7

    iget-object v1, p0, Lcom/baidu/android/pushservice/message/f;->b:Lcom/baidu/android/pushservice/util/h;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/util/h;->b()I

    move-result v8

    iget-object v1, p0, Lcom/baidu/android/pushservice/message/f;->b:Lcom/baidu/android/pushservice/util/h;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/util/h;->b()I

    move-result v1

    const-string v9, "MessageHandler"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "readMessage nshead, msgId:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v10, " magicNum:"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " length:"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " version ="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " logId ="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " reserved = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Lcom/baidu/android/pushservice/h/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    if-lez v1, :cond_e9

    if-le v1, v0, :cond_e7

    :goto_cd
    new-array v0, v0, [B

    iget-object v1, p0, Lcom/baidu/android/pushservice/message/f;->b:Lcom/baidu/android/pushservice/util/h;

    invoke-virtual {v1, v0}, Lcom/baidu/android/pushservice/util/h;->a([B)V

    :goto_d4
    iput-object v0, v3, Lcom/baidu/android/pushservice/message/e;->d:[B

    if-eqz v4, :cond_db

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    :cond_db
    iget-object v0, p0, Lcom/baidu/android/pushservice/message/f;->b:Lcom/baidu/android/pushservice/util/h;

    if-eqz v0, :cond_e4

    iget-object v0, p0, Lcom/baidu/android/pushservice/message/f;->b:Lcom/baidu/android/pushservice/util/h;

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/util/h;->a()V

    :cond_e4
    move-object v0, v3

    goto/16 :goto_52

    :cond_e7
    move v0, v1

    goto :goto_cd

    :cond_e9
    move-object v0, v2

    goto :goto_d4
.end method

.method public a(I)V
    .registers 10

    const/4 v7, 0x1

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const/4 v0, 0x0

    :try_start_7
    iget-object v2, p0, Lcom/baidu/android/pushservice/message/f;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/baidu/android/pushservice/al;->a(Landroid/content/Context;)Lcom/baidu/android/pushservice/al;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/android/pushservice/al;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/android/pushservice/j/b;->a([B)[B

    move-result-object v2

    const-string v3, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQC/7VlVn9LIrZ71PL2RZMbK/Yxc\r\ndb046w/cXVylxS7ouPY06namZUFVhdbUnNRJzmGUZlzs3jUbvMO3l+4c9cw/n9aQ\r\nrm/brgaRDeZbeSrQYRZv60xzJIimuFFxsRM+ku6/dAyYmXiQXlRbgvFQ0MsVng4j\r\nv+cXhtTis2Kbwb8mQwIDAQAB\r\n"

    invoke-static {v2, v3}, Lcom/baidu/android/pushservice/j/f;->b([BLjava/lang/String;)[B

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    const-string v2, "channel_token"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "channel_id"

    iget-object v3, p0, Lcom/baidu/android/pushservice/message/f;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/baidu/android/pushservice/al;->a(Landroid/content/Context;)Lcom/baidu/android/pushservice/al;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/android/pushservice/al;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "period"

    const/16 v3, 0x708

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "channel_type"

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "tinyheart"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "connect_version"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "tiny_msghead"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-eqz v3, :cond_69

    const-string v4, ""

    if-eq v3, v4, :cond_69

    const-string v4, "model"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_69
    invoke-direct {p0}, Lcom/baidu/android/pushservice/message/f;->f()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_78

    const-string v4, ""

    if-eq v3, v4, :cond_78

    const-string v4, "carrier"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_78
    invoke-direct {p0}, Lcom/baidu/android/pushservice/message/f;->e()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_87

    const-string v4, ""

    if-eq v3, v4, :cond_87

    const-string v4, "resolution"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_87
    invoke-direct {p0}, Lcom/baidu/android/pushservice/message/f;->d()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_96

    const-string v4, ""

    if-eq v3, v4, :cond_96

    const-string v4, "network"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_96
    invoke-direct {p0}, Lcom/baidu/android/pushservice/message/f;->h()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_a5

    const-string v4, ""

    if-eq v3, v4, :cond_a5

    const-string v4, "mac"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_a5
    iget-object v3, p0, Lcom/baidu/android/pushservice/message/f;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/baidu/android/pushservice/j/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_b6

    const-string v4, ""

    if-eq v3, v4, :cond_b6

    const-string v4, "cuid"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_b6
    invoke-direct {p0}, Lcom/baidu/android/pushservice/message/f;->g()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_c5

    const-string v4, ""

    if-eq v3, v4, :cond_c5

    const-string v4, "imsi"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_c5
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, "MessageHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "jsonDevInfo = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "2011121211143000"

    const-string v5, "9876543210123456"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v4, v5, v2}, Lcom/baidu/android/pushservice/j/a;->a(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v2

    const-string v4, "utf-8"

    invoke-static {v2, v4}, Lcom/baidu/android/pushservice/j/b;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "MessageHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "devinfo = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "MessageHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "devinfolength = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "devinfo"

    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "devinfolength"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_13c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_13c} :catch_15c

    move-result-object v0

    :goto_13d
    const-string v1, "MessageHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSessionOpened, send handshake msg :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/android/pushservice/h/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_17a

    :goto_15b
    return-void

    :catch_15c
    move-exception v1

    const-string v2, "MessageHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13d

    :cond_17a
    sget-object v1, Lcom/baidu/android/pushservice/message/g;->b:Lcom/baidu/android/pushservice/message/g;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/message/g;->a()I

    move-result v1

    int-to-short v1, v1

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/baidu/android/pushservice/message/f;->a(S[B)[B

    move-result-object v0

    new-instance v1, Lcom/baidu/android/pushservice/message/e;

    invoke-direct {v1}, Lcom/baidu/android/pushservice/message/e;-><init>()V

    iput-object v0, v1, Lcom/baidu/android/pushservice/message/e;->d:[B

    iput-boolean v7, v1, Lcom/baidu/android/pushservice/message/e;->e:Z

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/baidu/android/pushservice/message/e;->a(Z)V

    invoke-virtual {p0, v1}, Lcom/baidu/android/pushservice/message/f;->a(Lcom/baidu/android/pushservice/message/e;)V

    goto :goto_15b
.end method

.method public b()V
    .registers 1

    return-void
.end method

.method public b(Lcom/baidu/android/pushservice/message/e;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p1, :cond_3

    :cond_2
    :goto_2
    return-void

    :cond_3
    new-instance v0, Lcom/baidu/android/pushservice/message/a;

    iget-object v1, p0, Lcom/baidu/android/pushservice/message/f;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/baidu/android/pushservice/message/a;-><init>(Landroid/content/Context;)V

    iget-short v1, p1, Lcom/baidu/android/pushservice/message/e;->a:S

    invoke-static {v1}, Lcom/baidu/android/pushservice/message/g;->a(I)Lcom/baidu/android/pushservice/message/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/android/pushservice/message/a;->a(Lcom/baidu/android/pushservice/message/g;)Lcom/baidu/android/pushservice/message/c;

    move-result-object v2

    const/4 v0, 0x0

    if-eqz v2, :cond_1b

    invoke-virtual {v2, p1}, Lcom/baidu/android/pushservice/message/c;->a(Lcom/baidu/android/pushservice/message/e;)I

    move-result v0

    :cond_1b
    iget-boolean v2, p1, Lcom/baidu/android/pushservice/message/e;->f:Z

    if-eqz v2, :cond_2

    new-instance v2, Lcom/baidu/android/pushservice/message/e;

    invoke-direct {v2}, Lcom/baidu/android/pushservice/message/e;-><init>()V

    sget-object v3, Lcom/baidu/android/pushservice/message/g;->e:Lcom/baidu/android/pushservice/message/g;

    if-ne v1, v3, :cond_6f

    const-string v1, "MessageHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "message need reply , send msg msgId :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/baidu/android/pushservice/message/e;->d()Lcom/baidu/android/pushservice/message/k;

    move-result-object v4

    invoke-virtual {v4}, Lcom/baidu/android/pushservice/message/k;->b()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ret: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/baidu/android/pushservice/message/e;->d()Lcom/baidu/android/pushservice/message/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/message/k;->b()J

    move-result-wide v4

    invoke-direct {p0, v4, v5, v0}, Lcom/baidu/android/pushservice/message/f;->a(JI)[B

    move-result-object v0

    sget-object v1, Lcom/baidu/android/pushservice/message/g;->e:Lcom/baidu/android/pushservice/message/g;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/message/g;->a()I

    move-result v1

    int-to-short v1, v1

    invoke-direct {p0, v1, v0}, Lcom/baidu/android/pushservice/message/f;->a(S[B)[B

    move-result-object v0

    iput-object v0, v2, Lcom/baidu/android/pushservice/message/e;->d:[B

    :cond_6b
    :goto_6b
    invoke-virtual {p0, v2}, Lcom/baidu/android/pushservice/message/f;->a(Lcom/baidu/android/pushservice/message/e;)V

    goto :goto_2

    :cond_6f
    sget-object v0, Lcom/baidu/android/pushservice/message/g;->g:Lcom/baidu/android/pushservice/message/g;

    if-eq v1, v0, :cond_77

    sget-object v0, Lcom/baidu/android/pushservice/message/g;->c:Lcom/baidu/android/pushservice/message/g;

    if-ne v1, v0, :cond_6b

    :cond_77
    const-string v0, "MessageHandler"

    const-string v1, "handleServerHeartbeatMsg, send handshake return msg "

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/h/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-short v0, p1, Lcom/baidu/android/pushservice/message/e;->a:S

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/baidu/android/pushservice/message/f;->a(S[B)[B

    move-result-object v0

    iput-object v0, v2, Lcom/baidu/android/pushservice/message/e;->d:[B

    goto :goto_6b
.end method

.method public c()V
    .registers 4

    const/4 v2, 0x1

    const-string v0, "MessageHandler"

    const-string v1, "sendHeartbeatMessage "

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/h/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/baidu/android/pushservice/message/g;->f:Lcom/baidu/android/pushservice/message/g;

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/message/g;->a()I

    move-result v0

    int-to-short v0, v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/baidu/android/pushservice/message/f;->a(S[B)[B

    move-result-object v0

    new-instance v1, Lcom/baidu/android/pushservice/message/e;

    invoke-direct {v1}, Lcom/baidu/android/pushservice/message/e;-><init>()V

    iput-object v0, v1, Lcom/baidu/android/pushservice/message/e;->d:[B

    iput-boolean v2, v1, Lcom/baidu/android/pushservice/message/e;->e:Z

    invoke-virtual {v1, v2}, Lcom/baidu/android/pushservice/message/e;->a(Z)V

    invoke-virtual {p0, v1}, Lcom/baidu/android/pushservice/message/f;->a(Lcom/baidu/android/pushservice/message/e;)V

    return-void
.end method

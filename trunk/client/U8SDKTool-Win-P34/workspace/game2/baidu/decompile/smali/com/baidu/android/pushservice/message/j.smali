.class public Lcom/baidu/android/pushservice/message/j;
.super Lcom/baidu/android/pushservice/message/c;


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field private c:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/baidu/android/pushservice/message/j;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/android/pushservice/message/j;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/baidu/android/pushservice/message/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/android/pushservice/message/j;->c:Landroid/content/Context;

    return-void
.end method

.method private a([B)Ljava/lang/String;
    .registers 5

    const/4 v1, 0x0

    if-eqz p1, :cond_6

    array-length v0, p1

    if-nez v0, :cond_9

    :cond_6
    const-string v0, ""

    :goto_8
    return-object v0

    :cond_9
    move v0, v1

    :goto_a
    array-length v2, p1

    if-ge v0, v2, :cond_1b

    aget-byte v2, p1, v0

    if-nez v2, :cond_18

    :goto_11
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1, v1, v0}, Ljava/lang/String;-><init>([BII)V

    move-object v0, v2

    goto :goto_8

    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_1b
    move v0, v1

    goto :goto_11
.end method


# virtual methods
.method public a(Lcom/baidu/android/pushservice/message/e;)I
    .registers 14

    const/4 v5, 0x4

    const/4 v1, 0x0

    const/4 v0, -0x1

    const/4 v2, 0x1

    iput-boolean v2, p1, Lcom/baidu/android/pushservice/message/e;->f:Z

    iget-object v2, p1, Lcom/baidu/android/pushservice/message/e;->d:[B

    if-nez v2, :cond_c

    move v5, v0

    :goto_b
    return v5

    :cond_c
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v4, Lcom/baidu/android/pushservice/util/h;

    invoke-direct {v4, v3}, Lcom/baidu/android/pushservice/util/h;-><init>(Ljava/io/InputStream;)V

    :try_start_16
    new-instance v11, Lcom/baidu/android/pushservice/message/k;

    invoke-direct {v11}, Lcom/baidu/android/pushservice/message/k;-><init>()V

    const/16 v6, 0x80

    new-array v6, v6, [B

    invoke-virtual {v4, v6}, Lcom/baidu/android/pushservice/util/h;->a([B)V

    invoke-direct {p0, v6}, Lcom/baidu/android/pushservice/message/j;->a([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6}, Lcom/baidu/android/pushservice/message/k;->a(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/baidu/android/pushservice/util/h;->d()J

    move-result-wide v6

    invoke-virtual {v11, v6, v7}, Lcom/baidu/android/pushservice/message/k;->a(J)V

    invoke-virtual {v4}, Lcom/baidu/android/pushservice/util/h;->b()I

    move-result v6

    invoke-virtual {v11, v6}, Lcom/baidu/android/pushservice/message/k;->a(I)V

    const/16 v6, 0x40

    new-array v6, v6, [B

    invoke-virtual {v4, v6}, Lcom/baidu/android/pushservice/util/h;->a([B)V

    invoke-virtual {v11, v6}, Lcom/baidu/android/pushservice/message/k;->a([B)V

    if-eqz v3, :cond_46

    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V

    :cond_46
    if-eqz v4, :cond_4b

    invoke-virtual {v4}, Lcom/baidu/android/pushservice/util/h;->a()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_4b} :catch_d7

    :cond_4b
    invoke-virtual {p1, v11}, Lcom/baidu/android/pushservice/message/e;->a(Lcom/baidu/android/pushservice/message/k;)V

    const/16 v3, 0xcc

    array-length v0, v2

    add-int/lit16 v0, v0, -0xcc

    if-lez v0, :cond_f9

    :goto_55
    new-array v4, v0, [B

    invoke-static {v2, v3, v4, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget-object v0, Lcom/baidu/android/pushservice/message/j;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "New MSG: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v11}, Lcom/baidu/android/pushservice/message/k;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/h/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "New MSG: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v11}, Lcom/baidu/android/pushservice/message/k;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/android/pushservice/message/j;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/util/q;->a(Ljava/lang/String;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/baidu/android/pushservice/message/j;->a:Landroid/content/Context;

    invoke-virtual {v11}, Lcom/baidu/android/pushservice/message/k;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/util/n;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_fc

    sget-object v0, Lcom/baidu/android/pushservice/message/j;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Message ID("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v11}, Lcom/baidu/android/pushservice/message/k;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") received duplicated, ack success to server directly."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/android/pushservice/message/j;->c:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/baidu/android/pushservice/h/b;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/baidu/android/pushservice/message/j;->a:Landroid/content/Context;

    invoke-virtual {v11}, Lcom/baidu/android/pushservice/message/k;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11}, Lcom/baidu/android/pushservice/message/k;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11}, Lcom/baidu/android/pushservice/message/k;->d()I

    move-result v3

    sget v6, Lcom/baidu/android/pushservice/i/m;->a:I

    invoke-static/range {v0 .. v6}, Lcom/baidu/android/pushservice/i/o;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I[BII)V

    goto/16 :goto_b

    :catch_d7
    move-exception v1

    sget-object v2, Lcom/baidu/android/pushservice/message/j;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/baidu/android/pushservice/message/j;->c:Landroid/content/Context;

    invoke-static {v2, v1, v3}, Lcom/baidu/android/pushservice/h/b;->b(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    move v5, v0

    goto/16 :goto_b

    :cond_f9
    move v0, v1

    goto/16 :goto_55

    :cond_fc
    invoke-virtual {v11}, Lcom/baidu/android/pushservice/message/k;->d()I

    move-result v0

    invoke-static {v0}, Lcom/baidu/android/pushservice/message/a/m;->a(I)Lcom/baidu/android/pushservice/message/a/m;

    move-result-object v0

    new-instance v1, Lcom/baidu/android/pushservice/message/a/l;

    iget-object v2, p0, Lcom/baidu/android/pushservice/message/j;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/baidu/android/pushservice/message/a/l;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/baidu/android/pushservice/message/a/l;->a(Lcom/baidu/android/pushservice/message/a/m;)Lcom/baidu/android/pushservice/message/a/c;

    move-result-object v5

    sget-object v1, Lcom/baidu/android/pushservice/message/j;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "message type is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/android/pushservice/message/j;->c:Landroid/content/Context;

    invoke-static {v1, v0, v2}, Lcom/baidu/android/pushservice/h/b;->c(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    if-eqz v5, :cond_169

    invoke-virtual {v11}, Lcom/baidu/android/pushservice/message/k;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11}, Lcom/baidu/android/pushservice/message/k;->c()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11}, Lcom/baidu/android/pushservice/message/k;->d()I

    move-result v8

    invoke-virtual {v11}, Lcom/baidu/android/pushservice/message/k;->e()[B

    move-result-object v9

    move-object v10, v4

    invoke-virtual/range {v5 .. v10}, Lcom/baidu/android/pushservice/message/a/c;->a(Ljava/lang/String;Ljava/lang/String;I[B[B)I

    move-result v5

    :goto_140
    sget v6, Lcom/baidu/android/pushservice/i/m;->a:I

    iget-object v0, p0, Lcom/baidu/android/pushservice/message/j;->a:Landroid/content/Context;

    invoke-virtual {v11}, Lcom/baidu/android/pushservice/message/k;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/c/d;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/baidu/android/pushservice/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/c/d;->a()Lcom/baidu/android/pushservice/c/c;

    move-result-object v0

    sget-object v1, Lcom/baidu/android/pushservice/c/c;->d:Lcom/baidu/android/pushservice/c/c;

    if-ne v0, v1, :cond_156

    sget v6, Lcom/baidu/android/pushservice/i/m;->b:I

    :cond_156
    iget-object v0, p0, Lcom/baidu/android/pushservice/message/j;->a:Landroid/content/Context;

    invoke-virtual {v11}, Lcom/baidu/android/pushservice/message/k;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11}, Lcom/baidu/android/pushservice/message/k;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11}, Lcom/baidu/android/pushservice/message/k;->d()I

    move-result v3

    invoke-static/range {v0 .. v6}, Lcom/baidu/android/pushservice/i/o;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I[BII)V

    goto/16 :goto_b

    :cond_169
    sget-object v0, Lcom/baidu/android/pushservice/message/j;->b:Ljava/lang/String;

    const-string v1, "message type invalid "

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/h/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x2

    goto :goto_140
.end method

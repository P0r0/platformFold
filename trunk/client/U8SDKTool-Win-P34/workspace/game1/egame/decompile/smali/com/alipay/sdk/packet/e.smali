.class public final Lcom/alipay/sdk/packet/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Z)V
    .registers 3

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-boolean p1, p0, Lcom/alipay/sdk/packet/e;->a:Z

    .line 42
    invoke-static {}, Lcom/alipay/sdk/util/i;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/sdk/packet/e;->b:Ljava/lang/String;

    .line 43
    return-void
.end method

.method private static a(Ljava/lang/String;)I
    .registers 2

    .prologue
    .line 200
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static a(I)Ljava/lang/String;
    .registers 6

    .prologue
    .line 196
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "%05d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)[B
    .registers 3

    .prologue
    .line 144
    invoke-static {p0, p1}, Lcom/alipay/sdk/encrypt/d;->a(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;[B)[B
    .registers 3

    .prologue
    .line 148
    invoke-static {p0, p1}, Lcom/alipay/sdk/encrypt/e;->a(Ljava/lang/String;[B)[B

    move-result-object v0

    return-object v0
.end method

.method private static varargs a([[B)[B
    .registers 11

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 156
    if-eqz p0, :cond_7

    array-length v1, p0

    if-nez v1, :cond_8

    .line 192
    :cond_7
    :goto_7
    return-object v0

    .line 164
    :cond_8
    :try_start_8
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_d} :catch_4b
    .catchall {:try_start_8 .. :try_end_d} :catchall_5b

    .line 165
    :try_start_d
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_12} :catch_7a
    .catchall {:try_start_d .. :try_end_12} :catchall_73

    .line 167
    :goto_12
    :try_start_12
    array-length v4, p0

    if-ge v3, v4, :cond_3b

    .line 168
    aget-object v4, p0, v3

    array-length v4, v4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    const-string v6, "%05d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v8

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 169
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->write([B)V

    .line 170
    aget-object v4, p0, v3

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->write([B)V

    .line 167
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 173
    :cond_3b
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 174
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_41} :catch_7d
    .catchall {:try_start_12 .. :try_end_41} :catchall_78

    move-result-object v0

    .line 178
    :try_start_42
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_45} :catch_6b

    .line 184
    :goto_45
    :try_start_45
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_48} :catch_49

    goto :goto_7

    .line 188
    :catch_49
    move-exception v1

    goto :goto_7

    .line 176
    :catch_4b
    move-exception v1

    move-object v1, v0

    move-object v2, v0

    :goto_4e
    if-eqz v2, :cond_53

    .line 180
    :try_start_50
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_53} :catch_6d

    .line 184
    :cond_53
    :goto_53
    if-eqz v1, :cond_7

    .line 186
    :try_start_55
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_58} :catch_59

    goto :goto_7

    .line 188
    :catch_59
    move-exception v1

    goto :goto_7

    .line 178
    :catchall_5b
    move-exception v1

    move-object v2, v0

    move-object v9, v0

    move-object v0, v1

    move-object v1, v9

    :goto_60
    if-eqz v2, :cond_65

    .line 180
    :try_start_62
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_65} :catch_6f

    .line 184
    :cond_65
    :goto_65
    if-eqz v1, :cond_6a

    .line 186
    :try_start_67
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_6a} :catch_71

    .line 188
    :cond_6a
    :goto_6a
    throw v0

    :catch_6b
    move-exception v2

    goto :goto_45

    :catch_6d
    move-exception v2

    goto :goto_53

    :catch_6f
    move-exception v2

    goto :goto_65

    :catch_71
    move-exception v1

    goto :goto_6a

    .line 178
    :catchall_73
    move-exception v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto :goto_60

    :catchall_78
    move-exception v0

    goto :goto_60

    .line 176
    :catch_7a
    move-exception v1

    move-object v1, v0

    goto :goto_4e

    :catch_7d
    move-exception v3

    goto :goto_4e
.end method

.method private static b(Ljava/lang/String;[B)[B
    .registers 3

    .prologue
    .line 152
    invoke-static {p0, p1}, Lcom/alipay/sdk/encrypt/e;->b(Ljava/lang/String;[B)[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/alipay/sdk/packet/c;)Lcom/alipay/sdk/packet/b;
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 94
    .line 99
    :try_start_1
    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v2, p1, Lcom/alipay/sdk/packet/c;->b:[B

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_8} :catch_5b
    .catchall {:try_start_1 .. :try_end_8} :catchall_68

    .line 101
    const/4 v2, 0x5

    :try_start_9
    new-array v2, v2, [B

    .line 102
    invoke-virtual {v1, v2}, Ljava/io/ByteArrayInputStream;->read([B)I

    .line 103
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 104
    new-array v3, v2, [B

    .line 105
    invoke-virtual {v1, v3}, Ljava/io/ByteArrayInputStream;->read([B)I

    .line 106
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_21} :catch_7c
    .catchall {:try_start_9 .. :try_end_21} :catchall_7a

    .line 108
    const/4 v3, 0x5

    :try_start_22
    new-array v3, v3, [B

    .line 109
    invoke-virtual {v1, v3}, Ljava/io/ByteArrayInputStream;->read([B)I

    .line 110
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 112
    if-lez v3, :cond_85

    .line 113
    new-array v3, v3, [B

    .line 114
    invoke-virtual {v1, v3}, Ljava/io/ByteArrayInputStream;->read([B)I

    .line 116
    iget-boolean v4, p0, Lcom/alipay/sdk/packet/e;->a:Z

    if-eqz v4, :cond_41

    .line 117
    iget-object v4, p0, Lcom/alipay/sdk/packet/e;->b:Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/alipay/sdk/encrypt/e;->b(Ljava/lang/String;[B)[B

    move-result-object v3

    .line 119
    :cond_41
    iget-boolean v4, p1, Lcom/alipay/sdk/packet/c;->a:Z

    if-eqz v4, :cond_83

    .line 120
    invoke-static {v3}, Lcom/alipay/sdk/encrypt/c;->b([B)[B

    move-result-object v3

    move-object v4, v3

    .line 122
    :goto_4a
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_4f} :catch_7f
    .catchall {:try_start_22 .. :try_end_4f} :catchall_7a

    .line 127
    :goto_4f
    :try_start_4f
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_52} :catch_58

    move-object v1, v3

    .line 135
    :goto_53
    if-nez v2, :cond_72

    if-nez v1, :cond_72

    .line 138
    :goto_57
    return-object v0

    .line 131
    :catch_58
    move-exception v1

    move-object v1, v3

    goto :goto_53

    .line 125
    :catch_5b
    move-exception v1

    move-object v1, v0

    move-object v2, v0

    :goto_5e
    if-eqz v1, :cond_81

    .line 129
    :try_start_60
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_63} :catch_65

    move-object v1, v0

    .line 131
    goto :goto_53

    :catch_65
    move-exception v1

    move-object v1, v0

    goto :goto_53

    .line 127
    :catchall_68
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_6c
    if-eqz v1, :cond_71

    .line 129
    :try_start_6e
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_71} :catch_78

    .line 131
    :cond_71
    :goto_71
    throw v0

    .line 138
    :cond_72
    new-instance v0, Lcom/alipay/sdk/packet/b;

    invoke-direct {v0, v2, v1}, Lcom/alipay/sdk/packet/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_57

    :catch_78
    move-exception v1

    goto :goto_71

    .line 127
    :catchall_7a
    move-exception v0

    goto :goto_6c

    .line 125
    :catch_7c
    move-exception v2

    move-object v2, v0

    goto :goto_5e

    :catch_7f
    move-exception v3

    goto :goto_5e

    :cond_81
    move-object v1, v0

    goto :goto_53

    :cond_83
    move-object v4, v3

    goto :goto_4a

    :cond_85
    move-object v3, v0

    goto :goto_4f
.end method

.method public final a(Lcom/alipay/sdk/packet/b;Z)Lcom/alipay/sdk/packet/c;
    .registers 10

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 55
    if-nez p1, :cond_7

    .line 56
    const/4 v0, 0x0

    .line 81
    :goto_6
    return-object v0

    .line 60
    :cond_7
    iget-object v1, p1, Lcom/alipay/sdk/packet/b;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 61
    iget-object v1, p1, Lcom/alipay/sdk/packet/b;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 64
    if-eqz p2, :cond_19

    .line 66
    :try_start_15
    invoke-static {v1}, Lcom/alipay/sdk/encrypt/c;->a([B)[B
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_18} :catch_3f

    move-result-object v1

    .line 72
    :cond_19
    :goto_19
    iget-boolean v3, p0, Lcom/alipay/sdk/packet/e;->a:Z

    if-eqz v3, :cond_42

    .line 75
    iget-object v3, p0, Lcom/alipay/sdk/packet/e;->b:Ljava/lang/String;

    sget-object v4, Lcom/alipay/sdk/cons/a;->b:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/alipay/sdk/encrypt/d;->a(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v3

    .line 76
    iget-object v4, p0, Lcom/alipay/sdk/packet/e;->b:Ljava/lang/String;

    invoke-static {v4, v1}, Lcom/alipay/sdk/encrypt/e;->a(Ljava/lang/String;[B)[B

    move-result-object v1

    .line 77
    const/4 v4, 0x3

    new-array v4, v4, [[B

    aput-object v2, v4, v0

    aput-object v3, v4, v5

    aput-object v1, v4, v6

    invoke-static {v4}, Lcom/alipay/sdk/packet/e;->a([[B)[B

    move-result-object v0

    .line 81
    :goto_38
    new-instance v1, Lcom/alipay/sdk/packet/c;

    invoke-direct {v1, p2, v0}, Lcom/alipay/sdk/packet/c;-><init>(Z[B)V

    move-object v0, v1

    goto :goto_6

    .line 68
    :catch_3f
    move-exception v3

    move p2, v0

    goto :goto_19

    .line 79
    :cond_42
    new-array v3, v6, [[B

    aput-object v2, v3, v0

    aput-object v1, v3, v5

    invoke-static {v3}, Lcom/alipay/sdk/packet/e;->a([[B)[B

    move-result-object v0

    goto :goto_38
.end method

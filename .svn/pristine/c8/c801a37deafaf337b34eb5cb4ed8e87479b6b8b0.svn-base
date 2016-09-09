.class public Lcom/youju/statistics/a/e;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/youju/statistics/a/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/youju/statistics/a/e;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)I
    .registers 2

    invoke-static {p0}, Lcom/youju/statistics/a/e;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public static a(Landroid/content/Context;JZ)J
    .registers 17

    const-wide/16 v4, 0x0

    invoke-static {}, Lcom/youju/statistics/a/n;->j()J

    move-result-wide v0

    if-eqz p3, :cond_35

    :try_start_8
    invoke-static {p0}, Lcom/youju/statistics/c/g;->a(Landroid/content/Context;)Lcom/youju/statistics/c/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/youju/statistics/c/g;->g()J

    move-result-wide v2

    move-wide v6, v2

    :goto_11
    cmp-long v2, v6, v4

    if-gtz v2, :cond_3f

    sget-object v2, Lcom/youju/statistics/a/e;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "util getInterval"

    invoke-static {v6}, Lcom/youju/statistics/a/s;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "last quit time is 0"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/youju/statistics/a/s;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v0, v4

    :goto_34
    return-wide v0

    :cond_35
    invoke-static {p0}, Lcom/youju/statistics/a/e;->c(Landroid/content/Context;)Lcom/youju/statistics/c/a/j;

    move-result-object v2

    invoke-virtual {v2}, Lcom/youju/statistics/c/a/j;->j()J

    move-result-wide v2

    move-wide v6, v2

    goto :goto_11

    :cond_3f
    sub-long v2, p1, v6

    invoke-static {v2, v3}, Lcom/youju/statistics/a/n;->c(J)I
    :try_end_44
    .catch Lcom/youju/statistics/d/e; {:try_start_8 .. :try_end_44} :catch_77
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_44} :catch_7a

    move-result v2

    int-to-long v2, v2

    cmp-long v8, v2, v0

    if-gez v8, :cond_a1

    :try_start_4a
    sget-object v8, Lcom/youju/statistics/a/e;->a:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getInterval"

    invoke-static {v10}, Lcom/youju/statistics/a/s;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "interval < 0 lastQuitTime = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " invokeTime = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Lcom/youju/statistics/a/s;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_76
    .catch Lcom/youju/statistics/d/e; {:try_start_4a .. :try_end_76} :catch_77
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_76} :catch_9c

    goto :goto_34

    :catch_77
    move-exception v0

    move-wide v0, v4

    goto :goto_34

    :catch_7a
    move-exception v2

    :goto_7b
    sget-object v3, Lcom/youju/statistics/a/e;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getInterval"

    invoke-static {v5}, Lcom/youju/statistics/a/s;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/youju/statistics/a/s;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_34

    :catch_9c
    move-exception v0

    move-object v11, v0

    move-wide v0, v2

    move-object v2, v11

    goto :goto_7b

    :cond_a1
    move-wide v0, v2

    goto :goto_34
.end method

.method public static a(Landroid/content/Context;JJ)Lcom/youju/statistics/c/a/j;
    .registers 8

    invoke-static {}, Lcom/youju/statistics/a/e;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/youju/statistics/c/a/j;

    invoke-direct {v1}, Lcom/youju/statistics/c/a/j;-><init>()V

    invoke-virtual {v1, v0}, Lcom/youju/statistics/c/a/j;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/youju/statistics/c/a/j;->a(I)V

    invoke-virtual {v1, p3, p4}, Lcom/youju/statistics/c/a/j;->b(J)V

    invoke-virtual {v1, p1, p2}, Lcom/youju/statistics/c/a/j;->a(J)V

    invoke-static {p0}, Lcom/youju/statistics/a/e;->a(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/youju/statistics/c/a/j;->b(I)V

    invoke-static {v1, p0}, Lcom/youju/statistics/a/n;->a(Lcom/youju/statistics/c/a/d;Landroid/content/Context;)V

    return-object v1
.end method

.method public static declared-synchronized a()Ljava/lang/String;
    .registers 7

    const/16 v6, 0xa

    const-class v1, Lcom/youju/statistics/a/e;

    monitor-enter v1

    :try_start_5
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    const/16 v2, 0x10

    new-array v2, v2, [B

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextBytes([B)V

    invoke-static {}, Lcom/youju/statistics/a/e;->b()Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    :goto_1f
    array-length v4, v2

    if-ge v0, v4, :cond_56

    aget-byte v4, v2, v0

    and-int/lit16 v4, v4, 0xf0

    shr-int/lit8 v4, v4, 0x4

    int-to-byte v4, v4

    aget-byte v5, v2, v0

    and-int/lit8 v5, v5, 0xf

    int-to-byte v5, v5

    if-ge v4, v6, :cond_41

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_36
    if-ge v5, v6, :cond_4d

    add-int/lit8 v4, v5, 0x30

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_3e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    :cond_41
    add-int/lit8 v4, v4, -0xa

    add-int/lit8 v4, v4, 0x61

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_49
    .catchall {:try_start_5 .. :try_end_49} :catchall_4a

    goto :goto_36

    :catchall_4a
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_4d
    add-int/lit8 v4, v5, -0xa

    add-int/lit8 v4, v4, 0x61

    int-to-char v4, v4

    :try_start_52
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3e

    :cond_56
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_59
    .catchall {:try_start_52 .. :try_end_59} :catchall_4a

    move-result-object v0

    monitor-exit v1

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/youju/statistics/c/a/j;)V
    .registers 6

    invoke-static {p0}, Lcom/youju/statistics/e/c;->a(Landroid/content/Context;)Lcom/youju/statistics/e/c;

    move-result-object v0

    const-string v1, "session"

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/youju/statistics/c/a/j;->f()Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/youju/statistics/e/c;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    return-void
.end method

.method public static a(Lcom/youju/statistics/c/a/j;J)Z
    .registers 12

    const-wide/16 v6, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/youju/statistics/c/a/j;->j()J

    move-result-wide v2

    cmp-long v1, v2, v6

    if-gtz v1, :cond_c

    :goto_b
    return v0

    :cond_c
    sub-long v2, p1, v2

    :try_start_e
    invoke-static {}, Lcom/youju/statistics/c/r;->e()Lcom/youju/statistics/c/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youju/statistics/c/r;->i()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-gtz v1, :cond_1e

    cmp-long v1, v2, v6

    if-gez v1, :cond_45

    :cond_1e
    sget-object v1, Lcom/youju/statistics/a/e;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isNewSession"

    invoke-static {v5}, Lcom/youju/statistics/a/s;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " new session, sessionInterval "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/youju/statistics/a/s;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_40
    .catch Lcom/youju/statistics/d/d; {:try_start_e .. :try_end_40} :catch_41

    goto :goto_b

    :catch_41
    move-exception v0

    invoke-virtual {v0}, Lcom/youju/statistics/d/d;->printStackTrace()V

    :cond_45
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private static b()Ljava/security/MessageDigest;
    .registers 1

    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    :goto_6
    return-object v0

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static b(Landroid/content/Context;)Z
    .registers 2

    :try_start_0
    const-string v0, "session"

    invoke-static {p0, v0}, Lcom/youju/statistics/a/g;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_5
    .catch Lcom/youju/statistics/d/e; {:try_start_0 .. :try_end_5} :catch_7

    const/4 v0, 0x0

    :goto_6
    return v0

    :catch_7
    move-exception v0

    const/4 v0, 0x1

    goto :goto_6
.end method

.method public static c(Landroid/content/Context;)Lcom/youju/statistics/c/a/j;
    .registers 3

    new-instance v0, Lcom/youju/statistics/c/a/j;

    invoke-direct {v0}, Lcom/youju/statistics/c/a/j;-><init>()V

    const/4 v1, 0x0

    :try_start_6
    const-string v0, "session"

    invoke-static {p0, v0}, Lcom/youju/statistics/a/g;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-static {v1}, Lcom/youju/statistics/c/a/j;->a(Landroid/database/Cursor;)Lcom/youju/statistics/c/a/j;
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_14

    move-result-object v0

    invoke-static {v1}, Lcom/youju/statistics/a/g;->a(Landroid/database/Cursor;)V

    return-object v0

    :catchall_14
    move-exception v0

    invoke-static {v1}, Lcom/youju/statistics/a/g;->a(Landroid/database/Cursor;)V

    throw v0
.end method

.method private static d(Landroid/content/Context;)Z
    .registers 3

    :try_start_0
    invoke-static {p0}, Lcom/youju/statistics/a/e;->c(Landroid/content/Context;)Lcom/youju/statistics/c/a/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youju/statistics/c/a/j;->a()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/youju/statistics/a/n;->b(J)Z
    :try_end_b
    .catch Lcom/youju/statistics/d/e; {:try_start_0 .. :try_end_b} :catch_10

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    :goto_f
    return v0

    :catch_10
    move-exception v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_f
.end method

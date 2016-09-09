.class public abstract Lcom/youju/statistics/c/a/d;
.super Ljava/lang/Object;


# static fields
.field private static final b:Ljava/lang/Object;


# instance fields
.field protected a:J

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, " TEXT,"

    sput-object v0, Lcom/youju/statistics/c/a/d;->b:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "**"

    iput-object v0, p0, Lcom/youju/statistics/c/a/d;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/youju/statistics/c/a/d;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/youju/statistics/c/a/d;->e:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/youju/statistics/c/a/d;->f:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/youju/statistics/c/a/d;->g:Ljava/lang/String;

    iput-object p1, p0, Lcom/youju/statistics/c/a/d;->e:Ljava/lang/String;

    invoke-static {}, Lcom/youju/statistics/c/r;->l()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youju/statistics/c/a/d;->d:Ljava/lang/String;

    return-void
.end method

.method protected static a(Landroid/database/Cursor;Lcom/youju/statistics/c/a/d;)V
    .registers 3

    const-string v0, "network_type"

    invoke-static {p0, v0}, Lcom/youju/statistics/a/g;->a(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/youju/statistics/c/a/d;->b(Ljava/lang/String;)V

    const-string v0, "app_version"

    invoke-static {p0, v0}, Lcom/youju/statistics/a/g;->a(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/youju/statistics/c/a/d;->a(Ljava/lang/String;)V

    const-string v0, "base_station_info"

    invoke-static {p0, v0}, Lcom/youju/statistics/a/g;->a(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/youju/statistics/c/a/d;->d(Ljava/lang/String;)V

    const-string v0, "wifi_hot_spot_mac"

    invoke-static {p0, v0}, Lcom/youju/statistics/a/g;->a(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/youju/statistics/c/a/d;->c(Ljava/lang/String;)V

    return-void
.end method

.method public static final b(Ljava/lang/StringBuilder;)V
    .registers 2

    const-string v0, "app_version"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " TEXT NOT NULL,"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "network_type"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " TEXT NOT NULL,"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "wifi_hot_spot_mac"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/youju/statistics/c/a/d;->b:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "base_station_info"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " TEXT "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ");"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private c(Ljava/io/ByteArrayOutputStream;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Lcom/youju/statistics/c/a/d;->a(Ljava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/youju/statistics/a/l;->a(II)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    return-void
.end method


# virtual methods
.method public a()J
    .registers 3

    iget-wide v0, p0, Lcom/youju/statistics/c/a/d;->a:J

    return-wide v0
.end method

.method public a(J)V
    .registers 4

    iput-wide p1, p0, Lcom/youju/statistics/c/a/d;->a:J

    return-void
.end method

.method protected abstract a(Ljava/io/ByteArrayOutputStream;)V
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    invoke-static {p1}, Lcom/youju/statistics/a/n;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_6
    return-void

    :cond_7
    iput-object p1, p0, Lcom/youju/statistics/c/a/d;->d:Ljava/lang/String;

    goto :goto_6
.end method

.method protected abstract a(Ljava/lang/StringBuilder;)V
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/youju/statistics/c/a/d;->d:Ljava/lang/String;

    return-object v0
.end method

.method protected b(Ljava/io/ByteArrayOutputStream;)V
    .registers 4

    iget-wide v0, p0, Lcom/youju/statistics/c/a/d;->a:J

    invoke-static {v0, v1}, Lcom/youju/statistics/a/n;->c(J)I

    move-result v0

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/youju/statistics/a/l;->a(II)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 3

    invoke-static {p1}, Lcom/youju/statistics/a/n;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_6
    return-void

    :cond_7
    iput-object p1, p0, Lcom/youju/statistics/c/a/d;->c:Ljava/lang/String;

    goto :goto_6
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/youju/statistics/c/a/d;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .registers 3

    invoke-static {p1}, Lcom/youju/statistics/a/n;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_6
    return-void

    :cond_7
    iput-object p1, p0, Lcom/youju/statistics/c/a/d;->f:Ljava/lang/String;

    goto :goto_6
.end method

.method public d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/youju/statistics/c/a/d;->f:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .registers 3

    invoke-static {p1}, Lcom/youju/statistics/a/n;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_6
    return-void

    :cond_7
    iput-object p1, p0, Lcom/youju/statistics/c/a/d;->g:Ljava/lang/String;

    goto :goto_6
.end method

.method public e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/youju/statistics/c/a/d;->g:Ljava/lang/String;

    return-object v0
.end method

.method public f()Landroid/content/ContentValues;
    .registers 4

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "network_type"

    iget-object v2, p0, Lcom/youju/statistics/c/a/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "app_version"

    iget-object v2, p0, Lcom/youju/statistics/c/a/d;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "wifi_hot_spot_mac"

    iget-object v2, p0, Lcom/youju/statistics/c/a/d;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "base_station_info"

    iget-object v2, p0, Lcom/youju/statistics/c/a/d;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public g()[B
    .registers 6

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    :try_start_3
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_8} :catch_1d
    .catchall {:try_start_3 .. :try_end_8} :catchall_2c

    :try_start_8
    invoke-virtual {p0, v1}, Lcom/youju/statistics/c/a/d;->b(Ljava/io/ByteArrayOutputStream;)V

    invoke-virtual {p0, v1}, Lcom/youju/statistics/c/a/d;->a(Ljava/io/ByteArrayOutputStream;)V

    invoke-direct {p0, v1}, Lcom/youju/statistics/c/a/d;->c(Ljava/io/ByteArrayOutputStream;)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_14} :catch_38
    .catchall {:try_start_8 .. :try_end_14} :catchall_36

    move-result-object v0

    new-array v2, v4, [Ljava/io/Closeable;

    aput-object v1, v2, v3

    invoke-static {v2}, Lcom/youju/statistics/a/n;->a([Ljava/io/Closeable;)V

    :goto_1c
    return-object v0

    :catch_1d
    move-exception v0

    move-object v1, v2

    :goto_1f
    :try_start_1f
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_36

    new-array v0, v4, [Ljava/io/Closeable;

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/youju/statistics/a/n;->a([Ljava/io/Closeable;)V

    new-array v0, v3, [B

    goto :goto_1c

    :catchall_2c
    move-exception v0

    move-object v1, v2

    :goto_2e
    new-array v2, v4, [Ljava/io/Closeable;

    aput-object v1, v2, v3

    invoke-static {v2}, Lcom/youju/statistics/a/n;->a([Ljava/io/Closeable;)V

    throw v0

    :catchall_36
    move-exception v0

    goto :goto_2e

    :catch_38
    move-exception v0

    goto :goto_1f
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/youju/statistics/c/a/d;->f()Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

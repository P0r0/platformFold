.class public Lcom/youju/statistics/b/h;
.super Lcom/youju/statistics/b/n;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/lang/String;

.field private c:J

.field private d:J

.field private e:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/youju/statistics/b/h;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/youju/statistics/b/h;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;JJ)V
    .registers 8

    invoke-direct {p0}, Lcom/youju/statistics/b/n;-><init>()V

    iput-object p1, p0, Lcom/youju/statistics/b/h;->e:Landroid/content/Context;

    iput-object p2, p0, Lcom/youju/statistics/b/h;->b:Ljava/lang/String;

    iput-wide p3, p0, Lcom/youju/statistics/b/h;->c:J

    iput-wide p5, p0, Lcom/youju/statistics/b/h;->d:J

    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lcom/youju/statistics/b/h;->b:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private c()Ljava/lang/String;
    .registers 4

    const/4 v1, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/youju/statistics/b/h;->e:Landroid/content/Context;

    const-string v2, "session"

    invoke-static {v0, v2}, Lcom/youju/statistics/a/g;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    const-string v0, "session_id"

    invoke-static {v1, v0}, Lcom/youju/statistics/a/g;->a(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_13

    move-result-object v0

    invoke-static {v1}, Lcom/youju/statistics/a/g;->a(Landroid/database/Cursor;)V

    return-object v0

    :catchall_13
    move-exception v0

    invoke-static {v1}, Lcom/youju/statistics/a/g;->a(Landroid/database/Cursor;)V

    throw v0
.end method

.method private d()V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/youju/statistics/b/h;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/youju/statistics/c/t;->a(Landroid/content/Context;)Lcom/youju/statistics/c/t;

    move-result-object v0

    iget-object v1, p0, Lcom/youju/statistics/b/h;->b:Ljava/lang/String;

    iget-wide v2, p0, Lcom/youju/statistics/b/h;->d:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/youju/statistics/c/t;->c(Ljava/lang/String;J)V
    :try_end_d
    .catch Lcom/youju/statistics/d/c; {:try_start_0 .. :try_end_d} :catch_e

    :goto_d
    return-void

    :catch_e
    move-exception v0

    sget-object v1, Lcom/youju/statistics/b/h;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateActivityDuration"

    invoke-static {v3}, Lcom/youju/statistics/a/s;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/youju/statistics/d/c;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/youju/statistics/a/s;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d
.end method


# virtual methods
.method protected a()V
    .registers 8

    iget-object v0, p0, Lcom/youju/statistics/b/h;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/youju/statistics/a/n;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    :goto_8
    return-void

    :cond_9
    :try_start_9
    invoke-static {}, Lcom/youju/statistics/c/r;->e()Lcom/youju/statistics/c/r;
    :try_end_c
    .catch Lcom/youju/statistics/d/d; {:try_start_9 .. :try_end_c} :catch_36

    move-result-object v0

    invoke-virtual {v0}, Lcom/youju/statistics/c/r;->c()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/youju/statistics/a/n;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_58

    sget-object v0, Lcom/youju/statistics/b/h;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handle pause"

    invoke-static {v2}, Lcom/youju/statistics/a/s;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "no current activity name, maybe onPause twice"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youju/statistics/a/s;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :catch_36
    move-exception v0

    sget-object v1, Lcom/youju/statistics/b/h;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handle pause"

    invoke-static {v3}, Lcom/youju/statistics/a/s;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/youju/statistics/d/d;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/youju/statistics/a/s;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_58
    const-string v1, ""

    :try_start_5a
    invoke-direct {p0}, Lcom/youju/statistics/b/h;->c()Ljava/lang/String;
    :try_end_5d
    .catch Lcom/youju/statistics/d/e; {:try_start_5a .. :try_end_5d} :catch_7e

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/youju/statistics/c/r;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/youju/statistics/b/h;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/youju/statistics/c/t;->a(Landroid/content/Context;)Lcom/youju/statistics/c/t;

    move-result-object v0

    :try_start_68
    iget-wide v2, p0, Lcom/youju/statistics/b/h;->c:J

    iget-wide v4, p0, Lcom/youju/statistics/b/h;->d:J

    invoke-virtual/range {v0 .. v5}, Lcom/youju/statistics/c/t;->a(Ljava/lang/String;JJ)V

    invoke-direct {p0, v6}, Lcom/youju/statistics/b/h;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_78

    invoke-direct {p0}, Lcom/youju/statistics/b/h;->d()V
    :try_end_78
    .catch Lcom/youju/statistics/d/c; {:try_start_68 .. :try_end_78} :catch_87
    .catchall {:try_start_68 .. :try_end_78} :catchall_ad

    :cond_78
    iget-wide v2, p0, Lcom/youju/statistics/b/h;->d:J

    invoke-virtual {v0, v2, v3}, Lcom/youju/statistics/c/t;->b(J)V

    goto :goto_8

    :catch_7e
    move-exception v0

    sget-object v0, Lcom/youju/statistics/b/h;->a:Ljava/lang/String;

    const-string v1, "onPause no session"

    invoke-static {v0, v1}, Lcom/youju/statistics/a/s;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :catch_87
    move-exception v1

    :try_start_88
    sget-object v1, Lcom/youju/statistics/b/h;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handle pause"

    invoke-static {v3}, Lcom/youju/statistics/a/s;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "no current session"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/youju/statistics/a/s;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a6
    .catchall {:try_start_88 .. :try_end_a6} :catchall_ad

    iget-wide v2, p0, Lcom/youju/statistics/b/h;->d:J

    invoke-virtual {v0, v2, v3}, Lcom/youju/statistics/c/t;->b(J)V

    goto/16 :goto_8

    :catchall_ad
    move-exception v1

    iget-wide v2, p0, Lcom/youju/statistics/b/h;->d:J

    invoke-virtual {v0, v2, v3}, Lcom/youju/statistics/c/t;->b(J)V

    throw v1
.end method

.method protected b()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youju/statistics/b/h;->b:Ljava/lang/String;

    return-void
.end method

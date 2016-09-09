.class public Lcom/youju/statistics/a/t;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/youju/statistics/a/t;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/youju/statistics/a/t;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/youju/statistics/c/a/f;
    .registers 2

    invoke-static {p0}, Lcom/youju/statistics/c/g;->a(Landroid/content/Context;)Lcom/youju/statistics/c/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youju/statistics/c/g;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/youju/statistics/c/a/f;->d(Ljava/lang/String;)Lcom/youju/statistics/c/a/f;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;)Lcom/youju/statistics/c/a/f;
    .registers 9

    new-instance v0, Lcom/youju/statistics/c/a/f;

    invoke-direct {v0}, Lcom/youju/statistics/c/a/f;-><init>()V

    invoke-virtual {v0, p1}, Lcom/youju/statistics/c/a/f;->a(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Lcom/youju/statistics/c/a/f;->c(Ljava/lang/String;)V

    :try_start_b
    invoke-static {p0}, Lcom/youju/statistics/a/e;->c(Landroid/content/Context;)Lcom/youju/statistics/c/a/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youju/statistics/c/a/j;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/youju/statistics/c/a/f;->b(Ljava/lang/String;)V
    :try_end_16
    .catch Lcom/youju/statistics/d/e; {:try_start_b .. :try_end_16} :catch_1a

    :goto_16
    invoke-virtual {v0, p2, p3}, Lcom/youju/statistics/c/a/f;->a(J)V

    return-object v0

    :catch_1a
    move-exception v1

    sget-object v1, Lcom/youju/statistics/a/t;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createPageEvent"

    invoke-static {v3}, Lcom/youju/statistics/a/s;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "session is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/youju/statistics/a/s;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16
.end method

.method public static a(Landroid/content/Context;Lcom/youju/statistics/c/a/f;)V
    .registers 6

    if-nez p1, :cond_21

    sget-object v0, Lcom/youju/statistics/a/t;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insertPageToDB"

    invoke-static {v2}, Lcom/youju/statistics/a/s;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "pageEvent is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youju/statistics/a/s;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_20
    return-void

    :cond_21
    invoke-virtual {p1, p0}, Lcom/youju/statistics/c/a/f;->a(Landroid/content/Context;)Lcom/youju/statistics/c/a/o;

    move-result-object v0

    invoke-static {p0}, Lcom/youju/statistics/e/c;->a(Landroid/content/Context;)Lcom/youju/statistics/e/c;

    move-result-object v1

    const-string v2, "app_event"

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/youju/statistics/c/a/o;->f()Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lcom/youju/statistics/e/c;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_20
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    :try_start_0
    invoke-static {}, Lcom/youju/statistics/c/r;->e()Lcom/youju/statistics/c/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youju/statistics/c/r;->c()Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v0

    :goto_8
    return-object v0

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_8
.end method

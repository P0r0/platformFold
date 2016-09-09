.class public Lcom/youju/statistics/b/i;
.super Lcom/youju/statistics/b/n;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/youju/statistics/c/r;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/youju/statistics/b/i;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/youju/statistics/b/i;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/youju/statistics/c/r;)V
    .registers 2

    invoke-direct {p0}, Lcom/youju/statistics/b/n;-><init>()V

    iput-object p1, p0, Lcom/youju/statistics/b/i;->b:Lcom/youju/statistics/c/r;

    return-void
.end method


# virtual methods
.method protected a()V
    .registers 4

    iget-object v0, p0, Lcom/youju/statistics/b/i;->b:Lcom/youju/statistics/c/r;

    invoke-virtual {v0}, Lcom/youju/statistics/c/r;->b()Z

    move-result v0

    if-eqz v0, :cond_27

    sget-object v0, Lcom/youju/statistics/b/i;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkquit"

    invoke-static {v2}, Lcom/youju/statistics/a/s;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " current activity not paused"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youju/statistics/a/s;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_26
    :goto_26
    return-void

    :cond_27
    const-wide/16 v0, 0x3e8

    :try_start_29
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    iget-object v0, p0, Lcom/youju/statistics/b/i;->b:Lcom/youju/statistics/c/r;

    invoke-virtual {v0}, Lcom/youju/statistics/c/r;->b()Z

    move-result v0

    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/youju/statistics/b/i;->b:Lcom/youju/statistics/c/r;

    invoke-virtual {v0}, Lcom/youju/statistics/c/r;->n()V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_39} :catch_3a

    goto :goto_26

    :catch_3a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_26
.end method

.method protected b()V
    .registers 1

    return-void
.end method

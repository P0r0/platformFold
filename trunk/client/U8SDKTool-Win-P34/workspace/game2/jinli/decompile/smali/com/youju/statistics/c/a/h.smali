.class public Lcom/youju/statistics/c/a/h;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private e:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/youju/statistics/c/a/h;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/youju/statistics/c/a/h;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/youju/statistics/c/a/h;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/youju/statistics/c/a/h;->c:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youju/statistics/c/a/h;->d:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lcom/youju/statistics/c/a/o;
    .registers 8

    new-instance v2, Lcom/youju/statistics/c/a/o;

    invoke-direct {v2}, Lcom/youju/statistics/c/a/o;-><init>()V

    iget-object v0, p0, Lcom/youju/statistics/c/a/h;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/youju/statistics/c/a/o;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/youju/statistics/c/a/h;->c:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/youju/statistics/c/a/o;->g(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/youju/statistics/c/a/h;->e:J

    invoke-virtual {v2, v0, v1}, Lcom/youju/statistics/c/a/o;->a(J)V

    iget-object v0, p0, Lcom/youju/statistics/c/a/h;->d:Ljava/util/Map;

    invoke-static {v0}, Lcom/youju/statistics/a/n;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/youju/statistics/c/a/o;->h(Ljava/lang/String;)V

    const-string v0, ""

    :try_start_1f
    invoke-static {p1}, Lcom/youju/statistics/a/e;->c(Landroid/content/Context;)Lcom/youju/statistics/c/a/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youju/statistics/c/a/j;->i()Ljava/lang/String;
    :try_end_26
    .catch Lcom/youju/statistics/d/e; {:try_start_1f .. :try_end_26} :catch_2b

    move-result-object v0

    :goto_27
    invoke-virtual {v2, v0}, Lcom/youju/statistics/c/a/o;->e(Ljava/lang/String;)V

    return-object v2

    :catch_2b
    move-exception v1

    sget-object v3, Lcom/youju/statistics/c/a/h;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "toAppEvent"

    invoke-static {v5}, Lcom/youju/statistics/a/s;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/youju/statistics/d/e;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/youju/statistics/a/s;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_27
.end method

.method public a(J)V
    .registers 4

    iput-wide p1, p0, Lcom/youju/statistics/c/a/h;->e:J

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    iput-object p1, p0, Lcom/youju/statistics/c/a/h;->b:Ljava/lang/String;

    goto :goto_2
.end method

.method public a(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/youju/statistics/c/a/h;->d:Ljava/util/Map;

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    iput-object p1, p0, Lcom/youju/statistics/c/a/h;->c:Ljava/lang/String;

    goto :goto_2
.end method

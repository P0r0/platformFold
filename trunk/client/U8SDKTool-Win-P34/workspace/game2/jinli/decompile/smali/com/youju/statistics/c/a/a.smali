.class public Lcom/youju/statistics/c/a/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/youju/statistics/c/a/a;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/youju/statistics/c/a/a;->d:Ljava/lang/String;

    return-void
.end method

.method public static a(Lcom/youju/statistics/c/a/d;)Lcom/youju/statistics/c/a/a;
    .registers 3

    new-instance v0, Lcom/youju/statistics/c/a/a;

    invoke-direct {v0}, Lcom/youju/statistics/c/a/a;-><init>()V

    invoke-virtual {p0}, Lcom/youju/statistics/c/a/d;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/youju/statistics/c/a/a;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/youju/statistics/c/a/d;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/youju/statistics/c/a/a;->b(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/youju/statistics/c/a/d;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/youju/statistics/c/a/a;->c(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/youju/statistics/c/a/d;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/youju/statistics/c/a/a;->d(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/youju/statistics/c/a/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/youju/statistics/c/a/a;->a:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/youju/statistics/c/a/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/youju/statistics/c/a/a;->b:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/youju/statistics/c/a/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/youju/statistics/c/a/a;->c:Ljava/lang/String;

    return-void
.end method

.method public d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/youju/statistics/c/a/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/youju/statistics/c/a/a;->d:Ljava/lang/String;

    return-void
.end method

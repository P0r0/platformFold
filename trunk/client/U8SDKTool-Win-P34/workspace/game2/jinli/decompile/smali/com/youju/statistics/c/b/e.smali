.class public Lcom/youju/statistics/c/b/e;
.super Lcom/youju/statistics/c/b/d;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/youju/statistics/c/b/d;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/youju/statistics/c/b/e;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/youju/statistics/c/b/e;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/youju/statistics/c/b/e;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/telephony/CellIdentityCdma;Ljava/lang/String;)V
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-direct {p0}, Lcom/youju/statistics/c/b/d;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/youju/statistics/c/b/e;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/youju/statistics/c/b/e;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/youju/statistics/c/b/e;->c:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/youju/statistics/c/b/e;->d(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/telephony/CellIdentityCdma;->getBasestationId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/youju/statistics/c/b/e;->c(I)V

    invoke-virtual {p1}, Landroid/telephony/CellIdentityCdma;->getNetworkId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/youju/statistics/c/b/e;->b(I)V

    invoke-virtual {p1}, Landroid/telephony/CellIdentityCdma;->getSystemId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/youju/statistics/c/b/e;->a(I)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 3

    const v0, 0x7fffffff

    if-ne p1, v0, :cond_6

    :goto_5
    return-void

    :cond_6
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youju/statistics/c/b/e;->a:Ljava/lang/String;

    goto :goto_5
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    iput-object p1, p0, Lcom/youju/statistics/c/b/e;->a:Ljava/lang/String;

    goto :goto_2
.end method

.method public b(I)V
    .registers 3

    const v0, 0x7fffffff

    if-ne p1, v0, :cond_6

    :goto_5
    return-void

    :cond_6
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youju/statistics/c/b/e;->b:Ljava/lang/String;

    goto :goto_5
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    iput-object p1, p0, Lcom/youju/statistics/c/b/e;->b:Ljava/lang/String;

    goto :goto_2
.end method

.method public c(I)V
    .registers 3

    const v0, 0x7fffffff

    if-ne p1, v0, :cond_6

    :goto_5
    return-void

    :cond_6
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youju/statistics/c/b/e;->b:Ljava/lang/String;

    goto :goto_5
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    iput-object p1, p0, Lcom/youju/statistics/c/b/e;->c:Ljava/lang/String;

    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/youju/statistics/c/b/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/youju/statistics/c/b/e;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/youju/statistics/c/b/e;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/youju/statistics/c/b/e;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

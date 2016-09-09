.class public Lcom/youju/statistics/c/c/d;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/youju/statistics/c/c/d;->a:I

    return v0
.end method

.method protected a(I)V
    .registers 2

    iput p1, p0, Lcom/youju/statistics/c/c/d;->a:I

    return-void
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lcom/youju/statistics/c/c/d;->b:I

    return v0
.end method

.method protected b(I)V
    .registers 2

    iput p1, p0, Lcom/youju/statistics/c/c/d;->b:I

    return-void
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lcom/youju/statistics/c/c/d;->c:I

    return v0
.end method

.method protected c(I)V
    .registers 2

    iput p1, p0, Lcom/youju/statistics/c/c/d;->c:I

    return-void
.end method

.method public d()I
    .registers 2

    iget v0, p0, Lcom/youju/statistics/c/c/d;->d:I

    return v0
.end method

.method protected d(I)V
    .registers 2

    iput p1, p0, Lcom/youju/statistics/c/c/d;->d:I

    return-void
.end method

.method public e()I
    .registers 2

    iget v0, p0, Lcom/youju/statistics/c/c/d;->e:I

    return v0
.end method

.method protected e(I)V
    .registers 2

    iput p1, p0, Lcom/youju/statistics/c/c/d;->e:I

    return-void
.end method

.method public f()I
    .registers 2

    iget v0, p0, Lcom/youju/statistics/c/c/d;->f:I

    return v0
.end method

.method protected f(I)V
    .registers 2

    iput p1, p0, Lcom/youju/statistics/c/c/d;->f:I

    return-void
.end method

.method public g()I
    .registers 2

    iget v0, p0, Lcom/youju/statistics/c/c/d;->g:I

    return v0
.end method

.method protected g(I)V
    .registers 2

    iput p1, p0, Lcom/youju/statistics/c/c/d;->g:I

    return-void
.end method

.method public h()I
    .registers 2

    iget v0, p0, Lcom/youju/statistics/c/c/d;->g:I

    div-int/lit8 v0, v0, 0xa

    return v0
.end method

.method protected h(I)V
    .registers 2

    iput p1, p0, Lcom/youju/statistics/c/c/d;->h:I

    return-void
.end method

.method public i()I
    .registers 2

    iget v0, p0, Lcom/youju/statistics/c/c/d;->h:I

    return v0
.end method

.method protected i(I)V
    .registers 2

    iput p1, p0, Lcom/youju/statistics/c/c/d;->i:I

    return-void
.end method

.method public j()Z
    .registers 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/youju/statistics/c/c/d;->i:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public k()I
    .registers 2

    iget v0, p0, Lcom/youju/statistics/c/c/d;->i:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " versionNum = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/youju/statistics/c/c/d;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " minWifiUploadSize = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/youju/statistics/c/c/d;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " maxWifiUploadSize = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/youju/statistics/c/c/d;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " minGprsUploadSize = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/youju/statistics/c/c/d;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " maxGprsUploadSize = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/youju/statistics/c/c/d;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mbMaxStore = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/youju/statistics/c/c/d;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " maxTableNumber = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/youju/statistics/c/c/d;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " appEventCountWhenCheckUpload = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/youju/statistics/c/c/d;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mEnableStatisticsActivity = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/youju/statistics/c/c/d;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

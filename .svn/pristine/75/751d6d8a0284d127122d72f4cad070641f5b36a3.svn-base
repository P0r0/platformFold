.class public Lcom/youju/statistics/c/b/a;
.super Lcom/youju/statistics/c/b/d;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/telephony/CellIdentityLte;)V
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-direct {p0}, Lcom/youju/statistics/c/b/d;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/youju/statistics/c/b/a;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/youju/statistics/c/b/a;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/youju/statistics/c/b/a;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/youju/statistics/c/b/a;->d:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/telephony/CellIdentityLte;->getMcc()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/youju/statistics/c/b/a;->d(I)V

    invoke-virtual {p1}, Landroid/telephony/CellIdentityLte;->getMnc()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/youju/statistics/c/b/a;->a(I)V

    invoke-virtual {p1}, Landroid/telephony/CellIdentityLte;->getCi()I

    invoke-virtual {p1}, Landroid/telephony/CellIdentityLte;->getPci()I

    invoke-virtual {p1}, Landroid/telephony/CellIdentityLte;->getTac()I

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

    iput-object v0, p0, Lcom/youju/statistics/c/b/a;->a:Ljava/lang/String;

    goto :goto_5
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/youju/statistics/c/b/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/youju/statistics/c/b/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/youju/statistics/c/b/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/youju/statistics/c/b/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/youju/statistics/c/b/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

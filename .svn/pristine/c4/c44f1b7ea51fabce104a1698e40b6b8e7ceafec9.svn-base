.class Lcom/youju/statistics/c/b/f;
.super Landroid/telephony/PhoneStateListener;


# instance fields
.field final synthetic a:Lcom/youju/statistics/c/b/h;


# direct methods
.method private constructor <init>(Lcom/youju/statistics/c/b/h;)V
    .registers 2

    iput-object p1, p0, Lcom/youju/statistics/c/b/f;->a:Lcom/youju/statistics/c/b/h;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/youju/statistics/c/b/h;Lcom/youju/statistics/c/b/c;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/youju/statistics/c/b/f;-><init>(Lcom/youju/statistics/c/b/h;)V

    return-void
.end method


# virtual methods
.method public onCellInfoChanged(Ljava/util/List;)V
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi",
            "Override"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/youju/statistics/c/b/f;->a:Lcom/youju/statistics/c/b/h;

    invoke-static {v0}, Lcom/youju/statistics/c/b/h;->a(Lcom/youju/statistics/c/b/h;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/youju/statistics/c/b/f;->a:Lcom/youju/statistics/c/b/h;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/youju/statistics/c/b/h;->a(Lcom/youju/statistics/c/b/h;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/youju/statistics/c/b/f;->a:Lcom/youju/statistics/c/b/h;

    invoke-static {v0}, Lcom/youju/statistics/c/b/h;->b(Lcom/youju/statistics/c/b/h;)V

    :cond_14
    :goto_14
    return-void

    :cond_15
    iget-object v0, p0, Lcom/youju/statistics/c/b/f;->a:Lcom/youju/statistics/c/b/h;

    invoke-static {v0}, Lcom/youju/statistics/c/b/h;->c(Lcom/youju/statistics/c/b/h;)Z

    move-result v0

    if-eqz v0, :cond_25

    if-eqz p1, :cond_14

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_14

    :cond_25
    iget-object v0, p0, Lcom/youju/statistics/c/b/f;->a:Lcom/youju/statistics/c/b/h;

    iget-object v1, p0, Lcom/youju/statistics/c/b/f;->a:Lcom/youju/statistics/c/b/h;

    invoke-static {v1, p1}, Lcom/youju/statistics/c/b/h;->a(Lcom/youju/statistics/c/b/h;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youju/statistics/c/b/h;->a(Lcom/youju/statistics/c/b/h;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/youju/statistics/c/b/f;->a:Lcom/youju/statistics/c/b/h;

    invoke-static {v0}, Lcom/youju/statistics/c/b/h;->b(Lcom/youju/statistics/c/b/h;)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_35} :catch_36

    goto :goto_14

    :catch_36
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_14
.end method

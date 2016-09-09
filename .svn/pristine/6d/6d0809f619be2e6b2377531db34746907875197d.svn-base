.class Lcom/youju/statistics/c/b/g;
.super Landroid/telephony/PhoneStateListener;


# instance fields
.field final synthetic a:Lcom/youju/statistics/c/b/h;


# direct methods
.method private constructor <init>(Lcom/youju/statistics/c/b/h;)V
    .registers 2

    iput-object p1, p0, Lcom/youju/statistics/c/b/g;->a:Lcom/youju/statistics/c/b/h;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/youju/statistics/c/b/h;Lcom/youju/statistics/c/b/c;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/youju/statistics/c/b/g;-><init>(Lcom/youju/statistics/c/b/h;)V

    return-void
.end method


# virtual methods
.method public onCellLocationChanged(Landroid/telephony/CellLocation;)V
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/youju/statistics/c/b/g;->a:Lcom/youju/statistics/c/b/h;

    invoke-static {v0}, Lcom/youju/statistics/c/b/h;->a(Lcom/youju/statistics/c/b/h;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/youju/statistics/c/b/g;->a:Lcom/youju/statistics/c/b/h;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/youju/statistics/c/b/h;->a(Lcom/youju/statistics/c/b/h;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/youju/statistics/c/b/g;->a:Lcom/youju/statistics/c/b/h;

    invoke-static {v0}, Lcom/youju/statistics/c/b/h;->b(Lcom/youju/statistics/c/b/h;)V

    :goto_14
    return-void

    :cond_15
    if-nez p1, :cond_23

    iget-object v0, p0, Lcom/youju/statistics/c/b/g;->a:Lcom/youju/statistics/c/b/h;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/youju/statistics/c/b/h;->a(Lcom/youju/statistics/c/b/h;Z)Z
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1e

    goto :goto_14

    :catch_1e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_14

    :cond_23
    :try_start_23
    iget-object v0, p0, Lcom/youju/statistics/c/b/g;->a:Lcom/youju/statistics/c/b/h;

    iget-object v1, p0, Lcom/youju/statistics/c/b/g;->a:Lcom/youju/statistics/c/b/h;

    invoke-static {v1, p1}, Lcom/youju/statistics/c/b/h;->a(Lcom/youju/statistics/c/b/h;Landroid/telephony/CellLocation;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youju/statistics/c/b/h;->a(Lcom/youju/statistics/c/b/h;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/youju/statistics/c/b/g;->a:Lcom/youju/statistics/c/b/h;

    invoke-static {v0}, Lcom/youju/statistics/c/b/h;->b(Lcom/youju/statistics/c/b/h;)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_33} :catch_1e

    goto :goto_14
.end method

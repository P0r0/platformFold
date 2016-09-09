.class public Lcom/youju/statistics/c/q;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/youju/statistics/c/l;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/youju/statistics/c/m;

    invoke-direct {v0, p1}, Lcom/youju/statistics/c/m;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/youju/statistics/c/m;->c()Z

    move-result v1

    if-eqz v1, :cond_11

    iput-object v0, p0, Lcom/youju/statistics/c/q;->a:Lcom/youju/statistics/c/l;

    :goto_10
    return-void

    :cond_11
    new-instance v0, Lcom/youju/statistics/c/p;

    invoke-direct {v0, p1}, Lcom/youju/statistics/c/p;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/youju/statistics/c/p;->c()Z

    move-result v1

    if-eqz v1, :cond_1f

    iput-object v0, p0, Lcom/youju/statistics/c/q;->a:Lcom/youju/statistics/c/l;

    goto :goto_10

    :cond_1f
    new-instance v0, Lcom/youju/statistics/c/k;

    invoke-direct {v0, p1}, Lcom/youju/statistics/c/k;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/youju/statistics/c/q;->a:Lcom/youju/statistics/c/l;

    goto :goto_10
.end method


# virtual methods
.method public a()Z
    .registers 2

    iget-object v0, p0, Lcom/youju/statistics/c/q;->a:Lcom/youju/statistics/c/l;

    invoke-virtual {v0}, Lcom/youju/statistics/c/l;->b()Z

    move-result v0

    return v0
.end method

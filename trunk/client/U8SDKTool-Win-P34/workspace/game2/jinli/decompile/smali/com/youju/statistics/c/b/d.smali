.class public abstract Lcom/youju/statistics/c/b/d;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/youju/statistics/c/b/d;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/youju/statistics/c/b/d;->a:Ljava/lang/String;

    return-object v0
.end method

.method public d(I)V
    .registers 3

    const v0, 0x7fffffff

    if-ne p1, v0, :cond_6

    :goto_5
    return-void

    :cond_6
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youju/statistics/c/b/d;->a:Ljava/lang/String;

    goto :goto_5
.end method

.method public d(Ljava/lang/String;)V
    .registers 2

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    iput-object p1, p0, Lcom/youju/statistics/c/b/d;->a:Ljava/lang/String;

    goto :goto_2
.end method

.method public abstract toString()Ljava/lang/String;
.end method

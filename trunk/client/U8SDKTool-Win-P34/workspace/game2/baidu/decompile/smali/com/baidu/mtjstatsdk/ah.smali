.class final enum Lcom/baidu/mtjstatsdk/ah;
.super Lcom/baidu/mtjstatsdk/af;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;II)V
    .registers 5

    .prologue
    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/baidu/mtjstatsdk/af;-><init>(Ljava/lang/String;IILcom/baidu/mtjstatsdk/ag;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lcom/baidu/mtjstatsdk/ae;
    .registers 3

    .prologue
    .line 24
    new-instance v0, Lcom/baidu/mtjstatsdk/at;

    invoke-direct {v0, p1}, Lcom/baidu/mtjstatsdk/at;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

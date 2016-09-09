.class Lcom/baidu/mtjstatsdk/bi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/baidu/mtjstatsdk/bh;


# direct methods
.method constructor <init>(Lcom/baidu/mtjstatsdk/bh;)V
    .registers 2

    .prologue
    .line 98
    iput-object p1, p0, Lcom/baidu/mtjstatsdk/bi;->a:Lcom/baidu/mtjstatsdk/bh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 100
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/bi;->a:Lcom/baidu/mtjstatsdk/bh;

    iget-object v0, v0, Lcom/baidu/mtjstatsdk/bh;->c:Lcom/baidu/mtjstatsdk/bg;

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/bi;->a:Lcom/baidu/mtjstatsdk/bh;

    iget-object v1, v1, Lcom/baidu/mtjstatsdk/bh;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/mtjstatsdk/bi;->a:Lcom/baidu/mtjstatsdk/bh;

    iget-object v2, v2, Lcom/baidu/mtjstatsdk/bh;->c:Lcom/baidu/mtjstatsdk/bg;

    invoke-static {v2}, Lcom/baidu/mtjstatsdk/bg;->c(Lcom/baidu/mtjstatsdk/bg;)Z

    move-result v2

    iget-object v3, p0, Lcom/baidu/mtjstatsdk/bi;->a:Lcom/baidu/mtjstatsdk/bh;

    iget-object v3, v3, Lcom/baidu/mtjstatsdk/bh;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/mtjstatsdk/bg;->a(Landroid/content/Context;ZLjava/lang/String;)V

    .line 101
    return-void
.end method

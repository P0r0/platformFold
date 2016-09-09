.class Lcom/baidu/mtjstatsdk/bj;
.super Ljava/util/TimerTask;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/baidu/mtjstatsdk/bg;


# direct methods
.method constructor <init>(Lcom/baidu/mtjstatsdk/bg;Ljava/lang/String;Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 130
    iput-object p1, p0, Lcom/baidu/mtjstatsdk/bj;->c:Lcom/baidu/mtjstatsdk/bg;

    iput-object p2, p0, Lcom/baidu/mtjstatsdk/bj;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/baidu/mtjstatsdk/bj;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 133
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/bj;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/DataCore;->getInstance(Ljava/lang/String;)Lcom/baidu/mtjstatsdk/DataCore;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/bj;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/mtjstatsdk/DataCore;->isPartEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 134
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/bj;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/cs;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 135
    const-string v0, "welcome timer log start"

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/cw;->a(Ljava/lang/String;)I

    .line 137
    :cond_1b
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/bj;->c:Lcom/baidu/mtjstatsdk/bg;

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/bj;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/mtjstatsdk/bj;->c:Lcom/baidu/mtjstatsdk/bg;

    invoke-static {v2}, Lcom/baidu/mtjstatsdk/bg;->c(Lcom/baidu/mtjstatsdk/bg;)Z

    move-result v2

    iget-object v3, p0, Lcom/baidu/mtjstatsdk/bj;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/mtjstatsdk/bg;->a(Landroid/content/Context;ZLjava/lang/String;)V

    .line 139
    :cond_2a
    return-void
.end method

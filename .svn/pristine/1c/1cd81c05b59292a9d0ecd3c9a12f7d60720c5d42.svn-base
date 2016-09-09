.class Lcom/baidu/mtjstatsdk/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/baidu/mtjstatsdk/g;


# direct methods
.method constructor <init>(Lcom/baidu/mtjstatsdk/g;Ljava/lang/String;Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 56
    iput-object p1, p0, Lcom/baidu/mtjstatsdk/h;->c:Lcom/baidu/mtjstatsdk/g;

    iput-object p2, p0, Lcom/baidu/mtjstatsdk/h;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/baidu/mtjstatsdk/h;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 59
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/h;->c:Lcom/baidu/mtjstatsdk/g;

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/h;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/baidu/mtjstatsdk/g;->a(Lcom/baidu/mtjstatsdk/g;Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/h;->b:Landroid/content/Context;

    if-nez v0, :cond_c

    .line 67
    :goto_b
    return-void

    .line 65
    :cond_c
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/h;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 66
    iget-object v1, p0, Lcom/baidu/mtjstatsdk/h;->c:Lcom/baidu/mtjstatsdk/g;

    invoke-static {v1, v0}, Lcom/baidu/mtjstatsdk/g;->a(Lcom/baidu/mtjstatsdk/g;Landroid/content/Context;)V

    goto :goto_b
.end method

.class public Lcom/baidu/mtjstatsdk/cc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/baidu/mtjstatsdk/game/BDGameDataCore;


# direct methods
.method public constructor <init>(Lcom/baidu/mtjstatsdk/game/BDGameDataCore;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 248
    iput-object p1, p0, Lcom/baidu/mtjstatsdk/cc;->d:Lcom/baidu/mtjstatsdk/game/BDGameDataCore;

    iput-object p2, p0, Lcom/baidu/mtjstatsdk/cc;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/baidu/mtjstatsdk/cc;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/baidu/mtjstatsdk/cc;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 252
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/cc;->d:Lcom/baidu/mtjstatsdk/game/BDGameDataCore;

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/cc;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/mtjstatsdk/cc;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->a(Lcom/baidu/mtjstatsdk/game/BDGameDataCore;Landroid/content/Context;Ljava/lang/String;)Lcom/baidu/mtjstatsdk/game/BDGameDataObject;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/cc;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/mtjstatsdk/game/BDGameDataObject;->setAccountServer(Ljava/lang/String;)V

    .line 253
    return-void
.end method

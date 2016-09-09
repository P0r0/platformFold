.class public Lcom/baidu/mtjstatsdk/br;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/baidu/mtjstatsdk/game/BDGameDataObject;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/baidu/mtjstatsdk/game/BDGameDataCore;


# direct methods
.method public constructor <init>(Lcom/baidu/mtjstatsdk/game/BDGameDataCore;Lcom/baidu/mtjstatsdk/game/BDGameDataObject;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 306
    iput-object p1, p0, Lcom/baidu/mtjstatsdk/br;->c:Lcom/baidu/mtjstatsdk/game/BDGameDataCore;

    iput-object p2, p0, Lcom/baidu/mtjstatsdk/br;->a:Lcom/baidu/mtjstatsdk/game/BDGameDataObject;

    iput-object p3, p0, Lcom/baidu/mtjstatsdk/br;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 310
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/br;->a:Lcom/baidu/mtjstatsdk/game/BDGameDataObject;

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/br;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/mtjstatsdk/game/BDGameDataObject;->onChargeSuccess(Ljava/lang/String;)V

    .line 311
    return-void
.end method
